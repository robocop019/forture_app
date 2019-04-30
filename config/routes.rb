Rails.application.routes.draw do
  get "/random_fortune" => 'api/fortunes#rand_fortune'
  get "/lottery" => 'api/fortunes#lottery'
  get "/visits" => 'api/fortunes#visits'
  get "/99bottles" => 'api/fortunes#bottles'
end
