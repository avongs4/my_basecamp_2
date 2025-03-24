source "https://rubygems.org"

gem "rails", "~> 8.0.2"
gem "propshaft" # Modern asset pipeline for Rails

# Database
gem "pg", "~> 1.1"

# Web server
gem "puma", ">= 5.0"

# JavaScript tools
gem "importmap-rails"  # ESM import maps
gem "turbo-rails"       # Hotwire Turbo
gem "stimulus-rails"    # Hotwire Stimulus

# API Support
gem "jbuilder" # JSON APIs

# Authentication
gem "bcrypt", "~> 3.1"

# Bootstrap for styling
gem "bootstrap", "~> 5.3"
gem "cssbundling-rails", "~> 1.4"

# Windows-specific timezone fix
gem "tzinfo-data", platforms: %i[windows jruby]

# Caching, background jobs, and WebSockets
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Performance improvements
gem "bootsnap", require: false
gem "kamal", require: false
gem "thruster", require: false

group :development, :test do
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console" # Debugging in development
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

gem "devise", "~> 4.9"
