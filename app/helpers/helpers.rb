class Helpers < ActiveRecord::Base

  attr_accessor :session

  def self.current_user(session)
    if self.is_logged_in?
      @user = User.find_by(session[:user_id].to_s)
    end
  end

  def self.is_logged_in?(session)

  end
end
