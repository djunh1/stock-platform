class Post < ApplicationRecord
  belongs_to :user
  belongs_to :community
  validates_presence_of :title, :body, :user_id

  has_many :scomments

  def score
    if self.upvotes > 0 || self.downvotes > 0
      self.upvotes > 0 ? (self.upvotes - self.downvotes) : (self.downvotes * -1)
    else
      return 0
    end
  end

end
