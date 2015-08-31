class WelcomeController < ApplicationController
	def index
		#render html: "<h1>Bienvenido</h1>".html_safe
		render 'welcome/index'
	end
end