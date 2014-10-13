Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  provider :vkontakte, ENV['VKONTAKTE_KEY'], ENV['VKONTAKTE_SECRET'], {
           redirect_uri: "https://0.0.0.0:3000/auth/vkontakte/callback"
  }

  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
  provider :instagram, ENV['INSTAGRAM_KEY'], ENV['INSTAGRAM_SECRET'], {
      redirect_uri: "https://0.0.0.0:3000/auth/instagram/callback"
  }
  provider :yandex, ENV['YANDEX_KEY'], ENV['YANDEX_SECRET']
  provider :mailru, ENV['MAILRU_KEY'], ENV['MAILRU_SECRET'], {
      redirect_uri: "https://0.0.0.0:3000/auth/mailru/callback",
      response_type: 'token'
  }

  provider :google_oauth2, ENV['GMAIL_KEY'], ENV['GMAIL_SECRET'], {
      :name => "google",
      :scope => "email, profile, plus.me, http://gdata.youtube.com",
      :prompt => "select_account",
      :image_aspect_ratio => "square",
      :image_size => 50
  }
end