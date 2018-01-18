$(document).on("ready page:load", function() {
  var form = $("#contactForm");

  form.on("submit", function(evt) {
    evt.preventDefault();
    $.ajax({
      url: form.attr("action"),
      method: form.attr("method"),
      dataType: 'json',
      data: form.serialize(),
      success: function(json) {
        $("body").append(
          '<div class="modal fade" id="confirm-modal" role="dialog" style="display:block;">'+
            '<div class="modal-dialog">'+
              '<div class="modal-content">'+
                '<div class="modal-header">'+
                  '<button type="button" class="close" data-dismiss="modal">&times;</button>'+
                  '<h3 class="modal-title">'+json.name+' su mensaje ha sido enviado, Muchas gracias.</h3>'+
                '</div>'+
              '</div>'+
            '</div>'+
          '</div>');
        form[0].reset();
        form.eq(0).find("input[name='commit']").eq(0).removeAttr("disabled");
      },
      error: function(data) {
        console.log(data);
      },
      timeout: 8000
    });
  });
});
