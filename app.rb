require 'sinatra'
require 'sinatra/reloader'
require 'erb'

get '/' do
	erb :index
end

get '/index' do
	erb :index
end

get '/profile' do
	erb :profile
end

get '/app' do
	erb :app
end

post '/confirm1' do
	@ge = params[:ge1]
	@bo = params[:bo1]
	@ri = params[:ri1]
	@tukiri = (@ri.to_f*0.01)/12
	@ka = params[:ka1]
	@katuki = @ka.to_f * 12
	@kekka = (@ge.to_f*10000 + (@bo.to_f*10000/6))/(( @tukiri *((@tukiri+1) ** @katuki ))/(((@tukiri+1) ** @katuki)-1)) 
	@result = @kekka.to_i
	@result1 = (@result/1000000).floor
	@result2b = (@result/1000).floor
	@result2 = @result2b.to_s[-3..-1]
	@result3 = @result.to_s[-3..-1]
	erb :app1
end

post '/confirm2' do
	@so = params[:so2]
	@bo = params[:bo2]
	@ri = params[:ri2]
	@tukiri = (@ri.to_f*0.01)/12
	@ka = params[:ka2]
	@katuki = @ka.to_f * 12
	@kekka = @so.to_f*10000 * (( @tukiri *((@tukiri+1) ** @katuki ))/(((@tukiri+1) ** @katuki)-1)) - @bo.to_f*10000/6
	@result = @kekka.to_i
	@result1 = (@result/1000).floor
	@result2 = @result.to_s[-3..-1]
	erb :app2
end

post '/confirm3' do
	@te = params[:te3]
	@ot = params[:ot3]
	@ko = params[:ko3]
	@result = 
	erb :app3
end

get '/cont' do
	erb :cont
end

get '/blog' do
	erb :blog
end