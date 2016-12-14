
"use strict";


  $( function() {
    $( "#available_from" ).datepicker({ minDate: 0 , dateFormat: "yy-mm-dd"});
  } );

  $( function() {
    $("#available_to" ).datepicker({dateFormat: "yy-mm-dd",  minDate: 1});
  } );



$(document).ready(function(){
    $("#adds_new_space").submit(function(){
      var fromDate = $("#available_from").val();
      var toDate = $("#available_to").val();
      if(fromDate >= toDate){
        alert("To date must be after From date");
        return false;
      }
    });
});









$( function() {
    $("#requested_date" ).datepicker({ minDate: 0 , dateFormat: "yy-mm-dd"});
  } );

  $( function() {
      $("#filter_date" ).datepicker({ minDate: 0 , dateFormat: "yy-mm-dd"});
    } );
