require 'pry'

class CashRegister
  attr_accessor  :total, :discount, :title, :quantity, :price 

  @@items_array = [] 
  
  def  initialize(discount = 0)
    # binding.pry 
    @total = 0
    @discount = discount 
  end

  def add_item(title, price, quantity = 1)
   # binding.pry 
    @total =  @total + (price*quantity)
    @title = title
    @quantity = quantity
    @price = price
    @items_instance_array = Array.new(quantity, title)
    @items_instance_array.each do |item|
      binding.pry
      @@items_array << item
    end
    # items 
    # binding.pry 
  end 

  def apply_discount
    if discount != 0
      @total = @total - (@total*(@discount.to_f*0.01))
      return "After the discount, the total comes to $#{@total.to_i}."  ##Anti-pattern: another way to return?
      
    elsif discount == 0
       "There is no discount to apply."
    end
  end 
  
  
## need class method because an instance method is operating on the instance of the add_item which is tomoat, it's why egg never shows up and why adding potato "overwrites" tomato.  The test is inializing a new CashRegister object and adding an sitnace of eggs and an intsance of 3 tomatoes.  I want to create.  

  def items 
    @@items_array
    
  end 
    
  end 
  
=begin 

  def items 
   # list of object titles, or list of titles for one object 
    item = CashRegister.new
    item.title = @title 
    Array.new(@quantity, item.title).each do |item|
      @@items_array << item 
    end
   end 
  
    def items 
   # list of object titles, or list of titles for one object 
    item = CashRegister.new
    item.title = @title 
    Array.new(@quantity, item.title).each do |item|
      @@items_array << item 
    end
   end 
=end  
#  song = Song.new 
#  song.name = name
#  @@songs << song 
  

 #     new_register = CashRegister.new
  #    new_register.title = title
   #   @@items_array << new_register 
      
  
 
 #   items_array = Array.new(@quantity, @title)
#  items_array.each do |item|
 #     #  binding.pry
  #    @@items_array << item
  #    
  #  end
   # binding.pry 
# @@items_array 
#  end 
    
  
  
   
=begin 
  describe '#items' do
    it 'returns an array containing all items that have been added' do
      new_register = CashRegister.new
      new_register.add_item("eggs", 1.99)
      new_register.add_item("tomato", 1.76, 3)
      expect(new_register.items).to eq(["eggs", "tomato", "tomato", "tomato"])
    end
  end

  describe '#void_last_transaction' do
    it 'subtracts the last transaction from the total' do
      cash_register.add_item("tomato", 1.76)
      expect{cash_register.void_last_transaction}.to change{cash_register.total}.from(1.76).to(0.0)
    end
  end
=end 