$(document).on("ready page:load", function() {
  var form = $("#new-image-form");

  form.on("submit", function(evt) {
    evt.preventDefault();
    form.find(".btn-primary").eq(0).removeAttr("disabled");
  });
});