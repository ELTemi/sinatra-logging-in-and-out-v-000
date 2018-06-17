require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
    @user = User.find_by(username: params["username"])
    User.all.each do |user|
      if user.id == @user.id && user.username == @user.username
        session[:user_id] = @user.# IDEA:
        redirect '/account'
      elsif user.id != @user.id && user.username != @user.username
        redirect '/error'
      end
    end
  end

  get '/account' do
    erb :account
  end

  get '/logout' do

  end


end
