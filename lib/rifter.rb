require 'rifter/version'
require 'discordrb'

module Rifter
  LOGGER = Discordrb::Logger.new(nil, [STDOUT])

  at_exit do
    LOGGER.info("Exiting!")
    exit!
  end

  def self.start
    bot = Discordrb::Bot.new token: ENV['DISCORD_TOKEN'], client_id: ENV['DISCORD_CLIENT_ID']

    bot.message(with_text: 'Ping!') do |event|
      event.respond 'Pong!'
    end

    bot.run
  end
end
