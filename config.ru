require 'sinatra'

class App < Sinatra::Base

  get '/hello' do
    '<h2>Hello <em>World</em>!</h2>'
  end

  get '/dice' do
    num = rand(1..6)
    {roll: num}.to_json
  end

  get '/add/:num1/:num2' do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i

    "#{num1} + #{num2} = #{num1 + num2}"
  end
  
end

run App
