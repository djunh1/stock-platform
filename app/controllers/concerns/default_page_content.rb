module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Wolf of State Street | Home"
    @seo_keywords = "Douglas Jacobson, Stock, Stocks, Equity, Markets, Trading, Rules, Risk, Money, Money Management "
  end
end
