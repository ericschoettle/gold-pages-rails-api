class Business < ApplicationRecord
  # def self.search(search)
  #   where("author LIKE ? OR content LIKE ? OR title LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
  # end

  scope :company, -> (company) { where("company ILIKE ?", "%#{company}%")}
  scope :product, -> (product) { where("product ILIKE ?", "%#{product}%")}
  scope :slogan, -> (slogan) { where("slogan ILIKE ?", "%#{slogan}%")}
  scope :state, -> (state) { where("state ILIKE ?", "%#{state}%")}
  scope :city, -> (city) { where("city ILIKE ?", "%#{city}%")}
  scope :street_address, -> (street_address) { where("street_address ILIKE ?", "%#{street_address}%")}
  scope :zip, -> (zip) { where("zip ILIKE ?", "%#{zip}%")}
end
