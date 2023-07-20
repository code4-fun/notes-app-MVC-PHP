<?php require APPROOT.'/views/parts/header.php'; ?>
  <form class="popup-form" action="<?= URLROOT ?>/notes/edit/<?= $data['id'] ?>" method="post">
    <div>
      <textarea class="popup-input" name="title" rows="2" placeholder='Note title'><?= $data['title'] ?></textarea>
    </div>
    <div>
      <textarea class="popup-input" name="content" rows="10" placeholder='Note content'><?= $data['content'] ?></textarea>
    </div>
    <button class="popup-button">Save</button>
  </form>
<?php require APPROOT.'/views/parts/footer.php'; ?>

