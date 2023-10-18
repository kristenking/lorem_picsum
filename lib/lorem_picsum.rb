require 'net/http'
require 'json'
require 'uri'

module LoremPicsum
  BASE_URL = 'https://picsum.photos'.freeze

  def self.random_image(width:, height: nil, options: {})
    uri = URI(BASE_URL)
    uri.path = height ? "/#{width}/#{height}" : "/#{width}"
    uri.query = URI.encode_www_form(options)
    uri.to_s
  end

  def self.specific_image(id:, width:, height: nil, options: {})
    uri = URI(BASE_URL)
    uri.path = height ? "/id/#{id}/#{width}/#{height}" : "/id/#{id}/#{width}"
    uri.query = URI.encode_www_form(options)
    Net::HTTP.get(uri)
  end

  def self.static_random_image(seed:, width:, height: nil, options: {})
    uri = URI(BASE_URL)
    uri.path = height ? "/seed/#{seed}/#{width}/#{height}" : "/seed/#{seed}/#{width}"
    uri.query = URI.encode_www_form(options)
    Net::HTTP.get(uri)
  end

  def self.list_images(page: 1, limit: 30)
    uri = URI(BASE_URL)
    uri.path = '/v2/list'
    uri.query = URI.encode_www_form(page: page, limit: limit)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end

  def self.image_details(id: nil, seed: nil)
    uri = URI(BASE_URL)
    if id
      uri.path = "/id/#{id}/info"
    elsif seed
      uri.path = "/seed/#{seed}/info"
    end
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end
end
