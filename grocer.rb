  require 'pry'
  
def find_item_by_name_in_collection(name, collection)
  # pp collection

  i = 0
  while i < collection.length do
    return collection[i] if name == collection[i][:item]
    i += 1
      # binding.pry
  end
  nil
end
  # binding.pry
  # Implement me first!
  #
  # Consult README for inputs and outputs


def consolidate_cart(cart)
  final_array = []
  i = 0
  while i < cart.count do
    element_item = cart[i][:item]
    requested_item = find_item_by_name_in_collection(element_item, final_array)
    if requested_item 
      requested_item[:count] += 1
    else
      cart[i][:count] = 1
      final_array << cart[i]
  end
  i += 1
    # binding.pry
end
final_array
end

  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

def apply_coupons(cart, coupons)
  i = 0
  while i < coupons.count do
    coupon = coupons[i]
    item_with_coupon = find_item_by_name_in_collection(coupon[:item], cart)
    item_is_in_basket = !!item_with_coupon
    count_is_big_enough_to_apply = item_is_in_basket && item_with_coupon[:count] >= coupon[:num]

    if item_is_in_basket and count_is_big_enough_to_apply
      apply_coupon_to_cart(item_with_coupon, coupon, cart)
  binding.pry
    end
    i += 1
  end
  cart
end

  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart


def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
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
end
