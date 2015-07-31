module ApplicationHelper

  # Provides full title for the page
  def full_title(page_title = '')
    base_title = "Daiquiri bar"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
