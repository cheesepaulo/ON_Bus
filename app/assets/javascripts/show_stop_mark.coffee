$(document).ready ->
  list_lines = $('.list-lines')

  list_lines.on 'click', '.line-link', (e) ->
    line_link = $(this)
    cod_line = line_link.attr("data-code-line")
    start_line = line_link.attr("data-start-line")
    end_line = line_link.attr("data-end-line")
    # search by stop points at line
    $.ajax '/getStopPointsByline?&cod_line=' + cod_line,
    type: 'GET'
    dataType: 'json'
    error: (jqXHR, textStatus, errorThrown) ->
      alert textStatus
    success: (data, textStatus, jqXHR) ->
      #show choosen line


      #clean the map
      initialize()
      $(".choosen-line-number").html('')
      $(".choosen-line-number").append(line_link)
  # trace lines
      traceline(start_line,end_line)
      # creates the stop markers on map
      if data.length == 0
        list_lines.html('')
        list_lines.append '<b>As paradas dessa linha ainda não
        foram mapeadas.</b>'
        list_lines.slideDown('slow').delay(2000).slideUp('slow')
      else
        #array to preserve positions
        busStops = []
        for point in data
          placeMarkerStop( "#{point['Latitude']}", "#{point['Longitude']}",
                           "#{point['Endereco']}")
          busStops.push new google.maps.LatLng("#{point['Latitude']}","#{point['Longitude']}")
        list_lines.slideUp('slow')
        # marker the buses positions
        $.ajax "/bus_position?&cod_line=#{cod_line}",
         type: 'GET'
         dataType: 'json'
         error: (jqXHR, textStatus, errorThrown) ->
            alert textStatus
         success: (data, textStatus, jqXHR) ->
         # create the markers on map
          # console.log(vs)
          for vs in data['vs']
            placeMarkerBus( "#{vs['py']}", "#{vs['px']}",cod_line,vs['a'], vs['p']);

      ######################################################
