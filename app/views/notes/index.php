<?php require APPROOT.'/views/parts/header.php'; ?>

  <div class="note_list">
    <?php foreach($data['notes'] as $note): ?>
      <div class='note_item' id="note_<?= $note->id ?>">
        <a href='<?= URLROOT; ?>/notes/show/<?= $note->id ?>'
           class="note_item__link">
          <div class='note_item__body'>
            <div class='note_item__content'>
              <div class='note_item__text note_item__text--date'><?= date('Y-m-d H:i:s', strtotime($note->created_at)) ?></div>
              <div class='note_item__text note_item__text--title'><?= $note->title ?></div>
            </div>
          </div>
        </a>
        <div class="note_item__delete">
          <form method="post" onsubmit="event.preventDefault(); deleteNote(<?= $note->id ?>);">
            <input type="image"
                   src='/public/img/trash.svg'
                   class="note_item__delete--input">
          </form>
        </div>
      </div>
    <?php endforeach; ?>
  </div>

  <div class="pages">
    <?php for($i=1; $i <= $data['pages']; $i++){ ?>
      <a href="?page=<?= $i ?>" class="page_item <?= $i == $data['current_page'] ? 'active' : '' ?>"><?= $i ?></a>
    <?php } ?>
  </div>

<?php require APPROOT.'/views/parts/footer.php'; ?>
