class PostresumeController < ApplicationController
	def createaccount
		@newaccout = PostaResume.new
	end
	def create
		uploaded_io1 = params[:photo]
		if uploaded_io1
			File.open(Rails.root.join('public', 'upload-resumephoto', uploaded_io1.original_filename), 'wb') do |file|
				file.write(uploaded_io1.read)
			end
		end
		uploaded_io2 = params[:resumepicture]
		if uploaded_io2
			File.open(Rails.root.join('public', 'upload-postresumepicture', uploaded_io2.original_filename), 'wb') do |file|
				file.write(uploaded_io2.read)
			end
		end
		@newaccout = PostaResume.new
		@newaccout[:yourname] = params[:newaccout][:yourname]
		@newaccout[:youremail] = params[:newaccout][:youremail]
		@newaccout[:professionalauto] = params[:newaccout][:professionalauto]
		@newaccout[:location] = params[:newaccout][:location]
		if uploaded_io1
			@newaccout[:photoname] = uploaded_io1.original_filename
		end
		@newaccout[:resumecategory] = params[:newaccout][:resumecategory]
		@newaccout[:resumecontent] = params[:newaccout][:resumecontent]
		@newaccout[:skills] = params[:newaccout][:skills]
		@newaccout[:url] = params[:newaccout][:url]
		@newaccout[:education] = params[:newaccout][:education]
		@newaccout[:experience] = params[:newaccout][:experience]
		if uploaded_io2
			@newaccout[:resumefilename] = uploaded_io2.original_filename
		end

		if @newaccout.save
			redirect_to main_path(1)
		else
			redirect_to @newaccout
		end
	end
	def show

	end
end
