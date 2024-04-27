Rails.application.routes.draw do
  namespace :api, defaults: { format: :json }
  end
end
