module Uhlelo 

  class Broker

    def initialize

      @login    = ENV["UHLELO_LOGIN"]
      @password = ENV["UHLELO_PASSWORD"]

      @gmail = Gmail.new( @login, @password )
      @inbox = @gmail.mailbox("inbox")

    end

    def test

      unread = @inbox.emails(:unread)
      return unread[-1].message
      #puts unread[-1].inspect
    end

  end

end

