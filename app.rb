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
    ans = ''

    params[:number].to_i.times do
      ans += params[:phrase]
    end

    ans
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    ans = 'Unable to perform this operation'

    case params[:operation]
    when 'add'
      ans = (number1 + number2).to_s
    when 'subtract'
      ans = (number1 - number2).to_s
    when 'multiply'
      ans = (number1 * number2).to_s
    when 'divide'
      ans = (number1 / number2).to_s
    end
  end
end