class App < Sinatra::Base
  register Sinatra::Reloader

  get '/' do
    'Hello World'
  end

end
