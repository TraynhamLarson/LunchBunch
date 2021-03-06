class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :username, presence: true, uniqueness: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true, uniqueness: true
  has_many :bites
  has_many :relationships
  has_many :friends, through: :relationships

  has_many :inverse_relationships, :class_name => "Relationship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_relationships, :source => :user
  has_many :likes

  def likes?(bite)
    bite.likes.where(user_id: id).any?
  end

end
