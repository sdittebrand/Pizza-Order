def pizza_order()
    puts "Welcome to Mined Minds Pizza, will this be for pickup or delivery"
    order = gets.chomp
    if order == "pickup"
        puts "Ok, can I have your name?"
        name = gets.chomp
    elsif order == "delivery" 
        puts "Ok, can I have your address?"
        address = gets.chomp
    end
end

def pizza_crust()
    puts "What type of crust do you want?" 
        c = ["Thin", "Regular", "DeepDish"]
        puts c.inspect
        crust = gets.chomp
end

def pizza_sauce()
    puts "What type of sauce do you want?"
        s = ["Tomato", "BBQ", "Alfredo"]
        puts s.inspect
        sauce = gets.chomp
end
    

def pizza_meat()
    puts "What meat do you want?"
        m = ["Pepperoni", "Ham", "Beef", "Sausage", "Bacon", "Chicken", "none"]
        puts m.inspect
        meat = gets.chomp
        
end

def pizza_veggies()
    puts "Do you want any vegetables?"
    v = ["Peppers", "Onion", "Spinach", "Mushroom", "Pineapple", "none"]
    puts v.inspect
    vegg = gets.chomp
    
end

def pizza_cheese()
    puts "How much cheese do you want?"
    ch = ["no", "regular", "extra"]
    puts ch.inspect
    cheese = gets.chomp
end

def finalize_order()
    puts "Do you need another pizza?"
    fin = gets.chomp
    if fin == "yes"
        pizza_crust()
        pizza_sauce()
        pizza_meat()
        pizza_veggies()
        pizza_cheese()
        finalize_order()

    elsif fin == "no"
    end
end
# need to figure out how to remember pizzas when it loops back


pizza_order()
crust = pizza_crust()
sauce = pizza_sauce()
meat = pizza_meat()
vegg = pizza_veggies()
cheese = pizza_cheese()
finalize_order()


puts "I have you down for a pizza with #{crust} crust, #{sauce} sauce, #{meat}, #{vegg}, and #{cheese} cheese. That will be $x"




