class Event < ActiveRecord::Base
  has_many :people, :through => :subscriptions, :order => "created_at", :uniq => true
  has_many :subscriptions

  scope :upcoming, where( "time > ?", Time.now )

  def subscribed?(person)
    self.people.exists?(person)
  end
end
