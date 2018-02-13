require_relative 'config/environment'

class App < Sinatra::Base


  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    "#{params[:phrase]} " * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params.values.join(' ')}."
  end

  get '/:operation/:number1/:number2' do
    # @op = params[:operation]
    num1, num2 = params.values.slice(1,2).to_i
    binding.pry
    case params[:operation]
    when 'add'
      "#{num1.to_i + num2.to_i}"
    when 'subtract'
      "#{num1.to_i - num2.to_i}"
    when 'multiply'
      "#{num1.to_i * num2.to_i}"
    when 'divide'
      "#{num1.to_i / num2.to_i}"
    end
  end

end
