class WebsController < ApplicationController
# GET /webs
	def index
		respond_to	do |format|
				format.html # index.html
			end
	end
end
