class Orange_Tree
  def initialize(name)
    @name=name
    @height=1
    @age=0
    @oranges=0
    puts "#{@name} was planted! We can't wait to see the developments!"
  end

  def height
    @height
  end

  def one_year_passes
    @age=@age+1
      puts "The orange tree is now #{@age} years old"
    @height=@height+0.1
      puts "The orange tree is growing taller! It is now #{height.round(2)} meters high"
      if @oranges!=0
        puts "All of last year's oranges are now rotten!"
      end
        @oranges=0
        if @age>=20
          puts "The orange tree is now too old and has died"
          exit
        elsif @age.between?(0,10)
          @oranges=3
          puts "The tree has produced #{@oranges} new oranges!"
        elsif @age.between?(0,19)
          @oranges=5
          puts "The tree has produced #{@oranges} new oranges!"
        end
    end

    def orange_count
      puts "There are now #{@oranges} oranges on the tree!"
    end

    def pick_an_orange
      if @oranges>=1
         @oranges=@oranges-1
         puts "This orange was delicious!"
         puts "There are now #{@oranges} oranges on the tree!"
      else
        puts "There are no more oranges to pick this year! Come back next year!"
      end
    end
  end

  tree=Orange_Tree.new("Little Tree")
  tree.orange_count
  tree.pick_an_orange
  tree.one_year_passes
  tree.orange_count
  tree.pick_an_orange
  tree.one_year_passes
  tree.one_year_passes
  tree.one_year_passes
  tree.one_year_passes
  tree.one_year_passes
  tree.one_year_passes
  tree.one_year_passes
  tree.one_year_passes
  tree.one_year_passes
  tree.one_year_passes
  tree.one_year_passes
  tree.one_year_passes
  tree.one_year_passes
  tree.one_year_passes
  tree.one_year_passes
  tree.one_year_passes
  tree.one_year_passes
  tree.one_year_passes
  tree.one_year_passes
