# 見た目とロジックを分離する
require 'sinatra'
require 'sinatra/reloader'
require 'erb'

# メニュー
get '/' do
    @player = '勇者'
    erb :index
end

# あるく
get '/walk' do
    @player = '勇者'
    @message = "#{@player}は、荒野を歩いていた。"
    erb :action
end

# たたかう
get '/attack' do
    @player = '勇者'
    @message = "#{@player}は、モンスターと戦った。"
    erb :action
end