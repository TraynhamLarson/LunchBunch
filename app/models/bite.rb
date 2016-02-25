class Bite < ActiveRecord::Base
  validates :message, presence: true, length: {maximum: 150, too_long: "Don't bite off more than you can chew now!"}
  belongs_to :user
end
