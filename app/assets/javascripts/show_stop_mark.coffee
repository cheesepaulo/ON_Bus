$(document).ready ->
  list_lines = $('.list-lines')

  list_lines.on 'click', '.line-link', (e) ->
    line_link = $(this)
    cod_line = line_link.attr("data-code-line")
    $.ajax '/getStopPointsByline?&cod_line=' + cod_line,
    type: 'GET'
    dataType: 'json'
    error: (jqXHR, textStatus, errorThrown) ->
      alert textStatus
    success: (data, textStatus, jqXHR) ->
      #show choosen line
      $(".choosen-line-number").html('')
      $('<span>Linha Escolhida: ' + line_link.find('strong').text()+
       '</span>').appendTo('.choosen-line-number')
      #clean the map
      initialize()
      # creates the stop markers on map
      if data.length == 0
        list_lines.html('')
        list_lines.append '<b>As paradas dessa linha ainda não
        foram mapeadas.</b>'
        list_lines.slideDown('slow').delay(2000).slideUp('slow')
      else
        for point in data
          placeMarkerStop( "#{point['Latitude']}", "#{point['Longitude']}",
                           "#{point['Endereco']}")
        list_lines.slideUp('slow')
