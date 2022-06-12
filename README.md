# README

fork and clone this repo

run `bundle install` to install the dependencies

To install rspec and apitome and generate the needed folders and files:
`rails g: rspec install`
`rails g: apitome install`

`rails s` to start development server

* Ruby version:

ruby 3.0.3

rails 6.1.6 https://guides.rubyonrails.org/v6.1/

How to configure a rails app to run as API only: https://guides.rubyonrails.org/api_app.html

* System dependencies:

rspec-rails: https://rspec.info/documentation/

rspec api documentation: https://github.com/zipmark/rspec_api_documentation

apitome: https://www.rubydoc.info/gems/apitome/0.3.1


* Database creation
created using webscraper

lib/deal.rb
lib/scraper.rb
doc/deals.json


* How to run the test suite

run rake docs:generate
open ./doc/api/index.html
