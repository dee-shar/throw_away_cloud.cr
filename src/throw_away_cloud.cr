require "json"
require "http/client"

class ThrowAwayCloud
  API_PATH = "api"
  def initialize
    @headers = HTTP::Headers {
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://throwaway.cloud")
    @http_client = HTTP::Client.new(uri)
  end

  def check_subject(subject : String) : JSON::Any
    JSON.parse(
      @http_client.get("/v2/#{API_PATH}/#{subject}", headers: @headers).body)
  end

  def get_domains() : JSON::Any
    JSON.parse(
      @http_client.get("/list.json", headers: @headers).body)
  end

  def check_subject_traits(subject : String) : JSON::Any
    JSON.parse(
      @http_client.get("/v3/#{API_PATH}/#{subject}", headers: @headers).body)
  end
end
