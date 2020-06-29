Rails.application.configure do

  config.cache_classes = true
  config.eager_load = true

  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?
  config.assets.compile = false

  config.log_level = :debug
  config.log_tags = [ :request_id ]
  config.action_mailer.perform_caching = false
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.log_formatter = ::Logger::Formatter.new
  if ENV["RAILS_LOG_TO_STDOUT"].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end

  config.active_record.dump_schema_after_migration = false


  config.action_cable.allowed_request_origins = ['https://https://wolfofstatestreet-staging.herokuapp.com/', 'http://https://wolfofstatestreet-staging.herokuapp.com/']
  config.action_cable.url = "wss://https://wolfofstatestreet-staging.herokuapp.com/cable"

  config.action_cable.allowed_request_origins = [ENV.fetch('ACTION_CABLE_DOMAIN_HTTPS'), ENV.fetch('ACTION_CABLE_DOMAIN_HTTP')]
   config.action_cable.url = ENV.fetch('ACTION_CABLE_URL')


  # Check action storage on amazon when in prod
  config.active_storage.service = :amazon
end
