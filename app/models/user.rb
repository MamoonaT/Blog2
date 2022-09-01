class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def is_traveler?
    role.name == 'traveler'
  end
      
  def is_travel_agent?
     role.name == 'travel_agent'
  end
end
