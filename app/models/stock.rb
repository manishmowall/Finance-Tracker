class Stock < ApplicationRecord

    def self.new_lookup(ticker_symbol)
        client = IEX::Api::Client.new( publishable_token: Rails.application.credentials.iex_client[:sandbox_api_key],
            secret_token: 'Tsk_75927f783967423a9bcc3700fc4dc7d9',
            endpoint: 'https://sandbox.iexapis.com/v1' ) 
            client.price(ticker_symbol)
    end

end
