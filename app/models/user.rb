class User < ActiveRecord::Base
  has_and_belongs_to_many :roles
  has_and_belongs_to_many :tasks
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable,:registerable,
         :recoverable, :rememberable, :trackable, :validatable
validates :username,  :presence => true,:uniqueness => true
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :username, :password, :password_confirmation, :remember_me, :role_ids, :username

  def role?(role)
    return !!self.roles.find_by_name(role.to_s)
  end
end



