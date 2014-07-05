class FacebookController < Controller
  def index(args = {})
    render "index", name: "Alvaro"
  end

  def new(args = {})
    render "index", name: "Alvaro"
  end

  def method_missing(name, *args)
    index(args)
  end

end