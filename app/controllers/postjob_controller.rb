class PostjobController < ApplicationController
	def createjob
		@newjob = PostAjob.new
	end
	def create
		uploaded_io = params[:picture]
		if uploaded_io
			File.open(Rails.root.join('public', 'uploads-postajob', uploaded_io.original_filename), 'wb') do |file|
				file.write(uploaded_io.read)
			end
		end
		@newjob = PostAjob.new
		@newjob[:youremail] = params[:newjob][:youremail]
		@newjob[:jobtitle] = params[:newjob][:jobtitle]
		@newjob[:joblocation] = params[:newjob][:joblocation]
		@newjob[:jobregion] = params[:newjob][:jobregion]
		@newjob[:jobtype] = params[:newjob][:jobtype]
		@newjob[:jobcategory] = params[:newjob][:jobcategory]
		@newjob[:jobtags] = params[:newjob][:jobtags]
		@newjob[:description] = params[:newjob][:description]
		@newjob[:applicationemailurl] = params[:newjob][:applicationemailurl]
		@newjob[:closingdata] = params[:newjob][:closingdata]
		@newjob[:companyname] = params[:newjob][:companyname]
		@newjob[:companydescription] = params[:newjob][:companydescription]
		@newjob[:twittername] = params[:newjob][:twittername]
		@newjob[:website] = params[:newjob][:website]
		@newjob[:googleusername] = params[:newjob][:googleusername]
		@newjob[:facebookusername] = params[:newjob][:facebookusername]
		@newjob[:linkedinusername] = params[:newjob][:linkedinusername]
		if uploaded_io
			@newjob[:imagename] = uploaded_io.original_filename
		end
		if @newjob.save
			redirect_to main_path(1)
		else
			redirect_to @newjob
		end
	end
	def edit
		@project = PostAjob.find(params[:id])
	end
	def show
		@index = params[:id]
	end
end
