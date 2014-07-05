class Controller

  def initialize(env)
    @env = env
  end

  def request
    @request ||= Rack::Request.new(@env)
  end

  def params
    request.params
  end

  def render (action, params = {})
    View.render controller_name, action, params
  end

  def controller_name
    self.class.name.gsub("Controller", "").downcase
  end

  def default_action
    self.class.default_action
  end

  class << self

    attr_accessor :default_action

    def default_action(name = :index)
      @default_action = name
    end

  end

  def method_missing(name, *args)
    if default_action
      self.send(default_action, args)
    else
      super
    end
  end

end
