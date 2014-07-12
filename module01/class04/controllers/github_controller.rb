# require 'activerecord'

# ActiveRecord.establish_connection(username: "", password: "")

# class Product < ActiveRecord::Base
# end

# Product.create

class GithubController < Controller
  def index( args = {} )
    if params["age"].to_i > 18
      render "index", params: params, repositories: []
    else
      render "menor_de_edad"
    end
  end
end