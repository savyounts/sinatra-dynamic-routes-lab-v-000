require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number * @number
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
      "#{@phrase} " * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = params.values.join
    "#{@string}"
  end

end
