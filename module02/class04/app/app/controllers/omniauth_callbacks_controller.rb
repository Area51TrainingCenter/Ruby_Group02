class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def auth    # {provider: xxxx, uid: dddd}
    


    auth = request.env["omniauth.auth"]
    token = auth.credentials.token

    Pusher.url = "http://a79eba807d6c1ad89547:de82306e1ff3cf84db08@api.pusherapp.com/apps/84827"
    
    Pusher['app'].trigger('message:sent', {
      email: auth.info.email
    })

    cookies[:prueba] = "asdfdas"

    ENV["name"]




    #@graph = Koala::Facebook::API.new(token)

    params = auth.slice(:provider, :uid)
    @user = User.find_or_create_by(params) do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
    end
    if @user.persisted?
      sign_in_and_redirect @user
    else
      redirect_to root_path
    end
  end

  def twitter
    auth
  end

  def facebook
    auth
  end

  def github
    auth
  end

  def foursquare
    auth
  end

end