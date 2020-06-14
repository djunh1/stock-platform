module BlogsHelper
  def gravitar_helper user
    image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}", width: 60
  end

  class CodeRayify < Redcarpet::Render::HTML
    def block_code(code, laungage)
      CodeRay.scan(code,laungage).div
    end
  end

  def markdown(text)
    coderayified = CodeRayify.new(filter_html: true, hard_wrap: true)

    options = {
      fenced_code_blocks: true,
      no_intra_emphasis: true,
      autolink: true,
      lax_html_blocks: true
    }

    markdown_to_html = Redcarpet::Markdown.new(coderayified, options)
    markdown_to_html.render(text).html_safe
  end

  def blog_status(blog)
    if blog.draft?
      'color: red'
    end
  end

  def the_blog_father_image img
    if img.model.main_image?
      img.url
    else 
      ActionController::Base.helpers.asset_path('thestockfather.png')
    end
  end
  
end
