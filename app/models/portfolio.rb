class Portfolio < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  #pluralize the model referenced.
  has_many :technologies

  #collection of items associated with a parent model
  accepts_nested_attributes_for :technologies,
                                 reject_if: lamba { |attr| attr['name'].blank?}
  #keep logic in model.  Use lamba fucntion.
  scope :ruby_on_rails, -> {
    where(subtitle: 'Holy Moly Mike Santolli')
  }

  #Init after new , NOT create
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
    #shortcut for setting image if nil. otherwise it bypasses vs overriding via =
  end
end
