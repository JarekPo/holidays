# README

#### [Application demo](https://holidays-sy1o.onrender.com)

(Initial launch can take up to 20 seconds)

# Holidays Management System

##### Application for annual leave management. It enables the employee to send a holiday request and the manager to enter holidays in the calendar.

A stand-alone, completely functional system for employee holiday management, with a database of users and holidays and an interactive calendar. The application is built using the full-stack Ruby on Rails framework. The app is deployed on the render.com platform and consists of a cloud-based web service instance and a PostgreSQL database.

- Ruby version - 3.0.3
- Rails version - 7.0.2.3

## System dependencies:

- devise ~> 4.8 >= 4.8.1
- date_validator ~> 0.12.0
- fullCalendar
- momentjs, jQuery, bootstrap and other libraries

## Current deployment:

- The application is deployed on the Render.com cloud services platform. As this is a demo instance, it uses a free plan and the initial launch can take up to 20 seconds.

## Run application locally:

- Uncomment sqlite3 gem in Gemfile, run bundle install in CLI, and run rails s

\*\* Note:

- It may be necessary to replace the database.yml file from the config folder.
- In this case, copy the database.yml file from the sqlite3-database folder, place it in the config folder and run bundle install.

[Deployed application demo](https://holidays-sy1o.onrender.com)
