function build_gallery() {
	$.ajax({
		type: "GET",
		dataType: "json",
		url: "/galeria",
		success: function (data) {
			var items = [];
			var columns = [];
			var container = $(".gallery-container").eq(0);
			var imglist = data[0];
			for (var i=0; i < imglist.length; i++) {
				var image = imglist[i];
				var img_thumbnail = $('<div class="image-thumbnail">');
				img_thumbnail.append($('<img src="'+image.image.url+'">'));
				if (data[1] == true) {
					img_thumbnail.append($('<ul class="control-panel">'+
							'<li><a href="/images/'+(i+1)+'/edit">Editar</a></li>'+
							'<li><a data-confirm="¿Estas segur@?" rel="nofollow" data-method="delete" href="/images/'+(i+1)+'">Eliminar</a></li>'+
							'</ul>'));
				}
				if (image.title != null)
					img_thumbnail.append($('<div class="image-caption">'+image.title+'</div>'));
				items.push(img_thumbnail);
			}
			var num_cols;
			if (items.length <= 3) { num_cols = items.length; }
			else if (items.length % 4 == 0) { num_cols = 4; }
			else if (items.length % 6 == 0) { num_cols = 3; }
			else { num_cols = 5; }

			// Create the column nodes
			for (var c=0; c < num_cols; c++)
				columns.push($('<div class="col">'));

			// Push the images to each column by rows
			var i = 0;
			for (var j=0; j < items.length; j++) {
				if (i == num_cols) { i = 0; }
				columns[i].append(items[j]);
				i ++;
			}
			for (var c=0; c < num_cols; c++)
				container.append(columns[c]);

			// Activate the opacity effect
			var images = $(".gallery-container img");
			for (var i=0; i < images.length; i++) {
				images[i].addEventListener("load", function(evt) {
					evt.target.style.opacity = "1";
				});
			}
			$(".gallery-container").eq(0).replaceWith(container);
		}
	});
}

$(document).on("ready page:load", build_gallery);
$(document).on("turbolinks:visit", build_gallery);
