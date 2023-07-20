<?php

class Notes extends Controller{
  public function __construct(){
    $this->noteModel = $this->model('Note');
  }

  public function index(){
    $elements = $this->noteModel->getAllNotesCount();
    $count = 10;
    $pages = (int) ceil($elements / $count);
    $current_page = (int)($_GET['page'] ?? 1);
    $offset = ($current_page - 1) * $count;

    $notes = $this->noteModel->getNotes($offset);

    $data = [
      'title' => 'Notes',
      'notes' => $notes,
      'pages' => $pages,
      'current_page' => $current_page
    ];
    $this->view('notes/index', $data);
  }

  public function add(){
    if($_SERVER['REQUEST_METHOD'] == 'POST'){
      $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);
      $data = [
        'title' => trim($_POST['title']),
        'content' => trim($_POST['content']),
        'date' => date('Y-m-d H:i:s')
      ];

      if($id = $this->noteModel->addNote($data)){
        $data['id'] = $id;
        echo json_encode($data);
      }
    }
  }

  public function show($id){
    $note = $this->noteModel->getNoteById($id);
    $data = (array)$note;
    $this->view('notes/show', $data);
  }

  public function edit($id){
    if($_SERVER['REQUEST_METHOD'] == 'POST'){
      $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

      $data = [
        'id' => $id,
        'title' => trim($_POST['title']),
        'content' => trim($_POST['content'])
      ];

      if(empty($data['title'])){
        return;
      }

      if($this->noteModel->updateNote($data)){
        redirect("posts/show/$id");
      } else {
        die('Something went wrong');
      }
    } else {
      $note = $this->noteModel->getNoteById($id);
      $data = (array)$note;
      $this->view('notes/edit', $data);
    }
  }

  public function delete($id){
    if($_SERVER['REQUEST_METHOD'] == 'POST'){
      $this->noteModel->getNoteById($id);
      if($this->noteModel->deleteNote($id)){
        redirect('notes');
      } else {
        die('Something went wrong');
      }
    } else {
      redirect('notes');
    }
  }

  public function about(){
    $this->view('notes/about');
  }
}
