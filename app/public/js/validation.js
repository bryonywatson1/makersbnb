
"use strict";

  $( function() {
    $( "#available_from" ).datepicker({ minDate: 0 , dateFormat: "yy-mm-dd"});
  } );

  $( function() {
    $("#available_to" ).datepicker({ minDate: 0 , dateFormat: "yy-mm-dd"});
  } );

$( function() {
    $("#requested_date" ).datepicker({ minDate: 0 , dateFormat: "yy-mm-dd"});
  } );

  $( function() {
      $("#filter_date" ).datepicker({ minDate: 0 , dateFormat: "yy-mm-dd"});
    } );
