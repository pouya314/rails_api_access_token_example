class SessionsController < ApplicationController
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      # render plain: "Login succeeded."
      user.api_key.destroy! if user.api_key.present?
      access_token = SecureRandom.hex
      ApiKey.create! user: user, access_token: access_token, expires_at: 2.minutes.from_now
      render plain: "access_token: #{access_token}"
    else
      render plain: "Login failed!"
    end
  end
end
