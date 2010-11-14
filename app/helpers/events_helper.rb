module EventsHelper
  def count_description(event)
    count = event.people.count
    
    "with #{pluralize(count, 'person')}" if count > 1
  end
end
