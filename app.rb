class App < Sinatra::Base
  register Sinatra::Reloader

  get '/' do
    erb :index
  end

end
