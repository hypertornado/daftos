require 'sinatra/base'


class Server < Sinatra::Base
	get '/' do
		"hi"
	end

	get '/quit' do
		quit(0)
	end
end