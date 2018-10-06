Rails.application.routes.draw do
	root 'main#show'
	get "signup" => "signup#new"
	get "home" => "main#index"
	get "headerlogin" => "sessions#new"
	get "logsign" => "sessions#new"
	get "jobdetails" => "jobdetail#aboutjob"
	get "reg-log" => "sessions#new"
	get "log-reg" => "signup#new"
	get "pic-main" => "main#index"
	get "search" => "jobdetail#aboutjob"
	post "gosearch" => "main#searchengin"
	post "signup" => "signup#signup"
	post "login" => "sessions#create"
	resources :main
	resources :postjob
	resources :postresume
end
