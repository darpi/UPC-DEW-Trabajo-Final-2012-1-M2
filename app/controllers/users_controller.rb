class UsersController < ApplicationController

  # GET /humen
  # GET /humen.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /humen/1
  # GET /humen/1.json
  def show
    #@user = User.find(params[:id])
	@user = User.find(:first, :conditions => { :id => 1 }) 
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  def enter
    
  end
  
  
   # Inicio Real
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
	
	
	
    if @user.save
      cookies[:auth_token] = @user.auth_token
      redirect_to root_url
    else
      render "new"
    end
  end
	# FIN Real
	
	
	 # GET /humen/1/edit
  def edit
    @user = User.find(params[:id])
  end
  
  # PUT /humen/1
  # PUT /humen/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'Human was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /humen/1
  # DELETE /humen/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
  
end
