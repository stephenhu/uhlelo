module Uhlelo

  class ImapHelper

    attr_accessor :imap, :email

    def initialize

      @imap = Net::IMAP.new( GMAIL_IMAP, GMAIL_IMAP_PORT, usessl = true,
        certs = nil, verify = false )

    end

    def xoauth_authenticate( email, token )

      @imap.authenticate( XOAUTH2, email, token )

    end

    def test
      return @imap.status( INBOX, [MESSAGES] )[MESSAGES]
    end

  end

end
