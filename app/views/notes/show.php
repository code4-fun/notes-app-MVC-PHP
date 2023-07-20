<?php require APPROOT.'/views/parts/header.php'; ?>
  <div class="note">
    <div><?= $data['created_at'] ?></div>
    <div><?= $data['title'] ?></div>
    <div><?= $data['content'] ?></div>
    <div class="note_buttons">
      <form action="<?= URLROOT ?>/notes/edit/<?= $data['id'] ?>" method="get">
        <button class="popup-button">Edit</button>
      </form>
      <form action="<?= URLROOT ?>/notes/delete/<?= $data['id'] ?>" method="post">
        <button class="popup-button">Delete</button>
      </form>
    </div>
  </div>
<?php require APPROOT.'/views/parts/footer.php'; ?>
