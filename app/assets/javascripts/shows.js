$(document).on('ready page:load', function () {

  $("#calendar").fullCalendar({
      events: '/programs.json',
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,agendaWeek,agendaDay'
      },
      timezone: 'America/Vancouver',
      timeFormat: 'H:mm',
      axisFormat: 'H:mm',
      displayEventEnd: true
  })
});