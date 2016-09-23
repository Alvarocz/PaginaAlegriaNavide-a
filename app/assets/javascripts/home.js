$(document).on("ready page:load", function() {
  var form = $("#contactForm");

  form.on("submit", function(event) {
    event.preventDefault();
    console.log(form);
    $.ajax({
      url: form.attr("action"),
      method: form.attr("method"),
      dataType: 'json',
      data: form.serialize(),
      success: function(json) {
        console.log(json);
        $("body").append('<div class="modal-fade" id="confirm-modal" role="dialog">')
          .append('<div class="modal-dialog><div class="modal-content>"')
          .append('<div class="modal-header"><button type="button" class="close" data-dismiss="modal">&times;</button>')
          .append('<h2 class="modal-title">Mensajes</h2></div>')
          .append('div class="modal-body"><%= '+json.name+' su mensaje ha sido enviado, Muchas gracias.'+' %></div>')
          .append('</div></div></div>');
        form[0].reset();
      },
      error: function(data) {
        console.log(data);
      },
      timeout: 8000
    });
  });
});
