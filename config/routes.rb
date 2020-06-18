Rails.application.routes.draw do
  resources :alunos
  resources :professores
  resources :cursos
  resources :faculdades
  resources :departamentos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
