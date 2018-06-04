module WatsonHelper
  require 'net/http'
  require 'uri'


  @@watson_current_environment_id = 'a202ef5f-3d59-48c1-974a-a47df133d040'
  @@watson_current_environment_name = 'my-first-environment'

  @@watson_default_configuration_id = 'd89475ec-edb0-455f-b61c-7d3102e4c368'

  @@watson_articles_collection_id = '357ca9fc-3699-4c5d-a919-2ee9f98a3be4'
  @@watson_articles_collection_name = 'articles'

  @@watson_username = Biasy::Application.credentials.watson[:username]
  @@watson_password = Biasy::Application.credentials.watson[:password]

  def self.list_environments
    # curl -u "{username}":"{password}" "https://gateway.watsonplatform.net/discovery/api/v1/environments?version=2018-03-05"

    url = 'https://gateway.watsonplatform.net/discovery/api/v1'
    path = 'environments?version=2018-03-05'
    uri_scheme = 'https'

    url_path = "#{url}/#{path}"
    uri = URI.parse(url_path )
    request = Net::HTTP::Get.new(uri)
    request.basic_auth(@@watson_username, @@watson_password)

    req_options = { use_ssl: uri.scheme == uri_scheme }

    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(request)
    end

    response.body
  end

  def self.get_current_environment
    # curl -u "{username}":"{password}" "https://gateway.watsonplatform.net/discovery/api/v1/environments/{environment_id}?version=2017-11-07"

    uri = URI.parse("https://gateway.watsonplatform.net/discovery/api/v1/environments/#{@@watson_current_environment_id}?version=2017-11-07")
    request = Net::HTTP::Get.new(uri)
    request.basic_auth(@@watson_username, @@watson_password)

    req_options = {
        use_ssl: uri.scheme == "https",
    }

    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(request)
    end

    response.body
  end

  def self.update_current_environment(name, description)
    uri = URI.parse("https://gateway.watsonplatform.net/discovery/api/v1/environments/#{@@watson_current_environment_id}?version=2018-03-05")
    request = Net::HTTP::Put.new(uri)
    request.basic_auth(@@watson_username, @@watson_password)
    request.content_type = "application/json"
    request["Accept"] = "application/json"

    request.body = {name: name, description: description}.to_json

    req_options = {
        use_ssl: uri.scheme == "https",
    }

    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(request)
    end

    response.body
  end

  def self.query_articles_collection(count=10)

    uri = URI.parse("https://gateway.watsonplatform.net/discovery/api/v1/environments/#{@@watson_current_environment_id}/collections/#{@@watson_articles_collection_id}/query?count=#{count}&version=2018-03-05")
    request = Net::HTTP::Get.new(uri)
    request.basic_auth(@@watson_username, @@watson_password)
    request["Accept"] = "application/json"

    req_options = {
        use_ssl: uri.scheme == "https",
    }

    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(request)
    end

    response.body
  end

end