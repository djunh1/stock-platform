module CurrentUserConcern
  extend ActiveSupport::Concern

  #over ride current user method.
  def current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: "Guest User",
                  first_name: "Guest User",
                  last_name: "Guest User",
                  email: "test@test.com")
  end
end
