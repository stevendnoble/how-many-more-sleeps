$(function() {
  function toggleForm() {
    $(this).text($(this).text() === 'Add New' ? 'Hide Form' : 'Add New');
    $('.add-new-form').toggle();
  }
  $('.toggle-form-btn').on('click', toggleForm);

});