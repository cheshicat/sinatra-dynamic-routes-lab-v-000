require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    repeat = " "
    (params[:number].to_i).times do
      repeat += "#{params[:phrase]}"
    end
    repeat
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} "+"#{params[:word2]} "+"#{params[:word3]} "+"#{params[:word4]} "+"#{params[:word5]}."
  end

end
