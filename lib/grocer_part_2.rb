require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  push_later = []
  cart.each do |item_properties|
    coupon.each do |coupon_properties|
      if item_properties[:name] == coupon_properties[:name]
        if item_properties[:count] > coupon_properties[:num]
          modified_coupon = {}
          modified_coupon[:name] = coupon_properties[:name] + " W/COUPON"
          modified_coupon[:price] = coupon_properties[:cost] / coupon_properties[:num]
          modified_coupon[:clearance] = item_properties[:clearance]
          modified_coupon[:count] = coupon_properties[:num]
          push_later.push(modified_coupon)
          item_properties[:count] = item_properties[:count] - coupon_properties[:num]
        end
      end
    end
  end
  cart.push()
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
