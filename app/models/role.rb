class Role < ApplicationRecord

    # Relationships
    has_many :users, dependent: :destroy
end
