Rails.application.routes.draw do
  root "items#getPurchasedItems"
  get "add-item-form", to: "items#addItemForm"
  post "add-item", to: "items#addItem"
end
