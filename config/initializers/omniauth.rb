Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  provider :vkontakte, ENV['VKONTAKTE_KEY'], ENV['VKONTAKTE_SECRET'], {
           redirect_uri: "http://mysterious-stream-6275.herokuapp.com/auth/vkontakte/callback"
  }
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
  provider :instagram, ENV['INSTAGRAM_KEY'], ENV['INSTAGRAM_SECRET'], {
      redirect_uri: "http://mysterious-stream-6275.herokuapp.com/auth/instagram/callback"
  }
  provider :yandex, ENV['YANDEX_KEY'], ENV['YANDEX_SECRET']
  provider :google_oauth2, ENV['GOOGLE_KEY'], ENV['GOOGLE_SECRET'], {
  	redirect_uri: "http://mysterious-stream-6275.herokuapp.com/auth/google_oauth2/callback",
      :name => "google",
      :scope => "email, profile, plus.me, http://gdata.youtube.com",
      :prompt => "select_account",
      :image_aspect_ratio => "square",
      :image_size => 50,
  }
end