module StaticPagesHelper
  def active(action, controller = 'static_pages')
    if current_page? controller: controller, action: action
      'current-menu-item'
    end
  end
end
