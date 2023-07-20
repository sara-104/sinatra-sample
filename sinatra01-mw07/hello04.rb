# erbでWebページを表示しよう
require 'sinatra'
# require 'sinatra/reloader'
require 'erb'

get '/' do
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
        <p>Hello erb!</p>
        <p>Hello paiza!</p>
    </body>
</html>