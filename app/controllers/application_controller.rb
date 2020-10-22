class ApplicationController < ActionController::Base

  def homepage
    render({  :template =>"homepage/homepage.html.erb"})
  end

  def forex_homepage
    symbols_url = "https://api.exchangerate.host/symbols"
    @symbols = open(symbols_url).read
    @symbols = JSON.parse(@symbols)
    @currencies = @symbols.fetch("symbols")
    @currency_array = @currencies.keys


    render({  :template =>"homepage/forex_homepage.html.erb"})
  end

  def covid_homepage
    render({  :template =>"homepage/covid_homepage.html.erb"})
  end



end
