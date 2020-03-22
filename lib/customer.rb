class Customer
attr_accessor :name, :age 

@@all = []
def initialize(name, age)
  @name = name
  @age = age
  @@all << self 
end 

  def self.all
    @@all
end

def meals 
  Meal.all.select do |meal|
    meal.customer == self 
  end 
end

def waiters 
  meals.map do |meal|
    meal.waiter 
    
  end 
end 

def new_meal(waiter, total, tip=0)
  Meal.new(waiter, self, total)
end

def oldest_customer
  oldest_age = 0 
  oldest_customer = nil 
  self.all.each do |customer|
    if customer.age > oldest_age
      oldest_age = customer.age 
      oldest_customer = customer
    end
  end 
  oldest_customer
end

def best_tipper(name, yrs_experience)
  best_tipper.each {|best_tip| best_tip > 0}
    best_tip
end 
end 

    