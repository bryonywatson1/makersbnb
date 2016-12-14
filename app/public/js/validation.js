
"use strict";

$(document).ready(function(){
    var today = new Date().toISOString().split('T')[0];
    $("#available_from").attr('min', today);

    $("#available_from, #available_to").on("change", function(){
      $("#available_to").attr("min", $("#available_from").val());
    });

});
