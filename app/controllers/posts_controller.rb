class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [:show]
  before_action :auth_subscriber, only: [:new]

  def index
    @posts = Post.all
  end

  def show
    @scomment = Scomment.new
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

  def set_post
    @post = Post.includes(:scomments).find(params[:id])
  end

  def auth_subscriber
    comm_id = params[:community_id]
    unless Subscription.where(community_id: comm_id, user_id: current_user.id).any?
      redirect_to stockit_path
    end
  end

  def set_community
    @post= Post.find(params[:id])
  end

  def post_values
    params.require(:post).permit(:title, :body)
  end
end
