module StaticPagesHelper
  def active(action)
    if current_page? action: action
      'current-menu-item'
    end
  end
end
