$(document).ready ->
  # botao posição veiculos
  $("#btn-posicao-veiculos").click ->
    v_linha = 34041;
    $.ajax '/posicao_veiculos?&linha=34041',
    type: 'GET'
    dataType: 'json'
    error: (jqXHR, textStatus, errorThrown) ->
      alert textStatus
    success: (data, textStatus, jqXHR) ->
              console.log(data);
              for vs in data['vs']
                placeMarkerBus( "#{vs['py']}", "#{vs['px']}",v_linha,vs['a'], vs['p']);
