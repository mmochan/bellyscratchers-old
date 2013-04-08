class Customer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
	has_many :addresses, :dependent => :destroy
	has_many :reservations, :dependent => :destroy    #, :as => :reservable
  has_many :pets, :dependent => :destroy

	#accepts_nested_attributes_for :address

  attr_accessible  :name, :email, :phone, :address_attributes

 # validates :name, :presence =>true
 # validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }  
#	validates :phone, :presence =>true	

end