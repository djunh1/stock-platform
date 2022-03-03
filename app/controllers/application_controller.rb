class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_variables

  #Use module helpers instead of putting logic in App ctl
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent

  def set_variables
    #Set these for application wide values.
     @companyName = "Wolf of State Street"
     @DOMAIN = "wolfofstatestreet.com"
     @infoEmail = "djunh1@gmail.com"
     @supportEmail = "djunh1@gmail.com"
     @helpEmail = "djunh1@gmail.com"
     @optOutEmail ="djunh1@gmail.com"
     @baseUrl = "wolfofstatestreet.com"
  end
end
