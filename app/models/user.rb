include Rails.application.routes.url_helpers

class User < ApplicationRecord
  has_one_attached :avatar

  def as_json(options = {})
    if avatar.attached?
      super options.merge(avatar_url: avatar)
    else
      super
    end
  end

end
