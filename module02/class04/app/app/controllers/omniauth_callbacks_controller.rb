class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def auth    # {provider: xxxx, uid: dddd}
    auth = request.env["omniauth.auth"]
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