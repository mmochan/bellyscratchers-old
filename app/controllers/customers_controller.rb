class CustomersController < ApplicationController
  # GET /customers
  # GET /customers.json
  def index
    #@customer = Customer.all
    @customer = Customer.find(current_customer)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customers }
    end
  end

  def details
    @customer = Customer.find(current_customer)
    if @customer.address.nil?
      redirect_to add_address_to_customer_path(@customer)
    else
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @customers }
      end
    end
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
    @customer = Customer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer }
    end
  end

  # GET /customers/new
  # GET /customers/new.json
  def new
    @customer = Customer.new
    @customer.build_address

    #@customer.build_address

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer }
    end
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def add_pet_to
    @customer = Customer.find(params[:id])
    @pet = @customer.pets.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer }
    end 
  end

  def add_address_to
    @customer = Customer.find(params[:id])
    @customer.build_address
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer }
    end    
  end  
  
  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(params[:customer])
    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer successfully created.' }
        format.json { render json: @customer, status: :created, location: @customer }
      else
        format.html { render action: "new" }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /customers/1
  # PUT /customers/1.json
  def update
    @customer = Customer.find(params[:id])
    respond_to do |format|
      if @customer.update_attributes(params[:customer])
        if @customer.pets.empty?
          format.html { redirect_to add_pet_to_customer_path, notice: 'Customer profile was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { redirect_to @customer, notice: 'Customer profile was successfully updated.' }
          format.json { head :no_content }
        end
      else
        format.html { render action: "edit" }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    respond_to do |format|
      format.html { redirect_to customers_url }
      format.json { head :no_content }
    end
  end
end
