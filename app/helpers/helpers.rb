class Helpers < ActiveRecord::Base

  def self.current_user(session)
    binding.pry
    if self.is_logged_in?
      @user = User.find_by(session[:user_id].to_s)
    end
  end

  def self.is_logged_in?(session)

  end
end
