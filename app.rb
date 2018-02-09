require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @revername = params[:name].reverse
    erb :reversename
  end

  get '/square/:number' do
    @square = params[:number].to_i
    erb :square
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    erb :say
  end

  
    
end