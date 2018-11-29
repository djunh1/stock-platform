class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  #keep logic in model.  Use lamba fucntion.
  scope :ruby_on_rails, -> {
    where(subtitle: 'Holy Moly Mike Santolli')
  }
end
