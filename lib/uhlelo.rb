require "base64"
require "haml"
require "oauth2"
require "rest-client"
require "sinatra"
require "singleton"
require "thin"
require "yaml"

require File.join( File.dirname(__FILE__), "uhlelo", "broker" )
require File.join( File.dirname(__FILE__), "uhlelo", "gmail_helper" )
require File.join( File.dirname(__FILE__), "uhlelo", "google_helper" )
require File.join( File.dirname(__FILE__), "uhlelo", "imap_helper" )
require File.join( File.dirname(__FILE__), "uhlelo", "server" )
require File.join( File.dirname(__FILE__), "uhlelo", "version" )

module Uhlelo

  configure do
    set :views,		File.join( Sinatra::Application.root, "views" )
  end

  SCOPE           = "https://mail.google.com https://www.googleapis.com/auth/userinfo.profile"
  AUTH_ENDPOINT   = "https://accounts.google.com"
  AUTH_RESOURCE   = "/o/oauth2/auth"
  TOKEN_RESOURCE  = "/o/oauth2/token"
  REDIRECT_URI    = "http://localhost:4567/oauth2callback"
  XOAUTH2         = "XOAUTH2"
  GMAIL_IMAP      = "imap.gmail.com"
  GMAIL_IMAP_PORT = 993
  GOOGLE_EMAIL    = "https://www.googleapis.com/oauth2/v2/userinfo"
  INBOX           = "INBOX"
  MESSAGES        = "MESSAGES"

end

