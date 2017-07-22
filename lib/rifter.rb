require 'rifter/version'
require 'discordrb'

# The rifter discord bot
module Rifter
  LOGGER = Discordrb::Logger.new(nil, [STDOUT])

  at_exit do
    LOGGER.info('[Exiting] Docking request accepted!')
    exit!
  end

  def self.launch(token, id)
    bot = Discordrb::Bot.new token: token, client_id: id

    bot.message(with_text: 'Ping!') do |event|
      event.respond 'Pong!'
    end

    LOGGER.info('Launching rifter...')
    bot.run
  end
end
