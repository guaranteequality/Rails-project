class JobdetailController < ApplicationController
	def aboutjob
		@title = params[:param1]
		@location = params[:param2]
	end
end
