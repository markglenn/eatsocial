class Event < ActiveRecord::Base
  has_many :people, :through => :subscriptions, :uniq => true
  has_many :subscriptions

  validates :location, :presence => true
  
  scope :upcoming, where( "time > ?", Time.now )
  
  def subscribed?(person)
    self.people.exists?(person)
  end
  
  def owner
    self.people.first
  end
end
