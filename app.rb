require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
  params[:name].reverse
end

  get '/square/:number' do
  (params[:number].to_i ** 2).to_s
end

 get '/say/:number/:phrase' do
   @phrase = params[:phrase] * params[:number].to_i
    "#{@phrase}"
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end

get '/:operation/:number1/:number2' do
if params[:operation] == add
  @sum = params[:number1].to_i + params[:number2].to_i
  @sum.to_s
  elsif params[:operation] == subtract
  @difference = params[:number1].to_i - params[:number2].to_i
  @difference.to_s
  elsif params[:operation] == product
   @product = params[:number1].to_i * params[:number2].to_i
  @product.to_s
else 
  params[:operation] == quotient
   @quotient= params[:number1].to_i / params[:number2].to_i
  @quotient.to_s
end


end