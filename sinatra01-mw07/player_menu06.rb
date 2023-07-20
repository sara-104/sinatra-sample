# RPGの行動選択メニューを作る
require 'sinatra'
require 'sinatra/reloader'
require 'erb'

# メニュー, /, メニューを表示
get '/' do
    @player = '勇者'
    erb :index
end

# あるく, /walk, 荒野を歩いていた。
get '/walk' do
    @player = '勇者'
    @message = "#{@player}は、荒野を歩いていた。"
    erb :action
end

# たたかう, /attack, モンスターと戦った。
get '/attack' do
    @player = '勇者'
    @message = "#{@player}は、モンスターと戦った。"
    erb :action
end


__END__
@@index
<!DOCTYPE html>
<html lang="ja">
    <head>
        <mata charset="utf-8">
        <title>Sinatra - paiza</title>
        <style>body {padding: 30px;}</style>
    </head>
    <body>
        <h1><%= @player %>のメニュー</h1>
        <p><a href="/walk">あるく</a></p>
        <p><a href="/attack">たたかう</a></p>
        <p><a href="/talk">はなす</a></p>
    </body>
</html>

@@action
<!DOCTYPE html>
<html lang="ja">
    <head>
        <mata charset="utf-8">
        <title>Sinatra - paiza</title>
        <style>body {padding: 30px;}</style>
    </head>
    <body>
        <h1><%= @player %>のアクション</h1>
        <p><%= @message %></p>
        <p><a href="/">メニューに戻る</a></p>
    </body>
</html>