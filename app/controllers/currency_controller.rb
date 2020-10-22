class CurrencyController < ApplicationController

def stepone

  @working = params.fetch("currency")

  symbols_url = "https://api.exchangerate.host/symbols"
  @symbols = open(symbols_url).read
  @symbols = JSON.parse(@symbols)
  @currencies = @symbols.fetch("symbols")
  @currency_array = @currencies.keys

  render({ :template =>"currency/stepone.html.erb" })
end

def steptwo
  @currencyone = params.fetch("currencyone")
  @currencytwo = params.fetch("currencytwo")

  converter_url = "https://api.exchangerate.host/convert?from=" + @currencyone + "&to=" + @currencytwo
  @converted = open(converter_url).read
  @converted = JSON.parse(@converted)
  @query = @converted.fetch("result")

  render({ :template =>"currency/steptwo.html.erb" })
end


end