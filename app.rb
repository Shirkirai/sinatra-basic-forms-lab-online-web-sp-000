require_relative 'config/environment'
require_relative 'models/puppy'

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    get '/new' do
        erb :create_puppy
    end

    post '/puppy' do
        @puppy = Puppy.new(@name, @breed, @age)
        @puppy.name = params[:name]
        @puppy.name = params[:breed]
        @puppy.name = params[:age]
        erb :display_puppy
    end
end
