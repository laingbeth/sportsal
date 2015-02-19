class Player < ActiveRecord::Base
  belongs_to :team
  has_many :subordinates, class_name: 'Player', foreign_key: 'team_id'

  # belongs_to :user
  # validates :full_name, presence:true, length { minimum: 3, maximum: 254 }
end
