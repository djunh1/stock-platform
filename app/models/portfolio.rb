class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  #keep logic in model.  Use lamba fucntion.
  scope :ruby_on_rails, -> {
    where(subtitle: 'Holy Moly Mike Santolli')
  }

  #Init after new , NOT create
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "https://via.placeholder.com/600x400"
    self.thumb_image ||= "https://via.placeholder.com/350x200"
    #shortcut for setting image if nil. otherwise it bypasses vs overriding via =
  end
end
