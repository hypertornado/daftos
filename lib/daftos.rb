require_relative 'daftos/server.rb'


class Daftos

  def self.start()
    fork do
      Dir.chdir(Dir.home)
      Dir.mkdir('.daftos') unless Dir.exist?('.daftos')
      File.open('.daftos/server.pid', 'w') {|f| f.write Process.pid }
      Server.port = 4343
      Server.run!
    end
  end

  def self.stop
    Dir.chdir(Dir.home)
    Process.kill 'TERM', File.read('.daftos/server.pid').to_i
  end

end
