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
	def mail
		UserMailer.email(params['first'], params['last'], params['email'], params['subject'], params['message']).deliver_now
		respond_to do |format|
		format.html { render json: params['email'], status: :created}
		format.json { render json: params['email'], status: :created}
		format.js { render json: params['email'], status: :created}
		end
	end
end
