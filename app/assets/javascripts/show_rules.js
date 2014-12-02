$.fn.datepicker.defaults.format = "yyyy-mm-dd";
$.fn.datepicker.defaults.autoclose = true;

$(document).ready(function(){

  $('.checkbox input').click(function(e){
    $('.show-rrule').toggleClass("hidden");
  });

  $('.datepicker').datepicker();

  $('.timepicker').timepicker({
    minuteStep: 1,
    appendWidgetTo: 'body',
    showSeconds: false,
    showMeridian: false,
    showInputs: false,
    template: false
  });

});