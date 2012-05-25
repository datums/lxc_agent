#!/usr/local/ruby
require 'rubygems'
require 'sinatra'

#http://lxc.sourceforge.net/man/lxc.html


get '/status' do
  "Get system information (status dash)"
end



post '/command/:command' do
  "execute the following commad"
end


#lxc-create -n foo
post '/command/create/:name' do
  "create container named #{params[:name]}"
  `ls`
end

#lxc-destroy -n foo
post '/command/destroy/:name' do
  "destroy container named #{params[:name]}"
end

#lxc-start -n foo /bin/bash
post '/command/start/:name' do
  "start container named #{params[:name]}"
end

#lxc-stop -n foo
post '/command/stop/:name' do
  "stop container named #{params[:name]}"
end

#lxc-freeze -n foo
post '/command/freeze/:name' do
  "freeze container named #{params[:name]}"
end

#lxc-unfreeze -n foo
post '/command/unfreeze/:name' do
  "unfreeze container named #{params[:name]}"
end

#lxc-ls
post '/command/unfreeze/:name' do
  "ls container named #{params[:name]}"
end

#lxc-info -n foo
post '/command/unfreeze/:name' do
  "provide info on container named #{params[:name]}"
end





