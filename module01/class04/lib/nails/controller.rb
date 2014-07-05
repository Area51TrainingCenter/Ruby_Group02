class Controller
  def render (action, params = {})
    controller_name = self.class.name.gsub("Controller", "").downcase
    View.render controller_name, action, params
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
