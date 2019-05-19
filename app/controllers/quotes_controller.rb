class QuotesController < ApplicationController
	def index
		@quote = Quote.order("RANDOM()").first
	end

	def new
		@quote = Quote.new
	end

	def create
		@quote = Quote.create(quote_params)
		
		if @quote.invalid?
    		flash[:error] = 'Could not save: the data you entered is invalid.'
    	else
    		flash[:success] = 'Quote saved.'
		end

		redirect_to new_quote_url
	end

	private
	

	def quote_params
		params.require(:quote).permit(:saying, :author)
	end
end
