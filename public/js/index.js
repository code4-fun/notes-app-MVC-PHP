$(document).ready(function (){
  // Open popup for adding note
  $('.create-note-button').on('click', function (event){
    $('.popup-inner')
      .on('click', function (event){
        event.stopPropagation()
      })
    $('.popup-outer')
      .addClass('active')
      .on('click', function () {
        $(this).removeClass('active')
        removeFormValues()
      })
  })
})

// Create note
function createNote(data){
  clearErrors()
  const title = data.get('title')
  const content = data.get('content')
  if(title === ''){
    $('.popup-errors').append('<div>Fill in title</div>')
    return
  }
  $.ajax({
    url: "/notes/add",
    type: 'POST',
    data: {
      title: title,
      content: content
    }
  }).done((data) => {
    flash('Note created')
    if(data){
      data = JSON.parse(data)
      const noteList = $('.note_list')
      if(noteList){
        noteList.find(">:first-child").before($(listItem(data)).hide().delay(200).show('slow'))
      }
      removeFormValues()
    }
  })
  $('.popup-outer').removeClass('active')
  removeFormValues()
}

// Delete note and remove it from the list
function deleteNote(id){
  $.ajax({
    url: `/notes/delete/${id}`,
    type: 'POST',
    data: {
      id: id
    }
  }).done(() => {
    flash('Note deleted')
    $('#note_' + id).hide('slow')
  })
}

// Display and hide flash
function flash(message){
  $('body').prepend(`<div class="flash">${message}</div>`)
  setTimeout(() => {
    $('.flash').remove()
  }, 3000)
}

// Remove errors in popup form
function clearErrors(){
  $('.popup-errors').children().remove()
}

// Clear form
function removeFormValues(){
  $('.popup-input').val('')
  clearErrors()
}

// List item to append after ajax query
function listItem(data){
  return `      <div class=\'note_item\' id="note_${data.id}">\n` +
    `            <a href="/notes/show/${data.id}"\n` +
    '               class="note_item__link">\n' +
    '              <div class=\'note_item__body\'>\n' +
    '                <div class=\'note_item__content\'>\n' +
    `                  <div class=\'note_item__text note_item__text--date\'>${data.date}</div>\n` +
    `                  <div class=\'note_item__text note_item__text--title\'>${data.title}</div>\n` +
    '                </div>\n' +
    '              </div>\n' +
    '            </a>\n' +
    '            <div class="note_item__delete">\n' +
    `              <form method="post" onsubmit="event.preventDefault(); deleteNote(${data.id});">\n` +
    '                <input type="image"\n' +
    '                       src=\'/public/img/trash.svg\'\n' +
    '                       class="note_item__delete--input">\n' +
    '              </form>\n' +
    '            </div>' +
    '          </div>'
}
