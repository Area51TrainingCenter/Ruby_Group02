require 'json'
require 'open-uri'
require 'ostruct'

class JSONModel

  class << self

    attr_accessor :source

    def get_from_json(url)
      @source = url
    end

    def all
      JSON.parse(open(@source).read).map{|item| OpenStruct.new(item) }
    end

  end


end
