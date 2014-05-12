class WelcomeController < ApplicationController
  def index
    @available_items = AvailableItem.all.includes(:item).includes(:user).order(:created_at).reverse_order
  end
end

