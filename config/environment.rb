# Load the Rails application.
require File.expand_path('../application', __FILE__)
# I added this to silence the noise of the active admin
ActiveSupport::Deprecation.silenced = true
# Initialize the Rails application.
Nuttyguy::Application.initialize!
