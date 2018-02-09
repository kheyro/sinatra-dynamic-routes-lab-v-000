require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reverse = params[:name].reverse!
    erb :reversename
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    erb :square
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    erb :say
  end

  get '/:operation/:number1/:number2' do

    n1, n2 = params[:number1].to_i, params[:number2].to_i

    case params[:operation]
    when "adds"
      @total = n1 + n2
    when "substracts"
      @total = n2 - n1
    when "multiplies"
      @total = n1 * n2
    when "divides"
      @total = n1 / n2
    end

    erb :index
  end

end
