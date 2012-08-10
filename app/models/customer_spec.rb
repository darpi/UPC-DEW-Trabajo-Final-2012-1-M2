describe 'DELETE' do

  before do
	@customer = Customer.new
  end
	
  it "can be instantiated" do
    Customer.new.should be_an_instance_of(Customer)
  end

  it "can be saved successfully" do
    Customer.create.should be_persisted
  end
  
end
