require 'sinatra'

get '/' do
  unless params[:counter]
    @count = 0
  else
    @count = params[:counter].to_i
    @count += 1
  end
  erb :index
end
