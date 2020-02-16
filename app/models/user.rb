class User < ApplicationRecord
   # Include shared utils.
   include SharedUtils::Model

   
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
  before_save :generate_random_id 
  before_save :random_user_id 
  before_save :set_default_role
  
  # Relationships
  has_one :profile, dependent: :destroy







  # Validations
  validates :login, presence: true, uniqueness: true














  # Add nested attributes for profile.
  accepts_nested_attributes_for :profile



  private 
	
	def random_user_id 
		begin
			self.slug = "u#{SecureRandom.random_number(1_000_000_000)}"
		end while User.where(slug: self.slug).exists?
  end 

  def set_default_role
    unless self.role_id.present?
      role = Role.find_by(name: "user")
      self.role_id = role.id
    end
  end
  
end
