$(document).on("ready page:load", function() {
  var form = $("#commentsForm");
  var commentsList = $("#commentsList li");

  form.on("submit", function(event) {
    event.preventDefault();
    $.ajax({
      url: form.attr("action"),
      method: form.attr("method"),
      dataType: "json",
      data: form.serialize(),
      success: function(json) {
        commentsList.eq(0).before('<li class="list-group-item"><string><h3>'+json.name+'</h3></strong><br><span><p>'+json.message+'</p></span></li>');
        form[0].reset();
      },
      error: function(data) {
        alert('Hubo un error: '+data);
      },
      timeout: 8000
    });
  });
});
