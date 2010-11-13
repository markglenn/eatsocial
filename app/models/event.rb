class Event < ActiveRecord::Base

  has_many :people, :through => :subscriptions
  has_many :subscriptions

end
