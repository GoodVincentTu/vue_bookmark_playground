Rails.application.routes.draw do
  resources :bookmarks
  get '/:slug' => 'visit#index', as: :visit #visit_url
  get '/crawl/:url' => 'crawl#index', as: :crawl, constraints: { url: %r{.*} }
  root to: "bookmarks#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
