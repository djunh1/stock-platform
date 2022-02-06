class PagesController < ApplicationController
  def home
    #@skills = Skill.all
    @posts = Blog.limit(3).order('created_at DESC')
    @market_posts = Blog.limit(15).order('created_at DESC')
    @tickers = Portfolio.all
    @page_title = "Welcome"

  end

  def trading_rules
    #@skills = Skill.all
    @page_title = "Rules"
  end

  def market_status
  end

  def privacyPolicy
    @page_title = "Privacy Policy"
  end


  def termsAndConditions
    @page_title = "Terms and Conditions"
  end

  def tech_news
    @tweets = SocialTool.twitter_search
  end

  def download_file
    #send_file "#{Rails.root}/app/assets/downloads/resume.pdf", type: "application/pdf", x_sendfile: true
  end

end
