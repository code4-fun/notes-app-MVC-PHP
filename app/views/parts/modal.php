<div class='popup-outer'>
  <div class='popup-inner'>
    <div class="popup-errors"></div>
    <form class="popup-form" onsubmit="event.preventDefault(); createNote(new FormData(this))">
      <div>
        <textarea class="popup-input" name="title" rows="2" placeholder='Note title'></textarea>
      </div>
      <div>
        <textarea class="popup-input" name="content" rows="10" placeholder='Note content'></textarea>
      </div>
      <button class="popup-button">Create</button>
    </form>
  </div>
</div>
