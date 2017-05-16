$(document).ready ->
  # called by button btn-list-bus-position
  $("#btn-list-bus-position").click ->
    v_cod_line = 34041;
    $.ajax '/bus_position?&cod_line=34041',
    type: 'GET'
    dataType: 'json'
    error: (jqXHR, textStatus, errorThrown) ->
      alert textStatus
    success: (data, textStatus, jqXHR) ->
              # console.log(data);
              # create the markers on map
              for vs in data['vs']
                placeMarkerBus( "#{vs['py']}", "#{vs['px']}",v_cod_line,vs['a'], vs['p']);
