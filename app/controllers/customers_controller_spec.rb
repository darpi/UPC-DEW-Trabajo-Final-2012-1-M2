describe 'This Test should' do
	before do
		@customer = Customer.new
	end
	
	it "deletes the customer" do
		expect{
		  delete :destroy, id: @customer        
		}.to change(Customer,:count).by(-1)
	end
		
	it "redirects to customers#index" do
		delete :destroy, id: @customer
		response.should redirect_to customers_url
	end
	  
	it "should redirect to the root page" do
		  get :new
		  response.should redirect_to root_path
	end
	
	it "should find the customer" do
      do_destroy
    end
end