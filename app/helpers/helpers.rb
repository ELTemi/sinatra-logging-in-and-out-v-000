class Helpers < ActiveRecord::Base

  def self.current_user(session)
    binding.pry
    self.is_logged_in?
      @user = User.new
  end

  def self.is_logged_in?(session)

  end
end
