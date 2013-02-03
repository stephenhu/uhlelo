module Uhlelo

  module GoogleHelper

    def self.get_email(token)

      response = RestClient.get(GOOGLE_EMAIL)
      puts response

    end

  end

end

