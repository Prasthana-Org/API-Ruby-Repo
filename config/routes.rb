Rails.application.routes.draw do
 resources :employees do
  post 'create_emp_resources',to: 'employees#create_emp_resources'
 end

#  resources :employee_resources
 resources :resources 
end
