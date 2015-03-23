require 'sinatra'
require 'sinatra/reloader'

X = rand(100)

get '/' do
  "The SECRET NUMBER is #{X}"
end
