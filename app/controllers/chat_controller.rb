class ChatController < ApplicationController

  def index
    @routes = Rails.application.routes.routes.select do |route|
      route.defaults[:controller] &&
      route.defaults[:controller].start_with?("chat")
    end
  end

  def posso_fazer_deploy
    json = do_request 'https://shouldideploy.today/api?tz=America%2FSao_Paulo'
    msg = json["message"]
    render plain: msg
  end

  def frase_aleatoria
    p = Phrase.random
    str = "\"#{p.text}\" , #{p.author}"
    render plain: str
  end

  private

  def do_request url
    uri = URI.parse(url)
    req = Net::HTTP::Get.new(uri.request_uri)
    https = Net::HTTP.new(uri.host, uri.port)
    https.use_ssl = true
    res = https.request(req)
    json = JSON.parse(res.body)
  end
end
