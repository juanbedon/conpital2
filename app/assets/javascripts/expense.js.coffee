
# Inicio Filtro Transaction Type //
$(document).ready ->
  console.log 'hola mundo'
  $('.transaction-type').on 'click', (e) ->
    filter = @id
    param = 'transaction_type': filter
    e.preventDefault()
    $.ajax
      type: 'GET'
      url: '/expenses.js'
      dataType: 'html'
      data: param
      success: (response) ->
        $('body').empty()
        $('body').html response
        return
    return
  # Fin Filtro Transaction Type //
  # Inicio Filtro Category //
  $('.category').on 'click', (e) ->
    filter = @id
    param = 'category': filter
    e.preventDefault()
    $.ajax
      type: 'GET'
      url: '/expenses.js'
      dataType: 'html'
      data: param
      success: (response) ->
        $('body').empty()
        $('body').html response
        return
    return
  # Fin Filtro Category //
  # Inicio Filtro Mes //
  $('.current_month').on 'click', (e) ->
    filter = @id
    param = 'current_month': filter
    e.preventDefault()
    $.ajax
      type: 'GET'
      url: '/expenses.js'
      dataType: 'html'
      data: param
      success: (response) ->
        $('body').empty()
        $('body').html response
        return
    return
  $('.month_ago').on 'click', (e) ->
    filter = @id
    param = 'month_ago': filter
    e.preventDefault()
    $.ajax
      type: 'GET'
      url: '/expenses.js'
      dataType: 'html'
      data: param
      success: (response) ->
        $('body').empty()
        $('body').html response
        return
    return
  $('.two_months_ago').on 'click', (e) ->
    filter = @id
    param = 'two_months_ago': filter
    e.preventDefault()
    $.ajax
      type: 'GET'
      url: '/expenses.js'
      dataType: 'html'
      data: param
      success: (response) ->
        $('body').empty()
        $('body').html response
        return
    return
  $('.three_months_ago').on 'click', (e) ->
    filter = @id
    param = 'three_months_ago': filter
    e.preventDefault()
    $.ajax
      type: 'GET'
      url: '/expenses.js'
      dataType: 'html'
      data: param
      success: (response) ->
        $('body').empty()
        $('body').html response
        return
    return
  $('.four_months_ago').on 'click', (e) ->
    filter = @id
    param = 'four_months_ago': filter
    e.preventDefault()
    $.ajax
      type: 'GET'
      url: '/expenses.js'
      dataType: 'html'
      data: param
      success: (response) ->
        $('body').empty()
        $('body').html response
        return
    return
  $('.five_months_ago').on 'click', (e) ->
    filter = @id
    param = 'five_months_ago': filter
    e.preventDefault()
    $.ajax
      type: 'GET'
      url: '/expenses.js'
      dataType: 'html'
      data: param
      success: (response) ->
        $('body').empty()
        $('body').html response
        return
    return
  $('.six_months_ago').on 'click', (e) ->
    filter = @id
    param = 'six_months_ago': filter
    e.preventDefault()
    $.ajax
      type: 'GET'
      url: '/expenses.js'
      dataType: 'html'
      data: param
      success: (response) ->
        $('body').empty()
        $('body').html response
        return
    return
  $('.seven_months_ago').on 'click', (e) ->
    filter = @id
    param = 'seven_months_ago': filter
    e.preventDefault()
    $.ajax
      type: 'GET'
      url: '/expenses.js'
      dataType: 'html'
      data: param
      success: (response) ->
        $('body').empty()
        $('body').html response
        return
    return
  $('.eight_months_ago').on 'click', (e) ->
    filter = @id
    param = 'eight_months_ago': filter
    e.preventDefault()
    $.ajax
      type: 'GET'
      url: '/expenses.js'
      dataType: 'html'
      data: param
      success: (response) ->
        $('body').empty()
        $('body').html response
        return
    return
  $('.nine_months_ago').on 'click', (e) ->
    filter = @id
    param = 'nine_months_ago': filter
    e.preventDefault()
    $.ajax
      type: 'GET'
      url: '/expenses.js'
      dataType: 'html'
      data: param
      success: (response) ->
        $('body').empty()
        $('body').html response
        return
    return
  $('.ten_months_ago').on 'click', (e) ->
    filter = @id
    param = 'ten_months_ago': filter
    e.preventDefault()
    $.ajax
      type: 'GET'
      url: '/expenses.js'
      dataType: 'html'
      data: param
      success: (response) ->
        $('body').empty()
        $('body').html response
        return
    return
  $('.eleven_months_ago').on 'click', (e) ->
    filter = @id
    param = 'eleven_months_ago': filter
    e.preventDefault()
    $.ajax
      type: 'GET'
      url: '/expenses.js'
      dataType: 'html'
      data: param
      success: (response) ->
        $('body').empty()
        $('body').html response
        return
    return
  $('.twelve_months_ago').on 'click', (e) ->
    filter = @id
    param = 'twelve_months_ago': filter
    e.preventDefault()
    $.ajax
      type: 'GET'
      url: '/expenses.js'
      dataType: 'html'
      data: param
      success: (response) ->
        $('body').empty()
        $('body').html response
        return
    return
  return
# Fin Filtro Mes //