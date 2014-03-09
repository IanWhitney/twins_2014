namespace :setup do
  task :all => :environment do
    f = File.open('db/games.rb')
    games = f.each.inject([]) {|ret, l| ret << eval(l)}

    games.each do |g|
      x = Game.new
      x.date = DateTime.parse(g[:date])
      x.opponent = g[:opponent]
      x.save
    end

    f = File.open('db/attendees.rb')
    attendees = f.each.inject([]) {|ret, l| ret << eval(l)}

    attendees.each do |g|
      x = Attendee.new
      x.name = g[:name]
      x.save
    end
  end
end
