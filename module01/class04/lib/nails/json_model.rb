require 'json'
require 'open-uri'
require 'ostruct'

class JSONModel

  def self.all
    JSON.parse(open(@url).read).map {|item| OpenStruct.new(item) }
  end

  def self.from_url(url)
    @url = url 
  end

end