Rails.application.routes.draw do
  root'root#index'
  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}
devise_for :admin, controllers: {
sessions:      'admin/sessions',
passwords:     'admin/passwords',
registrations: 'admin/registrations'
}

end
