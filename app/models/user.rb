class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

<<<<<<< HEAD
  validates :name, presence: true, uniqueness: true
  
=======
  has_many :group_users
  has_many :groups, through: :group_users
  has_many :messages
>>>>>>> b92a31d... Message function
end
