class Dragon
  def initialize(name)
    @name=name
    @asleep=false
    @stuff_in_belly=10
    @stuff_in_intestine=0
    puts "#{@name} is born! what a beautiful specimen!"
  end

  def feed
    puts "You feed #{@name}. #{@name} loves meat!"
    @stuff_in_belly=10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}. It is such a struggle!"
    @stuff_in_intestine=0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed"
    @asleep=true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores and fills the room with smoke"
      end
    end
    if @asleep
      @asleep=false
      puts "#{@name} wakes up slowly"
    end
  end

  def toss
    puts "You toss #{@name} up in the air"
    puts "#{@name} giggles which singes your eyebrows"
    passage_of_time
  end

  def rock
    puts "You rock #{@name} gently"
    @asleep=true
    puts "#{@name} briefly dozes off.."
    passage_of_time
    if @asleep
      @asleep=false
      puts "..but wakes up when you stop"
    end
  end

  def hungry?
    @stuff_in_belly<=2
  end

  def poopy?
    @stuff_in_intestine>=8
  end

private

  def passage_of_time
    if @stuff_in_belly>0
      @stuff_in_belly=@stuff_in_belly-1
      @stuff_in_intestine=@stuff_in_intestine+1
    elsif @asleep
      @asleep=false
      "#{@name} wakes up suddenly!"
      puts "#{@name} is starving! In desperation #{@name} ate YOU!"
      exit
    end

    if @stuff_in_intestine>=10
      @stuff_in_intestine=0
      puts "#{@name} had an accident!"
    end

    if hungry?
      if @asleep
        @asleep=false
        puts "#{@name} wakes up suddenly!"
      end
      puts "#{@name}'s stomarch grumbles...'"
    end

    if poopy?
      if @asleep
        @asleep=false
        puts "He wakes up suddenly"
      end
      puts "#{@name} does the potty dance"
    end
  end
end

tracey=Dragon.new("Tracey")
tracey.feed
tracey.toss
tracey.walk
tracey.put_to_bed
tracey.rock
tracey.put_to_bed
tracey.feed
tracey.feed
tracey.put_to_bed
tracey.put_to_bed
tracey.put_to_bed
tracey.put_to_bed
tracey.put_to_bed
tracey.put_to_bed
tracey.put_to_bed
