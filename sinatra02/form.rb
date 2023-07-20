# 投稿フォームを作る
require 'sinatra'
require 'sinatra/reloader'
require 'erb'

get '/' do
    erb :form
end