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
  while i < cart.length do
    element_item = cart[i][:item]
    requested_item = find_item_by_name_in_collection(element_item, final_array)
    if requested_item 
      requested_item[:count] += 1
    else
      cart[i][:count] = 1
      final_array << cart[i]
    # binding.pry
  end
  i += 1
end
final_array
end

    # if final_array[element_hash]
    # else
    
      
 
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  end
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

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
