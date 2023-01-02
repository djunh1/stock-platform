class StockitController < ApplicationController

  def index
    @communities = Community.all.limit(5)
    @posts = Post.limit(20).sort_by{ |p| p.score }.reverse
    @vote = Vote.new
  end

  def profile
    @profile = User.find(params[:id])
    @posts = @profile.posts
  end

end
