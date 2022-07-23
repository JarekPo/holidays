// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "fullcalendar";

//= require jquery
//= require moment 
//= require fullcalendar
//= require_tree .
//= require rails-ujs

$('#calendar').fullCalendar({
	events: '/events.json'
});

function eventCalendar() {
  return $('#calendar').fullCalendar({ });
};
function clearCalendar() {
  $('#calendar').fullCalendar('delete'); 
  $('#calendar').html('');
};

$(document).on('turbolinks:load', function(){
  eventCalendar();  
});
$(document).on('turbolinks:before-cache', clearCalendar);

document.addEventListener("turbo:load", function(event) {
  window.dataLayer = window.dataLayer || []
  function gtag(){dataLayer.push(arguments)}
  gtag('js', new Date())
  gtag('config', 'G-N4P5SR4XM1', {'page_location': event.detail.url})
}, false)

// Global site tag (gtag.js) - Google Analytics -->
/*
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-N4P5SR4XM1');*/