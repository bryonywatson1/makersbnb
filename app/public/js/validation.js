
"use strict";


  $( function() {
    $( "#available_from" ).datepicker({ minDate: 0 , dateFormat: "yy-mm-dd"});
  } );

  $( function() {
    $("#available_to" ).datepicker({dateFormat: "yy-mm-dd",  minDate: 1});
  } );



$(document).ready(function(){
    $("#adds_new_space").submit(function(){
        alert(startDate);
    });
});









$( function() {
    $("#requested_date" ).datepicker({ minDate: 0 , dateFormat: "yy-mm-dd"});
  } );

  $( function() {
      $("#filter_date" ).datepicker({ minDate: 0 , dateFormat: "yy-mm-dd"});
    } );
