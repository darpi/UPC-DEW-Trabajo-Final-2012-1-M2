class Customer < ActiveRecord::Base
	has_many:patients
	has_many:vaccines
	  
	def new do
	   @customer = Customer.new
	end 
	
	def create do
	   @customer = Customer.new
	end 
end
