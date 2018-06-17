class Helpers < ActiveRecord::Base

  def self.current_user(session)
    binding.pry
    self.is_logged_in?
      @user = User.create(username: username)
  end

  def self.is_logged_in?(session)

  end
end
