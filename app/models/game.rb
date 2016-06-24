class Game < ActiveRecord::Base
  belongs_to :matchday
  has_many :tipps
  has_one :Gamehometeam
  has_one :Gameguestteam
  has_one :hometeam, :through => :Gamehometeam, :source => :team
  has_one :guestteam, :through => :Gameguestteam, :source => :team
end
