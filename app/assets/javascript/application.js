// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "fullcalendar";

//= require moment 
//= require fullcalendar
//= require_tree .

$('#calendar').fullCalendar({});
