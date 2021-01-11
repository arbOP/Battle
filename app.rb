require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, "secret"

  get '/test' do
    'Testing infrastructure working!'
  end

  get '/' do
    erb(:index)
  end

  get '/play' do
    @name1 = session['name1']
    @name2 = session['name2']
    erb(:play)
  end

  post '/names' do
    session['name1'] = params[:Name1]
    session['name2'] = params[:Name2]
    redirect to('/play')
  end

  run! if app_file == $0
end
