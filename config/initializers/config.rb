RAILS_ENV ||= "development"
APP_CONFIG = YAML.load_file("#{Rails.root}/config/config.yml")[RAILS_ENV]

Rails.application.configure do
  # Default URL for mailer
  config.action_mailer.default_url_options = { :host => APP_CONFIG['host'] }
end
