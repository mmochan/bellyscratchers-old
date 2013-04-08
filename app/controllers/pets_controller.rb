class PetsController < ApplicationController

	def new
		@customer = current_customer
    @pet = Pet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pet }
    end
  end

  def show
    @customer = current_customer
    @pet = @customer.pets.find(params[:id])

    respond_to do |format|
      format.html #show.html
      format.json { render json: @pet }
    end
  end  

  def create
  	@customer = current_customer
    @pet = @customer.pets.new(params[:pet])
    respond_to do |format|
      if @pet.save
        format.html { redirect_to customer_pet_path(@customer, @pet), notice: 'pet successfully created.' }
        format.json { render json: @pet, status: :created, location: @pet }
      else
        format.html { render action: "new" }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end
end
