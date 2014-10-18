class App < Sinatra::Base
  register Sinatra::Reloader

  get '/' do
    @year = 2014
    curdir = File.dirname(__FILE__)
    @lines = File.read(curdir + '/db/list.txt').split(/\n/)
    erb :index
  end

end
