class Profile < ApplicationRecord
  # Relationships.
  belongs_to :user
  has_one :address, dependent: :destroy
  

  # Add nested attributes.
  accepts_nested_attributes_for :address


end
