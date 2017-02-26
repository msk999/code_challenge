# README

Pluralsight Assessments Team Code
Challenge

* Author - Matthew Krasnick
* Date: February 26, 2017

### Install Ruby
* Ruby version - 2.33

### Run Bundler

Run `gem install bundler` to get bundler installed for the app.  You'll need to do this before you run bundler for the app.

Now run `bundle` at the command line.  Wait as your app is bundled up...be patient.

### Install Rails
* Rails version - 5.0.1

### Database and table creation

Run the following:

`rake db:create db:migrate`

* Database initialization
Run the following:  

`rake db:seed`

This will read a csv file and break it apart and populate a db sqlite table named questions.  See db/migrate/seeds.rb for details

### Server setup

From a console window run 
`rails server` to start up the server

In a browser type 
`http://localhost:3000`
to view code challenge application