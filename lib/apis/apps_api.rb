require 'json'

class AppsAPI < Sinatra::Base

  get '/list' do
    list = Dir.new(File.dirname(__FILE__) + "/../apps").entries
    list = list.find_all{|item| item =~ /^[a-z]+$/}
    list = list.map do |item|
      json = JSON.parse(File.read(File.dirname(__FILE__) + "/../apps/#{item}/options.json"))
      {
        path: item,
        name: json['name']
      }
    end
    list.to_json
  end

end