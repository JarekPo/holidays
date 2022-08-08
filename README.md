# README

# Holidays Management System
Application for annual leave management. It enables the employee to send a holiday request and the manager to enter holidays in the calendar.

* Ruby version - 3.0.3

* Rails version - 7.0.2.3

## System dependencies:
* devise ~> 4.8 >= 4.8.1
* date_validator ~> 0.12.0
* fullCalendar
* sqlite3 ~> 1.4

## Deployment instructions:
* Replace sqlite3 database with the PostrgreSQL database, run bundle install and push to the Heroku repository.

## Run application locally:
* Uncomment sqlite3 gem in Gemfile, run bundle install in CLI, and run rails s

** Note:
* It may be necessary to replace the database.yml file from the config folder. 
* In this case, copy the database.yml file from the sqlite3-database folder, place it in the config folder and run bundle install.


[Deployed application demo](https://holidays-management.herokuapp.com)
