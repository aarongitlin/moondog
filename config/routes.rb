Moondog::Application.routes.draw do
  root :to => "refinery/pages#home"

  mount Spree::Core::Engine, :at => '/'
  mount Refinery::Core::Engine, :at => '/'
end
