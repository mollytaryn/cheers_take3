class Cheer
  AN_LETTERS = "AEFHILMNORSX"

  def self.for_birthday(birthday)
    date = Date.parse(birthday).yday
    today = Date.today.yday
    year = 365
    cheer = ""
    if date > today
      countdown = date - today
      if countdown == 1
        cheer << "Awesome! Your birthday is in #{countdown} day! Happy Birthday in advance!"
      else
        cheer << "Awesome! Your birthday is in #{countdown} days! Happy Birthday in advance!"
      end
    elsif date == today
      cheer << "Awesome! Your birthday is today! Happy Birthday!"
    else
      countdown = year - (today - date)
      cheer << "Awesome! Your birthday is in #{countdown} days! Happy Birthday in advance!"
    end
  end

  def self.for_person(name)
    raise ArgumentError unless valid_name?(name)
    cheer = ""
    cheerable_name = name.upcase.gsub(/[^A-Z]*/,'')
    cheerable_name.each_char do |letter|
      article = "a"
      article = AN_LETTERS.include?(letter) ? "an" : "a"
      cheer << "Give me #{article}... #{letter}!\n"
    end
    cheer << "#{name}'s just GRAND!"
  end

  def self.valid_name?(name)
    cheerable_name = name.upcase.gsub(/[^A-Z]*/,'')
    !cheerable_name.empty?
  end
end
