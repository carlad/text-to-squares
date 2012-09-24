# I'm trying to create world peace.
# My premise is that for wold peace to exist all countries must
# have optimal levels of health, education, food, comms and
# happiness.

# The first class I define is Country, with configurable characteristics.
class Country
	def initialize(options = {})
		@name = options[:name]
		@health = options[:health]
		@knowledge = options[:knowledge]
		@hunger = options[:hunger]
		@communication = options[:communication]
		@happiness = options[:happiness]
	end

  def happy?
    @happiness
  end

  def sad?
    not happy?
  end
end

britain = Country.new(:name => 'Britain', :happyness => true)
puts britain.sad?
exit

# Here I am creating a class called Services, which, depending on the
# values in a country's characteristics, will attempt to bring them
# to the optimal level (and display a message that it is doing so).
class Services
	def provide_universal_health_care
		if @health == "bad"
			puts "We are sending doctors, nurses, and bandages #{@country}."
		end
    end

	def provide_free_education
			if @knowledge == "bad"
			puts "Welcome to the classroom #{@country}. Don't forget to do your homework!!"
		end
	end

	def provide_delicious_food
		if @hunger == "bad"
			puts"Ready for blutwurst #{@country}?"
		end
	end

	def provide_hi_speed_internet
		if @communication == "bad"
			puts "The lolcats are coming #{country}:-)"
		end
	end

	def put_ecstacy_in_the_water
		if @happiness == "bad"
			puts "Just dance #{@country}!"
    	end
	end
end


# Here I create some countries and apply values to their characteristics.

spain = Country.new('Spain')

