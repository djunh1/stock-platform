class Blog < ApplicationRecord
  enum status: {draft: 0 , published: 1}
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :topic_id, :body

  belongs_to :topic
  has_rich_text :blog_post

  has_many :comments, dependent: :destroy

  mount_uploader :main_image, BlogUploader

  def self.special_blogs
    all
  end

  def self.featured_blogs
    limit(2)
  end

  def self.recent
    order("created_at DESC")
  end
  
end
