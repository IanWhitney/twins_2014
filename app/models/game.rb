class Game < ActiveRecord::Base
  belongs_to :attendee
  default_scope { order(:date) }

  scope :unclaimed, -> { where(attendee_id: nil) }
  scope :unplayed, -> { where('date >= ?', Date.today) }

  def attendee_options
    Attendee.all.collect {|a| [ a.name, a.id ] }
  end

  def attendee_name
    attendee ? attendee.name : NullAttendee.new.name
  end

  def attendee_id
    attendee ? attendee.id : NullAttendee.new.id
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
