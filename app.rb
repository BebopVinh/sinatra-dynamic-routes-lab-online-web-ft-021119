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
    phrase = params[:phrase]
    x = params[:number].to_i
    array = []
    x.times {array << phrase}
    array.join(" ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.values.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    num1, num2 = params[:number1].to_i, params[:number2].to_i
    answer = nil
    case params[:operation]
    when 'add'
      answer = num1 + num2
    when 'subtract'
      answer = num1 - num2
    when 'multiply'
      answer = num1 * num2
    when 'divide'
      answer = num1 / num2
    end
    answer.to_s
  end
end
