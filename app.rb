require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "Maria is going to be the best coder ever in the world"
end

get '/secret' do
  "Actually steve is the best coder ever"
end

get '/test' do
  "this is a test"
end

get '/test2' do
  "quadruple check"
end

get '/shotgun' do
  "Shotgun works :)"
end

get '/random_cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/cat-form' do
  erb :cat_form
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
