require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  modified_coupon = {}
  cart.each do |item_properties|
    coupon.each do |coupon_properties|
      if item_properties[:name] == coupon_properties[:name]
        modified_coupon = coupon_properties
        modified_coupon[:name] = modified_coupon[:name] + ""
        cart.push()
    end
  end
end

def apply_clearance(cart)
  cart.each do |item_properties|
    if item_properties[:clearance] == TRUE
      item_properties[:price] = (item_properties[:price] * .8).round(2)
    end
  end
  cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
  
  consolidated_cart = consolidate_cart(cart)
  couponed_cart = apply_coupons(consolidated_cart, coupons)
  final_checkout = apply_clearance(couponed_cart)
end
