# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
QuipperTasks::Application.initialize!

Date::DATE_FORMATS[:default] = "%Y-%m-%d %H:%M"
