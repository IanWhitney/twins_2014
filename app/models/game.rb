class Game < ActiveRecord::Base
  belongs_to :attendee
  default_scope { order(:date) }

  scope :unclaimed, -> { where(attendee_id: nil) }

  def attendee_options
    Attendee.all.collect {|a| [ a.name, a.id ] }
  end

  def attendee_name
    attendee ? attendee.name : NullAttendee.new.name
  end

  def day
    date.strftime("%A, %B %e")
  end

  def time
    date.strftime("%l:%M %p")
  end

  def datetime
    "#{date}, #{time}"
  end
end
