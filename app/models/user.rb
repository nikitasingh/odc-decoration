class User < ActiveRecord::Base
  has_and_belongs_to_many :roles, :dependent => :destroy
  has_and_belongs_to_many :tasks, :dependent => :destroy
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable,:registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username,  :presence => true,:uniqueness => true
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :username, :password, :password_confirmation, :remember_me, :role_ids, :username, :zone_id
 def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |user|
        csv << user.attributes.values_at(*column_names)
      end
    end
  end

  def role?(role)
    return !!self.roles.find_by_name(role.to_s)
  end
end



