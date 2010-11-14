# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Eatsocial::Application.initialize! do |config|
  config.time_zone = "Central Time (US & Canada)"
end

