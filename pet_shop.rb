def pet_shop_name(petshop)
  return petshop[:name]
end

def total_cash (petshop)
  return petshop[:admin][:total_cash]
end

def add_or_remove_cash(petshop, money)
  new_total = petshop[:admin][:total_cash] += money
  return new_total
end

def pets_sold(petshop)
  return petshop[:admin][:pets_sold]
end

def increase_pets_sold(petshop, new_pet_sales)
  return petshop[:admin][:pets_sold] += new_pet_sales
end

def stock_count(petshop)
  return petshop[:pets].length
end

def pets_by_breed(petshop, dog_breed)
pets = []
for pet in petshop[:pets]
  if pet[:breed] == dog_breed
    pets.push(pet[:breed])
  else
  end
end
return pets
end

def find_pet_by_name(petshop,name)
  for element in petshop[:pets]
    if element[:name] == name
      return element
    else
    end
  end
  return nil
end

def remove_pet_by_name(petshop,name)
  for element in petshop[:pets]
    if element[:name] == name
      element.clear
    else
    end
  end
  return element
end

def add_pet_to_stock(petshop, newpet)
  petshop[:pets] << newpet
  return petshop[:pets].length
end

def customer_cash(customer_position)
  return customer_position[:cash]
end

def remove_customer_cash(customer_position, amount)
  customer_position[:cash] -= amount
  return customer_position[:cash]
end

def customer_pet_count(customer_position)
  return customer_position[:pets].length
end

def add_pet_to_customer(customer, newpet)
  # customer[:pets][0] = newpet
  customer[:pets] << newpet
  return customer[:pets]
end

#OPTIONAL

def customer_can_afford_pet(customer, newpet)
  if customer[:cash] >= newpet[:price]
    then
    return true
  else
    return false
  end
end

def sell_pet_to_customer(petshop, pet, customer)
if petshop[:pets].include?(pet) && customer[:cash] >= pet[:price]
  customer[:pets].push(pet)
  customer[:cash] -= pet[:price]
  petshop[:admin][:total_cash] += pet[:price]
  return increase_pets_sold(petshop, 1)
  return customer_pet_count(customer)
  return pets_sold(petshop)
  return customer_cash(customer)
  return total_cash(petshop)
else
end
end
