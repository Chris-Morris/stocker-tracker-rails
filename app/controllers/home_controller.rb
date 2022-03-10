class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_bbe95e67cb694c3a9c7e3cf55ef9f2e8')


    if params[:ticker] != nil
      @ticker = params[:ticker]
      begin
        @stock = StockQuote::Stock.quote(@ticker)
      rescue => exception
        @failed_to_fetch = "Ticker symbol doesn't exist"
      end
    elsif
      @nothing = "Hey, you forgot to enter a symbol"
    end
  end
end
