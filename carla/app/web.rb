$: << "lib"

require 'sinatra'
require 'erb'
require 'application'
require 'picture'
require 'square'

get '/' do
	"
	<form method='post'>
		<textarea name='input'></textarea>
		<input type='submit' />
	</form>	
	"
end

post '/' do
	app = Application.new params[:input]
	app.render
end




