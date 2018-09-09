$(document).ready(function() {
  console.log('hola mundo');
  $('.transaction-type').on('click', function(e) {
    var filter, param;
    filter = this.id;
    param = {
      'transaction_type': filter
    };
    e.preventDefault();
    $.ajax({
      type: 'GET',
      url: '/expenses.js',
      dataType: 'html',
      data: param,
      success: function(response) {
        $('body').empty();
        $('body').html(response);
      }
    });
  });
  $('.category').on('click', function(e) {
    var filter, param;
    filter = this.id;
    param = {
      'category': filter
    };
    e.preventDefault();
    $.ajax({
      type: 'GET',
      url: '/expenses.js',
      dataType: 'html',
      data: param,
      success: function(response) {
        $('body').empty();
        $('body').html(response);
      }
    });
  });
  $('.current_month').on('click', function(e) {
    var filter, param;
    filter = this.id;
    param = {
      'current_month': filter
    };
    e.preventDefault();
    $.ajax({
      type: 'GET',
      url: '/expenses.js',
      dataType: 'html',
      data: param,
      success: function(response) {
        $('body').empty();
        $('body').html(response);
      }
    });
  });
  $('.month_ago').on('click', function(e) {
    var filter, param;
    filter = this.id;
    param = {
      'month_ago': filter
    };
    e.preventDefault();
    $.ajax({
      type: 'GET',
      url: '/expenses.js',
      dataType: 'html',
      data: param,
      success: function(response) {
        $('body').empty();
        $('body').html(response);
      }
    });
  });
  $('.two_months_ago').on('click', function(e) {
    var filter, param;
    filter = this.id;
    param = {
      'two_months_ago': filter
    };
    e.preventDefault();
    $.ajax({
      type: 'GET',
      url: '/expenses.js',
      dataType: 'html',
      data: param,
      success: function(response) {
        $('body').empty();
        $('body').html(response);
      }
    });
  });
  $('.three_months_ago').on('click', function(e) {
    var filter, param;
    filter = this.id;
    param = {
      'three_months_ago': filter
    };
    e.preventDefault();
    $.ajax({
      type: 'GET',
      url: '/expenses.js',
      dataType: 'html',
      data: param,
      success: function(response) {
        $('body').empty();
        $('body').html(response);
      }
    });
  });
  $('.four_months_ago').on('click', function(e) {
    var filter, param;
    filter = this.id;
    param = {
      'four_months_ago': filter
    };
    e.preventDefault();
    $.ajax({
      type: 'GET',
      url: '/expenses.js',
      dataType: 'html',
      data: param,
      success: function(response) {
        $('body').empty();
        $('body').html(response);
      }
    });
  });
  $('.five_months_ago').on('click', function(e) {
    var filter, param;
    filter = this.id;
    param = {
      'five_months_ago': filter
    };
    e.preventDefault();
    $.ajax({
      type: 'GET',
      url: '/expenses.js',
      dataType: 'html',
      data: param,
      success: function(response) {
        $('body').empty();
        $('body').html(response);
      }
    });
  });
  $('.six_months_ago').on('click', function(e) {
    var filter, param;
    filter = this.id;
    param = {
      'six_months_ago': filter
    };
    e.preventDefault();
    $.ajax({
      type: 'GET',
      url: '/expenses.js',
      dataType: 'html',
      data: param,
      success: function(response) {
        $('body').empty();
        $('body').html(response);
      }
    });
  });
  $('.seven_months_ago').on('click', function(e) {
    var filter, param;
    filter = this.id;
    param = {
      'seven_months_ago': filter
    };
    e.preventDefault();
    $.ajax({
      type: 'GET',
      url: '/expenses.js',
      dataType: 'html',
      data: param,
      success: function(response) {
        $('body').empty();
        $('body').html(response);
      }
    });
  });
  $('.eight_months_ago').on('click', function(e) {
    var filter, param;
    filter = this.id;
    param = {
      'eight_months_ago': filter
    };
    e.preventDefault();
    $.ajax({
      type: 'GET',
      url: '/expenses.js',
      dataType: 'html',
      data: param,
      success: function(response) {
        $('body').empty();
        $('body').html(response);
      }
    });
  });
  $('.nine_months_ago').on('click', function(e) {
    var filter, param;
    filter = this.id;
    param = {
      'nine_months_ago': filter
    };
    e.preventDefault();
    $.ajax({
      type: 'GET',
      url: '/expenses.js',
      dataType: 'html',
      data: param,
      success: function(response) {
        $('body').empty();
        $('body').html(response);
      }
    });
  });
  $('.ten_months_ago').on('click', function(e) {
    var filter, param;
    filter = this.id;
    param = {
      'ten_months_ago': filter
    };
    e.preventDefault();
    $.ajax({
      type: 'GET',
      url: '/expenses.js',
      dataType: 'html',
      data: param,
      success: function(response) {
        $('body').empty();
        $('body').html(response);
      }
    });
  });
  $('.eleven_months_ago').on('click', function(e) {
    var filter, param;
    filter = this.id;
    param = {
      'eleven_months_ago': filter
    };
    e.preventDefault();
    $.ajax({
      type: 'GET',
      url: '/expenses.js',
      dataType: 'html',
      data: param,
      success: function(response) {
        $('body').empty();
        $('body').html(response);
      }
    });
  });
  $('.twelve_months_ago').on('click', function(e) {
    var filter, param;
    filter = this.id;
    param = {
      'twelve_months_ago': filter
    };
    e.preventDefault();
    $.ajax({
      type: 'GET',
      url: '/expenses.js',
      dataType: 'html',
      data: param,
      success: function(response) {
        $('body').empty();
        $('body').html(response);
      }
    });
  });
});