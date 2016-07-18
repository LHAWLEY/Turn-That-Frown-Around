$(document).ready(function() {

  $('.comment_form').on('submit', function(event){
    event.preventDefault();
    var $commentForm = $(this)
    var data = $commentForm.serialize()

    $.post('/comments', data, function(response) {
      if (response.success) {
        $commentForm.before(
          '<p>' + response.body + '</p>')

        $('.comment_form').trigger("reset");
      }
    })
  });

  $('.vote-container').on('click', 'a', function(event) {
    event.preventDefault();
    var $link = $(this);
    var data = {
      vote: {
        video_id: $link.data("video_id")
      }
    };
    var url = $link.attr('href');
    $.post(url, data, function(response){
      $link.toggleClass('vote_link remove_vote')

      if ($link.hasClass('remove_vote')) {
        $link.attr('href', '/votes/delete')
        $link.text('REMOVE VOTE');
      } else {
        $link.attr('href', '/votes')
        $link.text('VOTE');
      }
      $link.parent().find('.tally').text(response.votes)
    });
  });

  $('.list_comments').on('click', function(event){
    event.preventDefault();
    var $link = $(this);
    var url = $(this).attr('href');
    $.get(url, function(response){
      $link.hide();
      $link.parent().html('<p>' + response.comments.join('</p><p>') + '</p>');
    });
  });
});

