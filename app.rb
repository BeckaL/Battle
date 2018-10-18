require 'sinatra/base'

class Battle < Sinatra::Base

  get "/" do
    "Infrastructure working"
  end

  get "/Becka" do
    "Hi Becka"
  end

  get "/names" do
    erb(:index)
  end

  # post "/names" do
  #
  # end

  run! if app_file == $0

end
