class BusinessesController < ApplicationController
  before_action :set_business, only: [:show, :update, :destroy]

  # GET /businesses
  def index
    @businesses = Business.all

    json_response(@businesses) 
  end

  # GET /businesses/id
  def show
    json_response(@business)
  end

  # POST /businesses
  def create
    @business = Business.create!(business_params)
    json_response(@business, :created)
  end

  # PATCH/PUT /businesses/id
  def update
    @business.update!(business_params)
    json_response(@business, :ok)
  end

  # DELETE /businesses/id
  def destroy
    @business.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business
      @business = Business.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def business_params
      params.require(:business).permit(:name, :product, :slogan, :city, :state, :street_address, :zip)
    end
end
