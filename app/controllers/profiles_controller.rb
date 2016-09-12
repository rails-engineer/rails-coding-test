class ProfilesController < ApplicationController
  before_action :authenticate_customer!

  def me
    @orders = Order.includes(product_items: :product).order('status, id DESC')
  end
end
