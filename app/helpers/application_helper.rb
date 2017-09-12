module ApplicationHelper
  #providerが存在している場合は、snsから取得した画像を、そうでない場合はデフォルトの画像を表示
  def profile_img(user)
    return image_tag(user.avatar, alt: user.name) if user.avatar?
    
    unless user.provider.blank?
      img_url = user.image_url
    else
      img_url = 'no_image.png'
    end
    image_tag(img_url, alt: user.name)
  end
end
