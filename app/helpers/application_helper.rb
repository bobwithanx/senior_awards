module ApplicationHelper
  def display_image(url)
    url = Rails.application.assets.find_asset(url).nil? ? nil : url
    # image_tag url || 'photos/default_image.jpg'
    image_tag url || ''
  end
end
