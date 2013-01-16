module Uhlelo 

  class Server

    get "/" do

      b = Broker.new
      return b.test

    end

  end

end

