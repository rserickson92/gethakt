class User < ActiveRecord::Base
  has_many :comments
  has_many :posts
  validates :name, presence: true, uniqueness: true, length: { maximum: 20 }
  validates :password, presence: true, length: { in: 6..20 }

  def self.authenticate(name, password)
  	user = find_by_name(name)
  	(user && user.password == password) ? user : nil
  end
end
