require 'open-uri'

class TwitterController < Controller

  def index(args = {})
    results = open("http://worldcup.sfg.io/matches/country?fifa_code=CHI").read
    matches = JSON.parse(results)
    render "index", matches: matches
  end

end


