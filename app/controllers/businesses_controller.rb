class BusinessesController < ApplicationController
  before_action :set_business, only: [:show, :update, :destroy]

  # GET /businesses
  def index
    @businesses = Business.all
    search_params(params).each do |key, value|
      @businesses = @businesses.public_send(key, value) if value.present?
    end
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

    def search_params(params)
      params.slice(:company, :product, :slogan, :city, :state, :street_address, :zip)
    end

    def set_business
      @business = Business.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def business_params
      params.require(:business).permit(:company, :product, :slogan, :city, :state, :street_address, :zip)
    end
end
