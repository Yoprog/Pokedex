require 'sinatra'
require 'sinatra/activerecord'

set :database, 'sqlite3:///pokelist.db'

class Pokemon < ActiveRecord::Base
end

get '/' do
  @pokemons = Pokemon.all

  erb :index
end
