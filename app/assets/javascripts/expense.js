// Inicio Filtro Transaction Type //
  $(document).ready(function() {
    console.log("hola mundo");
    $(".transaction-type").on('click', function(e) {
      var filter = this.id;
      var param = { "transaction_type": filter };
      e.preventDefault();
      $.ajax({
        type: "GET",
        url: "/expenses.js",
        dataType: 'html',
        data: param,
        success: function(response) {
          $("body").empty();
          $("body").html(response);
        }
      });
    });
// Fin Filtro Transaction Type //

// Inicio Filtro Category //
    $(".category").on('click', function(e) {
      var filter = this.id;
      var param = { "category": filter };
      e.preventDefault();
      $.ajax({
        type: "GET",
        url: "/expenses.js",
        dataType: 'html',
        data: param,
        success: function(response) {
          $("body").empty();
          $("body").html(response);
        }
      });
    });
// Fin Filtro Category //

// Inicio Filtro Mes //
    $(".current_month").on('click', function(e) {
      var filter = this.id;
      var param = { "current_month": filter };
      e.preventDefault();
      $.ajax({
        type: "GET",
        url: "/expenses.js",
        dataType: 'html',
        data: param,
        success: function(response) {
          $("body").empty();
          $("body").html(response);
        }
      })
    });
    $(".month_ago").on('click', function(e) {
      var filter = this.id;
      var param = { "month_ago": filter };
      e.preventDefault();
      $.ajax({
        type: "GET",
        url: "/expenses.js",
        dataType: 'html',
        data: param,
        success: function(response) {
          $("body").empty();
          $("body").html(response);
        }
      })
    });
    $(".two_months_ago").on('click', function(e) {
      var filter = this.id;
      var param = { "two_months_ago": filter };
      e.preventDefault();
      $.ajax({
        type: "GET",
        url: "/expenses.js",
        dataType: 'html',
        data: param,
        success: function(response) {
          $("body").empty();
          $("body").html(response);
        }
      })
    });
    $(".three_months_ago").on('click', function(e) {
      var filter = this.id;
      var param = { "three_months_ago": filter };
      e.preventDefault();
      $.ajax({
        type: "GET",
        url: "/expenses.js",
        dataType: 'html',
        data: param,
        success: function(response) {
          $("body").empty();
          $("body").html(response);
        }
      })
    });
    $(".four_months_ago").on('click', function(e) {
      var filter = this.id;
      var param = { "four_months_ago": filter };
      e.preventDefault();
      $.ajax({
        type: "GET",
        url: "/expenses.js",
        dataType: 'html',
        data: param,
        success: function(response) {
          $("body").empty();
          $("body").html(response);
        }
      })
    });
    $(".five_months_ago").on('click', function(e) {
      var filter = this.id;
      var param = { "five_months_ago": filter };
      e.preventDefault();
      $.ajax({
        type: "GET",
        url: "/expenses.js",
        dataType: 'html',
        data: param,
        success: function(response) {
          $("body").empty();
          $("body").html(response);
        }
      })
    });
    $(".six_months_ago").on('click', function(e) {
      var filter = this.id;
      var param = { "six_months_ago": filter };
      e.preventDefault();
      $.ajax({
        type: "GET",
        url: "/expenses.js",
        dataType: 'html',
        data: param,
        success: function(response) {
          $("body").empty();
          $("body").html(response);
        }
      })
    });
    $(".seven_months_ago").on('click', function(e) {
      var filter = this.id;
      var param = { "seven_months_ago": filter };
      e.preventDefault();
      $.ajax({
        type: "GET",
        url: "/expenses.js",
        dataType: 'html',
        data: param,
        success: function(response) {
          $("body").empty();
          $("body").html(response);
        }
      })
    });
    $(".eight_months_ago").on('click', function(e) {
      var filter = this.id;
      var param = { "eight_months_ago": filter };
      e.preventDefault();
      $.ajax({
        type: "GET",
        url: "/expenses.js",
        dataType: 'html',
        data: param,
        success: function(response) {
          $("body").empty();
          $("body").html(response);
        }
      })
    });
    $(".nine_months_ago").on('click', function(e) {
      var filter = this.id;
      var param = { "nine_months_ago": filter };
      e.preventDefault();
      $.ajax({
        type: "GET",
        url: "/expenses.js",
        dataType: 'html',
        data: param,
        success: function(response) {
          $("body").empty();
          $("body").html(response);
        }
      })
    });
    $(".ten_months_ago").on('click', function(e) {
      var filter = this.id;
      var param = { "ten_months_ago": filter };
      e.preventDefault();
      $.ajax({
        type: "GET",
        url: "/expenses.js",
        dataType: 'html',
        data: param,
        success: function(response) {
          $("body").empty();
          $("body").html(response);
        }
      })
    });
    $(".eleven_months_ago").on('click', function(e) {
      var filter = this.id;
      var param = { "eleven_months_ago": filter };
      e.preventDefault();
      $.ajax({
        type: "GET",
        url: "/expenses.js",
        dataType: 'html',
        data: param,
        success: function(response) {
          $("body").empty();
          $("body").html(response);
        }
      })
    });
    $(".twelve_months_ago").on('click', function(e) {
      var filter = this.id;
      var param = { "twelve_months_ago": filter };
      e.preventDefault();
      $.ajax({
        type: "GET",
        url: "/expenses.js",
        dataType: 'html',
        data: param,
        success: function(response) {
          $("body").empty();
          $("body").html(response);
        }
      })
    });
  });
// Fin Filtro Mes //