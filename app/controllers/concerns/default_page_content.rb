module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Douglas Jacobson | Home"
    @seo_keywords = "Douglas Jacobson, Developer, Ruby on Rails, Python, Java, AWS "
  end
end
