$(document).ready ->
  $('.option').click ->
    $('#search-query').text($(this).text())
    # TODO: Update href accoring query option selected.
    # $('#btn-search').attr('href', new_route)

  $('a').click ->
    event.preventDefault()
