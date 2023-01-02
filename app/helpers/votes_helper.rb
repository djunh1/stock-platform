module VotesHelper

  def is_upvoted(post)
    user_signed_in? && current_user.upvoted_post_ids.include?(post.id) ? " active" : ""
  end

  def is_downvoted(post)
    user_signed_in? && current_user.downvoted_post_ids.include?(post.id) ? " active" : ""

  end

end
