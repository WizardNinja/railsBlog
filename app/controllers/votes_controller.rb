class VotesController < ApplicationController

	def create
		# Vote.create(params)
		redirect_to posts_path
	end

end
