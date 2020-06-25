class Portfolio < ApplicationRecord
  has_many :technologies
  validates_presence_of :ticker, :body

  mount_uploader :thumb_image, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader
  #pluralize the model referenced.

  enum status: {Bullish: 0 , Bearish: 1}


  #collection of items associated with a parent model
  accepts_nested_attributes_for :technologies,
                                allow_destroy: true,
                                 reject_if: lambda { |attr| attr['name'].blank?}
  #keep logic in model.  Use lamba fucntion.
  scope :ruby_on_rails, -> {
    where(subtitle: 'test function')
  }

  def self.by_position
    order("position ASC")
  end

end
