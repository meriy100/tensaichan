$(document).on 'ready page:load', ->
  $('#message-box').on 'keypress', (e)->
    if e.keyCode == 13
      word = $(this).val()
      $.ajax(
        url: "search"
        data: {
          word: word
        }
        dataType: "json"
      ).done (data) ->
        console.log data.word
        $(".chat-window").append(data.message)
        $(".chat-window").append(data.word)
