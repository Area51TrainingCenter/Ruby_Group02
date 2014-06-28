class Controller
  def render (action, params = {})
    controller_name = self.class.name.gsub("Controller", "").downcase
    View.render controller_name, action, params
  end
end
