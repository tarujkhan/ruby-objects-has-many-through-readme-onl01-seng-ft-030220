class Waiter
attr_accessor :name, :yrs_experience

@@all = []

def initialize(name, yrs_experience)
  @name = name
  @yrs_experience = yrs_experience
  @@all << self 
end 

def self.all
  @@all 
end 

def meals 
  Meal.all.select do |meal|
    meal.waiter == self
  end 
end 

def new_meal(customer, total, tip=0)
  Meal.new(self, customer, total, tip)
end 

def best_tipper(name, yrs_experience)
  best_tipper.each {|best_tip| best_tip > 0}
    customer.best_tip.meal(name, yrs_experience)
end 
end