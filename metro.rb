# coding: utf-8
require 'sinatra'

class Metro < Sinatra::Base

  get '*/css/:name.css' do
    content_type 'text/css', :charset => 'utf-8'
    scss(:"/css/#{params[:name]}")
  end

  get '/' do
    haml :index
  end

  get '/search' do
    haml :search
  end

  get '/salles' do
    haml :salles
  end

  get '/about' do
    haml :about
  end

  get '/recepies' do
    haml :recepies
  end

end

