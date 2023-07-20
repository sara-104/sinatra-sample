# erbの色々な使い方を試す
require 'sinatra'
# require 'sinatra/reloader'
require 'erb'

get '/' do
    @name = "Sinatra"
    @now = Time.now
    @player = ["勇者", "戦士", "魔法使い"]
    erb :index
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
        <h1>戦闘シーン</h1>
        <p>Hello <%= @name %></p>
        <p>Hello <%= @now %></p>
        <% @player.each do |person| %>
            <p><%= "#{person}は、モンスターと戦った。" %></p>
        <% end %>
    </body>
</html>