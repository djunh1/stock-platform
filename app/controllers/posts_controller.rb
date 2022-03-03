class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_community, only: [:show]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @community = Community.find(params[:community_id])
    @post= Post.new
  end

  def create
    @post= Post.new(post_values)
    @post.user_id = current_user.id
    @post.community_id = params[:community_id]

    if @post.save
      redirect_to community_path(@post.community_id)
    else
      @community = Community.find(params[:community_id])
      render :new
    end
  end

  private

  def set_community
    @post= Post.find(params[:id])
  end

  def post_values
    params.require(:post).permit(:title, :body)
  end
end
