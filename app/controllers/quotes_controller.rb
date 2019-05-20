class QuotesController < ApplicationController
	def index
		@quote = Quote.order("RANDOM()").first
	end

	def create
		@quote = Quote.create(quote_params)
		
		if @quote.invalid?
    		flash[:error] = 'Could not save: the data you entered is invalid.'
    	else
    		flash[:success] = 'Quote saved.'
		end

		redirect_to request.referrer
	end

	def about
	end

	def all
		@all = Quote.all
	end

	def destroy
		id = params[:id]

		if  Quote.exists?(id)
			Quote.destroy(id)
			flash[:success] = "Quote #{id} deleted."
		else
			flash[:error] = "Quote #{id} does not exist."
		end

		redirect_to request.referrer
	end

	private
	

	def quote_params
		params.require(:quote).permit(:saying, :author, :youtube_id)
	end
end
