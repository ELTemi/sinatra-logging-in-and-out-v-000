class Helpers < ActiveRecord::Base

  attr_accessor :session

  def self.current_user(session)
      @user = User.find_by(session[:user_id].to_s)
      @user
  end

  def self.is_logged_in?(session)
    !!session[:user_id]
  end
end
