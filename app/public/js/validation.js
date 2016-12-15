
"use strict";






$(document).ready(function(){

    $("#available_from").datepicker({
      minDate: 0,
      dateFormat: "yy-mm-dd"
    });
    $("#available_to").datepicker({
      dateFormat: "yy-mm-dd"
    });

    $("#filter_date").datepicker({
      minDate: 0,
      dateFormat: "yy-mm-dd"
    });

    // $("#requested_date").datepicker({
    //   minDate: 0,
    //   dateFormat: "yy-mm-dd"
    //   // beforeShowDay: check_available_date(available_formatted_dates_list)
    // });

    $("#available_from, #available_to").on("change", function(){
      var x=$("#available_from").datepicker("getDate");
      $( "#available_to" ).datepicker( "option", "minDate",x );
    });

    var availableDates = [];
    // fill the available dates list from the hidden fields
    $("#sending_request input[type=hidden]").each(function() {
         availableDates.push($(this).val());
    });
    //var availableDates = ["2017-5-9","2017-5-14","2017-5-15"];

    function available(date) {
      var dmy = date.getFullYear() + "-" + (date.getMonth()+1) + "-" + date.getDate();
      if ($.inArray(dmy, availableDates) != -1) {
        return [true, "","Available"];
      } else {
        return [false,"","unAvailable"];
      }
  }

$('#requested_date').datepicker({ beforeShowDay: available });



});
