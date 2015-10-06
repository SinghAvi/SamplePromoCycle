# == Route Map
#
#                   Prefix Verb       URI Pattern                         Controller#Action
#         new_user_session GET        /admin/login(.:format)              active_admin/devise/sessions#new
#             user_session POST       /admin/login(.:format)              active_admin/devise/sessions#create
#     destroy_user_session DELETE|GET /admin/logout(.:format)             active_admin/devise/sessions#destroy
#            user_password POST       /admin/password(.:format)           active_admin/devise/passwords#create
#        new_user_password GET        /admin/password/new(.:format)       active_admin/devise/passwords#new
#       edit_user_password GET        /admin/password/edit(.:format)      active_admin/devise/passwords#edit
#                          PATCH      /admin/password(.:format)           active_admin/devise/passwords#update
#                          PUT        /admin/password(.:format)           active_admin/devise/passwords#update
#               admin_root GET        /admin(.:format)                    admin/dashboard#index
#          admin_dashboard GET        /admin/dashboard(.:format)          admin/dashboard#index
# batch_action_admin_users POST       /admin/users/batch_action(.:format) admin/users#batch_action
#              admin_users GET        /admin/users(.:format)              admin/users#index
#                          POST       /admin/users(.:format)              admin/users#create
#           new_admin_user GET        /admin/users/new(.:format)          admin/users#new
#          edit_admin_user GET        /admin/users/:id/edit(.:format)     admin/users#edit
#               admin_user GET        /admin/users/:id(.:format)          admin/users#show
#                          PATCH      /admin/users/:id(.:format)          admin/users#update
#                          PUT        /admin/users/:id(.:format)          admin/users#update
#                          DELETE     /admin/users/:id(.:format)          admin/users#destroy
#           admin_comments GET        /admin/comments(.:format)           admin/comments#index
#                          POST       /admin/comments(.:format)           admin/comments#create
#            admin_comment GET        /admin/comments/:id(.:format)       admin/comments#show
#                          DELETE     /admin/comments/:id(.:format)       admin/comments#destroy
#                     root GET        /                                   home#start
#                     page GET        /pages/*id                          high_voltage/pages#show
#

Rails.application.routes.draw do
  devise_for :users
  resources :users do
    collection do
      get 'show_user'
    end
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#start'
end
