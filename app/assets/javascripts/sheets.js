function customSubmit(event){
  event.preventDefault();
  $('#blocks-area').find('.remove').hide();
  $('#sheet_markup').val($('#blocks-area').html());
  $('form').submit();
}


function removeParent(e){
    console.log($(e.target.parentNode.parentNode).remove());
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


function getTweetData(){
    var obj = [];
    obj.push({
      "twitter_handle": "TwitterUserOne",
      "tweet_text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sollicitudin, magna sit amet dictum convallis, urna leo efficitur ligula, a convallis mi tortor vel dui.",
      "time": "Monday Jul 11"});
    obj.push({
      "twitter_handle": 'TwitterUserTwo',
      "tweet_text": 'In hac habitasse platea dictumst. In pulvinar vehicula quam, non faucibus orci mattis vitae. Suspendisse consectetur massa a tincidunt egestas.',
      "time": 'Tuesday Jul 12'
    });
    obj.push({
      "twitter_handle": 'TwitterUserThree',
      "tweet_text": "Maecenas efficitur massa quis nisi tristique volutpat. Vestibulum eget volutpat mi, in faucibus nisl. Vestibulum ante nulla, tempus eget massa at, vulputate eleifend erat. Integer pharetra non lorem a pulvinar. Nunc gravida erat ante, ut tincidunt nisl ultricies ut. ",
      "time": "Monday Jul 11"
    });

    return obj;

}

function showTweetData(e){
  e.preventDefault();
  $('.code-zone').text(JSON.stringify(getTweetData()));
}


$(document).ready(function(){
  $('.drop-upload').each(function(){
    initDragUpload(this);
    editor = ContentTools.EditorApp.get();
    editor.init('[data-editable], [data-fixture]', 'data-name');
  });
  $('.remove').show();
});
