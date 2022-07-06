class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def remember_me
    true
  end

  enum kind: { member: 0, guest: 1, admin: 2 }

  has_many :post, dependent: :destroy

end
