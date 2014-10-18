class App < Sinatra::Base
  register Sinatra::Reloader

  get '/' do
    @year = 2014
    curdir = File.dirname(__FILE__)
    dbfile = curdir + '/db/list.txt'
    @lines = File.read(dbfile).split(/\n/)
    erb :index
  end

end
