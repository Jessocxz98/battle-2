require "sinatra"
require "sinatra/reloader" if development?

post "/cat-names" do
  p params
  @name = params[:name]
  erb :index
end

get "/" do
  "hello! we can reload"
end

get "/secret" do
  "expecting not to see this!!!!!"
end

get "/random-cat" do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

get "/cat-form" do
  erb :cat_form
end
