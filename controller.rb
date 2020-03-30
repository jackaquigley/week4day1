require ('sinatra')
require ('sinatra/contrib/all') if development?

require_relative('models/rockpaperscissors.rb')
also_reload('./models/*')

get '/rock/rock' do
  return "Draw."
end

get '/paper/paper' do
  return "Draw."
end

get '/scissors/scissors' do
  return "Draw."
end

get '/rock/paper' do
  @result = Game.check_winner("rock", "paper")
  erb(:result)
end

get '/rock/scissors' do
  return "Rock wins."
end

get '/paper/rock' do
  return "Paper wins."
end

get '/paper/scissors' do
  return "Scissors wins."
end

get '/scissors/rock' do
  return "Rock wins."
end

get '/scissors/paper' do
  return "Paper wins."
end
