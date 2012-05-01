require 'sinatra/base'
require 'json'

class Server < Sinatra::Base

  get '/' do
    redirect '/apps'
  end

  get '/libs/:type/:libname' do
    send_file "#{settings.root}/../libs/#{params[:type]}/#{params[:libname]}"
  end

  get '/api/filesystem/file' do
    send_file params[:path] #, :type => :text
  end

  get '/api/filesystem/directory' do
    data = {}
    data[:path] = File.expand_path(params[:path]).sub("//","/").split("/")
    list = []
    Dir.new(params[:path]).each do |name|
      path = "#{params[:path]}/#{name}"
      f = false
      dir = false
      begin
        f = File.new(path)
      rescue
        puts "NOT FILE: #{path}}"
      end
      
      begin
        dir = Dir.new(path)
      rescue
      end
      
      if f
        entry[:size] = f.size
        entry[:access_time] = f.atime
        entry[:change_time] = f.ctime
        entry[:mime] = Rack::Mime.mime_type(File.extname(path))
      end
      if dir
        entry[:is_directory] = true
      end
      entry[:path] = File.expand_path(path)
      list << entry
    end
    data[:files] = list
    data.to_json
  end



  get '/:app_id' do
    @app_id = params[:app_id]
    @options = JSON.parse(File.read("#{settings.root}/../apps/#{@app_id}/options.json"))
    html = erb(:app_header)
    html += erb(:app_footer)
    return html
  end

  get '/:app_id/_index' do
    "aaa"
  end

  get '/:app_id/:name.:type' do
    @app_id = params[:app_id]
    file = false
    if File.exist?("#{settings.root}/../apps/#{@app_id}/#{params[:name]}.#{params[:type]}")
      file = "#{settings.root}/../apps/#{@app_id}/#{params[:name]}.#{params[:type]}"
    elsif File.exist?("#{settings.root}/../apps/#{@app_id}/#{params[:type]}/#{params[:name]}.#{params[:type]}")
      file =  "#{settings.root}/../apps/#{@app_id}/#{params[:type]}/#{params[:name]}.#{params[:type]}"
    elsif File.exist?("#{settings.root}/../libs/#{params[:type]}/#{params[:name]}.#{params[:type]}")
      file = "#{settings.root}/../libs/#{params[:type]}/#{params[:name]}.#{params[:type]}"
    else
      halt 404
    end

    if file =~ /.*\.coffee/
      text = ""
      File.new(file).each do |line|
        text += line + "\n"
      end
      coffee(text)
    else
      send_file file
    end

  end

end

#map('/'){ run Server }

class Api < Sinatra::Base

  get '/' do
    "api"
  end

end




