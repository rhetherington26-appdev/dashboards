Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get("/", { :controller => "application", :action => "homepage"})

  get("/forex", { :controller => "application", :action => "forex_homepage"})

  get("/forex/:currency", { :controller => "currency", :action => "stepone"})

   get("/forex/:currencyone/:currencytwo", { :controller => "currency", :action => "steptwo"})

  get("/covid", { :controller => "application", :action => "covid_homepage"})


end
