$(document).ready(function() {
 $('#photo_url').on("blur", function(event) {
  //get photo url from field
  var photo_url = $(this).val();
  var preview = $('#preview');
  if (photo_url) {
   preview.attr("src", photo_url);
   preview.show();
  } else {
   preview.hide();
  }
 });
});