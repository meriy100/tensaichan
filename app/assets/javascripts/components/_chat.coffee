$(document).on 'ready page:load', ->
  scrollWindow = ->
    #ページ内スクロール
    last = $(".chat-box").last()
    h = last.height()
    top = last.offset().top
    # p = $(".content").eq(i).offset().top
    $('.chat-window').animate({ scrollTop: h + top }, 'fast')
    return false

  $('#message-box').on 'keypress', (e)->
    if e.keyCode == 13
      word = $(this).val()
      $(".chat-window").append("<div class='chat-box'><div class='chat-area'><div class='chat-hukidashi you'>#{word}</div></div></div>")
      # scrollWindow()
      $.ajax(
        url: "search"
        data: {
          word: word
        }
        dataType: "json"
      ).done (data) ->
        $(".chat-window").append(data.word)
        scrollWindow()

