module ApplicationHelper
    def gravatar_for(user, opts = {size: 50})
        hash = Digest::MD5.hexdigest(user.email.downcase)
        gravatar_url = "https://secure.gravatar.com/avatar/#{hash}?s=#{opts[:size]}"
        image_tag(gravatar_url, alt: user.name, class: "img-circle")
    end
end
