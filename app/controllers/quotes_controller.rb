class QuotesController < ApplicationController
	def index
		@quote = Quote.order("RANDOM()").first
	end

	def new
		@success = params[:success]
		@quote = Quote.new
	end

	def create
		Quote.create(quote_params)
		redirect_to new_quote_url(:success => 'true')
	end

	private
	

	def quote_params
		params.require(:quote).permit(:saying, :author)
	end
end
