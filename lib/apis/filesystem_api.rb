
require 'json'

class FileSystemAPI < Sinatra::Base

  get '/metadata' do
  	path = params[:path]
    ret = {}

  	if Dir.exist?(path)
      d = Dir.new(path)
      ret = FileSystem.dir_info(d)
  	elsif File.exist?(path)
      f = File.new(path)
      ret = FileSystem.file_info(f)
    else
      halt 404
    end
    ret.to_json
  end

  get '/file' do
    send_file params[:path]
  end

end


class FileSystem

  def self.dir_info(dir, list_files = "true")
    ret = {}
    ret[:name] = File.basename(dir.path)
    ret[:path] = dir.path
    ret[:absolute_path] = File.absolute_path(dir.path)
    ret[:is_dir] = true
    if list_files
      files = []
      dir.each do |name|
        begin
          f = File.new("#{dir.path}/#{name}")
          files << file_info(f)
        rescue
          #puts "error"
          #puts e
        end
      end
      ret[:contents] = files
    end
    ret
  end

  def self.file_info(file)
    if Dir.exist?(file.path)
      d = Dir.new(file.path)
      return dir_info(d, false)
    end
    ret = {}
    ret[:name] = File.basename(file.path)
    ret[:path] = file.path
    ret[:absolute_path] = File.absolute_path(file.path)
    ret[:is_dir] = false
    ret[:bytes] = file.size
    ret[:client_mtime] = file.mtime
    ret[:modified] = file.ctime
    ret[:mime_type] = Rack::Mime.mime_type("." + file.path.split('.').last)
    #ret[:binary] = File.binary?(ret[:absolute_path])
    ret
  end

end
