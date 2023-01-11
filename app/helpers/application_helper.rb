module ApplicationHelper

  def login_helper style = ''
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path, class: style) +
      " ".html_safe +
      (link_to "Login", new_user_session_path, class: style)
    else
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
    end
end

  def source_helper(styles)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]}, please feel free to #{ link_to 'contact me', contact_path } if you'd like to work together."
      content_tag(:div, greeting.html_safe, class: styles)

    end
  end

  def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: trading_rules_path,
        title: 'System/Rules'
      },
      {
        url: markets_path,
        title: 'Live Status'
      },
      {
        url: portfolios_path,
        title: 'Stocks'
      },
      {
        url: blogs_path,
        title: 'Blog'
      },
    ]
  end

  def nav_helper(style, tag_type)
    nav_links = ''

    nav_items.each do |item|
      #Keep appending to string
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end

  def alerts
    #will return true on alter type and which type into the var
    alert = (flash[:alert] || flash[:error] || flash[:notice])

    if alert
      alert_generator alert
    end
  end

  def alert_generator(msg)
    js add_gritter(msg, title: "Dougy Day Trader")
  end

  def blog_image img
    if img.model.main_image?
      img.url
    else
      ActionController::Base.helpers.asset_path('thestockfather.png')
    end
  end

end
