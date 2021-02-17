# Pingsurance (Heritage Assc. Tech Challenge)

A simple web application to create a new leed, send them a message and view your histroy of leeds created. Note sending a text message requires a valid number.

## Summary

  - [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Running Development Mode](#running-development-mode)
  - [Testing](#running-tests)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

This application was built using ruby version 2.5.3 and rails 5.2.4.5. Ensure that you either install these versions or change the versions in the Gemfile.

### Prerequisites

This project uses postgresql for database management. Please download the [Postgres.app](https://postgresapp.com/downloads.html) and follow the documentation to also install the CLI tools.

In addition to the standard rails gems, we used the following gems:
- [Bootstrap](https://github.com/twbs/bootstrap-rubygem) - Web Styling 
- [jQuery-Rails](https://github.com/rails/jquery-rails) - Bootstrap dependency
- [RSpec](https://github.com/rspec/rspec-rails) - Test Suite
- [Capybara](https://github.com/teamcapybara/capybara) - Additional Testing Tools
- [Pry](https://github.com/pry/pry) - Runtime Dev Console
- [Shoulda Matchers](https://github.com/thoughtbot/shoulda-matchers) - Additional Testing Tools
- [Figaro](https://github.com/laserlemon/figaro) - API Key Protection
- [Twilio-Ruby](https://github.com/twilio/twilio-ruby) - SMS Managment Provider

NOTE: Twilio requires an account to sign up and a subcription past the trial period.

### Setup

Clone down the file and from the project directory run ```bundle install``` to install all the needed gems.
To setup the database from your terminal, run ```rails db:create``` and ```rails db:migrate```.

This will create your database, migrate the needed resources.

## Running Development Mode

From the main directory run ```rails s``` to start a puma server. In your browser navigate to ```localhost:3000```. You should see the following:

<img width="1427" alt="Screen Shot 2021-02-17 at 12 37 50 PM" src="https://user-images.githubusercontent.com/40395852/108258627-783a2980-711d-11eb-8f92-7768c3706eff.png">

From there you can click Add New Lead to open up a modal:

<img width="1431" alt="Screen Shot 2021-02-17 at 12 42 14 PM" src="https://user-images.githubusercontent.com/40395852/108258745-956ef800-711d-11eb-8d75-0cfb14c73fe1.png">

Fill out the form and hit submit. Han Solo will be sent a text message and added to the database. You will see a flash message and his details appear without a page refresh.

<img width="1420" alt="Screen Shot 2021-02-17 at 12 45 47 PM" src="https://user-images.githubusercontent.com/40395852/108259219-1201d680-711e-11eb-92ab-268659155e98.png">


## Running Tests

From your main directory in the command line, type ```bundle exec rspec```. This will run all tests located in the /spec directory. If any errors or failures occur please create and issue.

To run specific test files, include the file path.
```
bundle exec rspec spec/features/leeds/index_spec.rb
```


