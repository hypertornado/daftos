require 'sinatra/base'


class Server < Sinatra::Base
  get '/' do
    settings.root
  end

  get '/:app_name' do
    params[:app_name]
    erb :app_template
  end
end