class ReservationsController < ApplicationController
  # GET /Reservations
  # GET /Reservations.json
  before_filter :authenticate_customer!  
  def index
    @reservations = Reservation.where("customer_id = #{current_customer.id}")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reservations }
    end
  end

  # GET /Reservations/1
  # GET /Reservations/1.json
  def show
    @reservation = Reservation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reservation }
    end
  end

  # GET /Reservations/new
  # GET /Reservations/new.json
  def new
    if current_customer.pets.empty?
      redirect_to  add_pet_to_customer_path(current_customer)
    else
      @reservation = Reservation.new
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @reservation }
      end
    end


  end

  # GET /Reservations/1/edit
  def edit
    @reservation = Reservation.find(params[:id])
  end

  # POST /Reservations
  # POST /Reservations.json
  def create
    @reservation = Reservation.new(params[:reservation])
    @reservation.customer_id = current_customer.id


    respond_to do |format|
      if @reservation.save
        format.html { redirect_to @reservation, notice: 'Reservation was successfully created.' }
        format.json { render json: @reservation, status: :created, location: @reservation }
      else
        format.html { render action: "new" }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /Reservations/1
  # PUT /Reservations/1.json
  def update
    @reservation = Reservation.find(params[:id])

    respond_to do |format|
      if @reservation.update_attributes(params[:Reservation])
        format.html { redirect_to @reservation, notice: "Reservation was successfully updated." }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Reservations/1
  # DELETE /Reservations/1.json
  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy

    respond_to do |format|
      format.html { redirect_to reservations_url }
      format.json { head :no_content }
    end
  end
end
