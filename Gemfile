source 'https://rubygems.org'
ruby '2.1.0'

gem 'rails', '4.1.0.beta1'                                    # Rails 4.1
gem 'pg'                                                      # PostgreSQL

gem 'devise', '~> 3.1'                                        # Devise for Authentication
gem 'omniauth-google-oauth2'                                  # Google Omniauth

gem 'foreman'                                                 # Start local server with Procfile
gem 'puma'                                                    # Web server
gem 'will_paginate'                                           # Pagination
gem 'paranoia', github: 'radar/paranoia', branch: 'rails4'    # Soft deletes
gem 'secure_headers'                                          # Extra basic security

gem 'sass-rails',   '~> 4.0'                                  # Sass css syntax
gem 'coffee-rails', '~> 4.0'                                  # Coffeescript
gem 'slim-rails'                                              # Slim templates
gem 'jquery-rails'                                            # JQuery JS framework
gem 'neat'                                                    # Bourbon + Neat Sass framework
gem 'font-awesome-rails'                                      # Font Awesome icons
gem 'gemoji'                                                  # Emojis
gem 'redcarpet'                                               # Markdown parser
gem 'uglifier', '>= 1.0.3'                                    # Javascript compiler
gem 'filepicker-rails'                                        # Ink Filepicker

group :development do
  gem 'better_errors'                                         # Improved error interface
  gem 'binding_of_caller'                                     # Gives REPL in ^^
  gem 'spring'                                                # Rails preloader
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'byebug'                                                # Ruby 2 debugger
  gem 'rspec-rails'                                           # Rspec with support for scaffolds
end

group :test do
  gem 'ffaker'                                                # Fake data generator
  gem 'fabrication-rails'                                     # factory generator
  gem 'spork-rails'                                           # Forking test server
  gem 'guard-rspec', '~> 4.0', require: false                 # Guard for Rspec
  gem 'guard-spork'                                           # Guard for Spork
  gem 'terminal-notifier-guard'                               # OS X notifications
  gem 'rb-fsevent', '~> 0.9.1'                                # Better FS handling
  gem 'shoulda-matchers'                                      # More Rpsec matchers
  gem 'database_cleaner'                                      # Database cleaning after tests
end

group :production do
  gem 'rails_12factor'                                        # Heroku requires 12 factor
end
