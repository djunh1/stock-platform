class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #Use module helpers instead of putting logic in App ctl
  include DeviseWhitelist
  include SetSource

end
