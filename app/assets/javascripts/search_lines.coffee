atualiza_map_busca_linha = ->
  list_lines = $(".list-lines")
  list_lines.hide()
  search_term = $(".search-field").val()
  if search_term == ''
    list_lines.html('')
    list_lines.append '<b>Informe algum termo para realizar a busca</b>'
    list_lines.slideDown('slow').delay(1000).slideUp('slow')
    return
  $.ajax '/searchByTerm?&search_term=' + search_term,
  type: 'GET'
  dataType: 'json'
  error: (jqXHR, textStatus, errorThrown) ->
    alert textStatus
  success: (data, textStatus, jqXHR) ->
    list_lines.html('')
    if data == null
      list_lines.append '<b>Não há resultados para sua pesquisa.
      Pesquise por um termo/linha diferente</b>'
      list_lines.slideDown('slow').delay(2000).slideUp('slow')
      return
    if data.length == 0
      list_lines.append '<b>Não há resultados para sua pesquisa.
      Pesquise por um termo/linha diferente</b>'
      list_lines.slideDown('slow').delay(2000).slideUp('slow')
    else
      for line in data
        list_lines.append '<p data-code-line=' + line['CodigoLinha'] +
        ' data-start-line="'+line['DenominacaoTPTS'] +
        '" data-end-line="'+line['DenominacaoTSTP'] +
        '" class=\'line-link\'><strong> Linha ' + line['Letreiro'] +
        '</strong> <br/>' + line['DenominacaoTPTS'] + ' - ' +
        line['DenominacaoTSTP'] + ', Sentido: ' + line['Sentido'] +
        '</p>'
      list_lines.slideDown('slow')



$(document).ready ->
  # called by button btn-search
  $(".list-lines").hide()
  $("#btn-search").click (event) ->
    event.preventDefault()
    atualiza_map_busca_linha()

  $("#tx_termo_pesquisa").keypress (e) ->
    if e.which is 13
      atualiza_map_busca_linha()
    else
      $(".list-lines").hide()
