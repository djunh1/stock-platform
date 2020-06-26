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
     @companyName = "THE STOCK FATHER , LLC."
     @DOMAIN = "unassisted.com"
     @infoEmail = "info@mail.gametime-sports.com"
     @supportEmail = "support@mail.gametime-sports.com"
     @helpEmail = "support@mail.gametime-sports.com"
     @optOutEmail ="opt-out@mail.gametime-sports.com"
     @baseUrl = "https://www.UNASSISTED.com"
    
    end


end
