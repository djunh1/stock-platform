class StockitController < ApplicationController

  def index
    @communities = Community.all.limit(5)
    @posts = Post.order(id: :desc).limit(20)
  end

  def profile
    @profile = User.find(params[:id])
    @posts = @profile.posts
  end

end
