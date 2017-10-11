module ApplicationHelper
  def gravatar_for(location, options = { size: 100})
   gravatar_id = Digest::MD5::hexdigest(location.email.downcase)
   size = options[:size]
   gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
   image_tag(gravatar_url, alt: location.primary_representative, class: "img-circle")
  end
end
