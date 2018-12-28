class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy, :toggle_status]
  layout "blog"
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit, :toggle_status]}, site_admin: :all

  def index
    if logged_in?(:site_admin)
      @blogs = Blog.recent.page(params[:page]).per(5)
    else
      @blogs = Blog.published.recent.page(params[:page]).per(5)
    end
    @page_title = "The Blog Father"
  end

  def show
    if logged_in?(:site_admin) || Blog.published?
      @blog = Blog.includes(:comments).friendly.find(params[:id])
      @comment = Comment.new
      @page_title = @blog.title
      @seo_keywords = @blog.body
    else
      redirect_to blogs_path, notice: "Not Authorized to access this page"
    end
  end

  def new
    @blog = Blog.new
  end

  def edit
  end

  def create
    @blog = Blog.new(blog_params)

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }

      else
        format.html { render :new }

      end
    end
  end

  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Blog was successfully destroyed.' }
    end
  end

  def toggle_status

      if @blog.draft?
        @blog.published!
      elsif @blog.published?
        @blog.draft!
      end
      redirect_to blogs_url, notice: 'Report Status Updated!'
  end

  private

    def set_blog
      @blog = Blog.friendly.find(params[:id])
    end


    def blog_params
      params.require(:blog).permit(:title, :body, :topic_id)
    end
end
