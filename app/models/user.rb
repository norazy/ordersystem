class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,  authentication_keys: [:login]




         
  attr_writer :login

  def login
    @login || self.username
  end


  #   def self.find_for_database_authentication(warden_conditions)
  #     conditions = warden_conditions.dup
  #     if login = conditions.delete(:login)
  #       where(conditions.to_h).where(["lower(username) = :value", { :value => login.downcase }]).first
  #     elsif conditions.has_key?(:username)
  #       where(conditions.to_h).first
  #     end
  #   end
    
  # validates :username, presence: :true, uniqueness: { case_sensitive: false }
  # #   validates_uniqueness_of :username
  # # validates_presence_of :username

end
