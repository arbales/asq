Bundler.require

get '/' do
  haml :index
end

get '/application.js' do
  coffee :application
end