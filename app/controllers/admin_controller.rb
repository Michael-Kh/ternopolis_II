class AdminController < ApplicationController
  def idnex
  	@total_orders = Order.count
  end
end
