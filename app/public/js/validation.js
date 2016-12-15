
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

    $("#available_from, #available_to").on("change", function(){
      var x=$("#available_from").datepicker("getDate");
      $( "#available_to" ).datepicker( "option", "minDate",x );
    });

    var availableDates = [];
    $("#sending_request input[type=hidden]").each(function() {
         availableDates.push($(this).val());
    });

    function available(date) {


      var ymd = date.getFullYear() + "-" + (("0" + (date.getMonth() + 1)).slice(-2)) + "-" + (("0" + date.getDate()).slice(-2));
      var t = $.inArray(ymd, availableDates);
      if ($.inArray(ymd, availableDates) != -1) {
        return [true, "","Available"];
      } else {
        return [false,"","unAvailable"];
      }
  }

    $('#requested_date').datepicker({
      beforeShowDay: available
    });

    $('#requested_date').datepicker("option","dateFormat","yy-mm-dd");

});
