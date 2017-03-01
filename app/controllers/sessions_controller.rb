class SessionsController < ApplicationController
	def index
	end
	def home
		session[:over] = true
	end
	def about
	end
	def contact
	end
	def no
	end
end
