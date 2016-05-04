Trueoil::Application.routes.draw do
    
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  resources :users, only: [:index,:show] 
   
  get "dealer_prices/index"
  get "welcome/index"
 
   root 'welcome#index'
   resources :dealer_prices
   resources :subscriptions, only: [:new,:create]
   resources :contacts, only: [:new, :create]
   resources :dealers do
     resources :dealer_prices
   end
   get 'dealers/update_city_select/:state', :controller=>'dealers', :action => 'update_city_select', as: :cityselect
    get 'dealers/dealers/update_city_select/:state', :controller=>'dealers', :action => 'update_city_select', as: :selectcity
   post 'dealers/index', :controller=>'dealers', :action => 'index'
    post 'users/addcar/:id', :controller=>'users', :action => 'addcar'
   get 'users/users/getmodel/:makeid', :controller=>'users', :action=>'getmodel'
   get 'users/users/getyear/:modelid/:makeid', :controller=>'users', :action=>'getyear'
   get 'user/showservice/:id', :controller=> 'users',:action=>'showservice', as: :addservice
    post 'users/addservice/:id', :controller=>'users', :action => 'addservice'
     get 'user/showreminder/:id', :controller=> 'users',:action=>'showreminder', as: :addreminder
    post 'users/addreminder/:id', :controller=>'users', :action => 'addreminder'
 
end
