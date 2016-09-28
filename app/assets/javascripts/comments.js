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
        if (commentsList.length > 0) {
          $("#commentsList").append('<li class="list-group-item"><h3>'+json.name+'</h3><br><span><p>'+json.message+'</p></span></li>');
        } else {
          commentsList.eq(0).before('<li class="list-group-item"><h3>'+json.name+'</h3><br><span><p>'+json.message+'</p></span></li>');
        }
        form[0].reset();
      },
      error: function(data) {
        alert('Hubo un error: '+data);
      },
      timeout: 8000
    });
  });
});
