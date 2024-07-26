require 'json'
require 'net/http'
require 'uri'

class ApiController < ApplicationController

  def posso_fazer_deploy
    url = 'https://shouldideploy.today/api?tz=America%2FSao_Paulo'
    uri = URI.parse(url)
    req = Net::HTTP::Get.new(uri.request_uri)
    https = Net::HTTP.new(uri.host, uri.port)
    https.use_ssl = true
    res = https.request(req)
    json = JSON.parse(res.body)
    msg = json["message"]
    respond_to do |f|
      f.json { render json: msg }
    end
  end
  
  def frase_aleatoria
    p = Phrase.random
    str = "\"#{p.text}\" , #{p.author}"
    respond_to do |f|
      f.json { render json: str }
    end
  end
end

