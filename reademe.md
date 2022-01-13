Install dependencies
  * Sinatra
  * Capybara 
  * RSpec

- Write a feature test 
- Get the feature test to pass as simply as possible

--EDDIE PROCESS--
Bundle init => creates gem file to add gems 
  gem 'capybara'
  gem 'launchy'
  gem 'sinatra'
  gem "sinatra-contrib"
  gem 'selenium-webdriver'
  gem 'rspec'

Bundle => install dependencies

Create a lib & spec (rspec --init)  directory

Within spec create sub_directories: features, unit_tests 

Within spec_helper.rb need to specify : require 'capybara/rspec'

Error: rack-test requires a rack application, but none was given 
What does this mean? 
capybara -->interacts with browser--> simultes user interactions--> web applicaiton 
Missing! How does web application get started in the first place? How do we start the server? 
Capybara needs to start the server, so it needs to know the application needs to be running 
GO TO SPEC HELPER: 
require_relative '../app.rb'
Capybara.app = BirthdayApp

Error: Uninitialized constant BirthdayApp
Solution: Create a app.rb file and create class BirthdayApp

Error: Second parametr to session :: new should be a rack app 
--Solution : start--

require 'sinatra'
require 'sinatra/reloader'

class BirthdayApp < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  # start the server if ruby file executed directly
  # by having thsi we don't have a 
  run! if app_file == $0

end

--Solution : end--