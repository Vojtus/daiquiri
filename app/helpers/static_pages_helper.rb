module StaticPagesHelper
  def active(action)
    if current_page? controller: "static_pages", action: action
      'current-menu-item'
    end
  end
end
