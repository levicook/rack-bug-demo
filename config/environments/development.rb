RackBugDemo::Application.configure do
  # Settings specified here will take precedence over those in config/environment.rb

  # DEMO
  # HINT: `rake secret`
  config.middleware.use "Rack::Bug",
    :password   => "secret",
    :secret_key => "351a55fc54347710691b92192969ea3de5758f2bdaf2d1d1403bd90d5f3f98798dd028970e7e787cec468c6c3b4e41fc29448df646f7e6fe6b53f058cd209078"

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the webserver when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_view.debug_rjs             = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

end
