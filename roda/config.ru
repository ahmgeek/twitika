dev = ENV['RACK_ENV'] == 'development'

if dev
  require 'logger'

  file = File.new("./log/development.log", 'a+')
  logger = Logger.new(file)

  file.sync = true
  use Rack::CommonLogger, file
end


require 'rack/unreloader'
Unreloader = Rack::Unreloader.new(
  subclasses: %w(Roda Twitika),
  logger: logger,
  reload: dev) { Twitika }

Unreloader.require('app/twitika.rb'){ 'Twitika' }

run(dev ? Unreloader : Twitika.freeze.app)
