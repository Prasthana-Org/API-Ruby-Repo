Rails.application.routes.draw do
 root 'user2s#home'
 get 'about',to: 'user2s#about'
end
