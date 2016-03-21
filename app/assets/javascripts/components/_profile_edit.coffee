$(document).on 'ready page:load', ->
  profileUpdate = (scope) ->
    column = $(scope).data("column")
    url = $(scope).data("url")
    $.ajax(
      url: url
      data: {
        column: column
      }
      dataType: "html"
    ).done (data) ->
      $(scope).html data
      $(scope).addClass('active')


  $('.profile-column').on "click", ->
    unless $(this).hasClass('active')
      profileUpdate(this)

