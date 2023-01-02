class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates_uniqueness_of :user_id, scope: :post

  after_create :imcrement_vote, :add_karma
  after_destroy :decrement_vote, :remove_karma

  private

  def imcrement_vote
    field = self.upvote ? :upvotes : :downvotes
    Post.find(self.post_id).increment(field).save
  end

  def decrement_vote
    field = self.upvote ? :upvotes : :downvotes
    Post.find(self.post_id).decrement(field).save
  end

  def add_karma
    user = User.find(self.user_id)
    user.increment(:karma, 1).save
  end

  def remove_karma
    user = User.find(self.user_id)
    user.decrement(:karma, 1).save
  end

end
