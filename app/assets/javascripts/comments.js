$(document).on("ready page:load", function() {
  var form = $("#commentsForm");
  var commentsList = $("ul#commentsList");
  var commentsListItems = $("ul#commentsList li");

  form.on("submit", function(event) {
    event.preventDefault();
    $.ajax({
      url: form.attr("action"),
      method: form.attr("method"),
      dataType: "json",
      data: form.serialize(),
      success: function(json) {
        if (commentsListItems.length == 0) {
          console.log(commentsListItems);
          commentsList.empty();
          commentsList.append(
            '<li class="list-group-item"><h3>'+json.name+'</h3><br><span><p>'+json.message+'</p></span></li>');
        } else {
          commentsListItems.eq(0).before(
            '<li class="list-group-item"><h3>'+json.name+'</h3><br><span><p>'+json.message+'</p></span></li>');
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
