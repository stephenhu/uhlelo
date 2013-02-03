module Uhlelo 

  class Server

    get "/" do

      #b = Broker.new
      #return b.test
      g = GmailHelper.instance
      @link = g.establish_login
      haml :login
    end

    get "/oauth2callback" do

      puts "hello uhlelo #{params[:code]}"
      g = GmailHelper.instance
      token = g.get_token(params[:code])
      puts token.token
      puts token.refresh_token
      puts token.inspect

      imap = ImapHelper.new
      imap.xoauth_authenticate( "devops.test@gmail.com", token.token )

      puts imap.test

      #google = GoogleHelper.get_email(token.token)

    end

    get "/auth" do
      haml :auth
    end

  end

end

