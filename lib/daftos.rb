
require 'ptools'
require_relative 'daftos/server.rb'
require_relative 'apis/filesystem_api.rb'
require_relative 'apis/apps_api.rb'


class Daftos

  def self.start()
    fork do
      Dir.chdir(Dir.home)
      Dir.mkdir('.daftos') unless Dir.exist?('.daftos')
      File.open('.daftos/server.pid', 'w') {|f| f.write Process.pid }
      
      builder = Rack::Builder.new do
        map('/api/file_system'){ run FileSystemAPI }
        map('/api/apps'){ run AppsAPI }
        map('/'){ run Server }
      end
      Rack::Handler::Thin.run builder, :Port => 9999, :Host => "0.0.0.0"

    end
  end

  def self.stop
    Dir.chdir(Dir.home)
    Process.kill 'TERM', File.read('.daftos/server.pid').to_i
  end

end


