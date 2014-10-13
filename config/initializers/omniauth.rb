Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'sB0HcWW4k9E61fsxEm8rCzVUQ', 'TFbYE4o6aLWaQx9Wju9hSeZqvfFIloPQ4w76P2JtFWKBxxbSan'
  provider :vkontakte, '4588251', 'kEADLqi95A18LrMT005N', {
           redirect_uri: "https://0.0.0.0:3000/auth/vkontakte/callback"
  }

  provider :facebook, '933244226703618', 'f05d73cf2024fed9714e9b94f09f896c'
  provider :instagram, '7ac1acaeb2fc49abb368b2d736bfd6e1', '1d60704c70eb4f218fac004b0b8cee18', {
      redirect_uri: "https://0.0.0.0:3000/auth/instagram/callback"
  }
  provider :yandex, 'd95e615653f4404b9d829ca9505d3dc5', 'e1284bd720064015baba6ebf2072f461'
  provider :mailru, '725720', 'a0f14f0c75c53aacd0a3b55bed3e72bf', {
      :redirect_uri => "http://0.0.0.0:3000/auth/mailru/callback"
  }
end