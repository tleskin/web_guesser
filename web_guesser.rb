require 'sinatra'
require 'sinatra/reloader'

SECRET_NUMBER = rand(100)

get '/' do
  guess = params["guess"]
  message = check_guess(guess)
  erb :index, :locals => {:number => SECRET_NUMBER, :message => message}
end

def check_guess(guess)
  difference = (SECRET_NUMBER - guess.to_i).abs
  if guess == nil
    ""
  elsif guess.to_i > SECRET_NUMBER
    difference > 5 ? "Way too high!": "Too high!"
  elsif guess.to_i < SECRET_NUMBER
    difference > 5 ? "Way too low!": "Too low!"
  else
    "You win!\n
    The SECRET NUMBER is #{SECRET_NUMBER}!"
  end
end
