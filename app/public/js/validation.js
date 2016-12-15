
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

    $("#requested_date").datepicker({
      minDate: 0,
      dateFormat: "yy-mm-dd"
    });

    $("#available_from, #available_to").on("change", function(){
      var x=$("#available_from").datepicker("getDate");
      $( "#available_to" ).datepicker( "option", "minDate",x );
    });

});
