$(document).ready ->
  # called by button btn-search
  list_lines = $(".list-lines")

  list_lines.hide()

  $("#btn-search").click ->
    search_term = $(".search-field").val()
    if search_term == ''
      list_lines.html('')
      list_lines.append '<b>Informe algum termo para realizar a busca</b>'
      list_lines.slideDown('slow')
      return;

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
        list_lines.slideDown('slow')
        return;

      if data.length == 0
        list_lines.append '<b>Não há resultados para sua pesquisa.
        Pesquise por um termo/linha diferente</b>'
      else
        for line in data
          list_lines.append '<a href=' + line['CodigoLinha'] +
          ' class=\'line-link\'><p><strong> Linha ' + line['Letreiro'] +
          '</strong> <br/>' + line['DenominacaoTPTS'] + ', ' +
           line['DenominacaoTSTP'] + ', Sentido: ' + line['Sentido'] + '</p></a>'

      list_lines.slideDown('slow')
