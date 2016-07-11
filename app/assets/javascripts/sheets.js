function customSubmit(event){
  event.preventDefault();
  $('#sheet_markup').val($('#blocks-area').html());
  $('.edit_sheet').submit();
}

console.log($);

function initDragUpload(holder){
  holder.ondragover = function () { $(this).addClass('hover'); return false; };
  holder.ondragend = function () { $(this).removeClass('hover'); return false; };
  holder.ondrop = function (e) {
    $(this).removeClass('hover');
    e.preventDefault();

    var file = e.dataTransfer.files[0],
        reader = new FileReader();
    reader.onload = function (event) {
      console.log(event.target);
      holder.style.background = 'url(' + event.target.result + ') no-repeat center';
    };
    console.log(file);
    reader.readAsDataURL(file);

    return false;
  }

  console.log('init drag upload on ', this);

}

$(document).ready(function(){
  $('.drop-upload').each(function(){
    initDragUpload(this);

  });
});
