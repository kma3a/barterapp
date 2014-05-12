class WelcomeController < ApplicationController
  def index
    @available_items = AvailableItem.all.includes(:item).order(:created_at).reverse_order
  end
end

