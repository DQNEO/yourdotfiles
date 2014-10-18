class App < Sinatra::Base
  register Sinatra::Reloader

  get '/' do
    @year = 2014
    erb :index
  end

end
