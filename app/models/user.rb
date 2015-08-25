class User < ActiveRecord::Base
  # Validations
  validates_presence_of :role
  validates_presence_of :status

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
