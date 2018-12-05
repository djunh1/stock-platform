module CurrentUserConcern
  extend ActiveSupport::Concern

  #over ride current user method.
  def current_user
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.name = "Guest User"
    guest.first_name = "Guest"
    guest.last_name = "User"
    guest.email = "guest@example.com"
    return guest
  end
end
