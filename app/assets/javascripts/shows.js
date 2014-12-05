$(document).on('ready page:load', function () {

  $("#calendar").fullCalendar({
      events: '/show_instances.json',
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,agendaWeek,agendaDay'
      },
      timezone: 'America/Vancouver'
  })
});