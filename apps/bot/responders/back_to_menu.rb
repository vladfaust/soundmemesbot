module Apps; module Bot
  module Responders
    class BackToMenu
      include Shared

      def initialize(user: nil)
        @user = user
      end

      def respond!
        bot.api.send_message(
          chat_id: @user.id,
          text: "Got you back to the main menu.",
          parse_mode: 'Markdown',
          reply_markup: Keyboards::MainMenu.new.markup,
        )
      end
    end
  end
end; end
