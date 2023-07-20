<?php

class Note {
  private $db;

  public function __construct(){
    $this->db = new Database;
  }

  public function getAllNotesCount(){
    $this->db->query("SELECT * FROM notes");
    $this->db->resultSet();
    return $this->db->rowCount();
  }

  public function addNote($data){
    $this->db->query('INSERT INTO notes (title, content, created_at) VALUES(:title, :content, :date)');
    $this->db->bind(':title', $data['title']);
    $this->db->bind(':content', $data['content']);
    $this->db->bind(':date', $data['date']);
    if($this->db->execute()){
      return $this->db->idInserted();
    } else {
      return false;
    }
  }

  public function getNoteById($id){
    $this->db->query('SELECT * FROM notes WHERE id = :id');
    $this->db->bind(':id', $id);
    return $this->db->single();
  }

  public function updateNote($data){
    $this->db->query('UPDATE notes SET title = :title, content = :content WHERE id = :id');
    $this->db->bind(':id', $data['id']);
    $this->db->bind(':title', $data['title']);
    $this->db->bind(':content', $data['content']);
    if($this->db->execute()){
      return true;
    } else {
      return false;
    }
  }

  public function deleteNote($id){
    $this->db->query('DELETE FROM notes WHERE id = :id');
    $this->db->bind(':id', $id);
    if($this->db->execute()){
      return true;
    } else {
      return false;
    }
  }

  public function getNotes($offset = 0){
    $this->db->query("SELECT * FROM notes ORDER BY created_at DESC LIMIT 10 OFFSET $offset");
    return $this->db->resultSet();
  }
}
