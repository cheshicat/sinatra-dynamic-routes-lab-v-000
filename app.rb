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
    @number = params[:number].to_i
    @phrase = params[:phrase]
    until @phrase.count == @number
      "#{@phrase}"
    end
  end

end
