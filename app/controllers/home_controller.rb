class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_bbe95e67cb694c3a9c7e3cf55ef9f2e8')


    if params[:ticker] != nil
      @ticker = params[:ticker]
      @stock = StockQuote::Stock.quote(@ticker)
      debugger
    end
  end
end
