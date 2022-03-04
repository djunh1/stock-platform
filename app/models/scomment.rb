class Scomment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates_presence_of :user_id, :post_id

  validates :message, presence: true, length: {minimum: 15, maximum: 1000}

  after_create_commit { CommentBroadcastJob.perform_later(self)}
end
