class AddressesController < ApplicationController

  def new
    @customer = current_customer
    @address = Address.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @address }
    end
  end

  def show
  	@customer = current_customer
    @address = @customer.addresses.find(params[:id])

    respond_to do |format|
      format.html #show.html
      format.json { render json: @address }
    end
  end

  def edit
  	
  end


  def create
  	@customer = current_customer
    @address = @customer.addresses.new(params[:address])

    respond_to do |format|
      if @address.save
        format.html { redirect_to  customer_address_path(@customer, @address), notice: 'Address was successfully created.' }
        format.json { render json: @address, status: :created, location: @address }
      else
        format.html { render action: "new" }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end
end