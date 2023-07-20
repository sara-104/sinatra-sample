# ルーティングを理解する
require 'sinatra'
# require 'sinatra/reloader'

get '/' do
    'Hello Sinatra!'
end

get '/about' do
    'This is paiza'
end