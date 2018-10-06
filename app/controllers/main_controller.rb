class MainController < ApplicationController
	def searchengin
		@search = PostAjob.new
		@search = PostAjob.find_by(jobtitle: params[:searchkey][:jobtitle])
		if @search[:joblocation] == params[:searchkey][:joblocation]
			redirect_to search_path(param1: @search[:jobtitle], param2: @search[:joblocation])
		end
	end
	def show
		@searchkey = PostAjob.new
		@projects = PostAjob.all
		@projects_full_time = PostAjob.where(jobtype: "Full-Time").all
		@projects_part_time = PostAjob.where(jobtype: "Part-Time").all
	end
end
