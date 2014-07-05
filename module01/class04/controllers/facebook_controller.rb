class FacebookController < Controller

  default_action :index

  def index(args = {})
    render "index", name: "Alvaro"
  end

  def new(args = {})
    render "index", name: "Alvaro"
  end

end