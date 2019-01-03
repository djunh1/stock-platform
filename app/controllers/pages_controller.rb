class PagesController < ApplicationController
  def home
    @skills = Skill.all
    @posts = Blog.all
  end

  def about
    @skills = Skill.all
  end

  def contact
  end

  def tech_news
    @tweets = SocialTool.twitter_search
  end

  def download_file
    send_file "#{Rails.root}/app/assets/downloads/resume.pdf", type: "application/pdf", x_sendfile: true
  end

end
