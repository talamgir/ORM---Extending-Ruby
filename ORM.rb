class President
	attr_accessor :id
	attr_accessor :name
	attr_accessor :took_office
	attr_accessor :left_office
	attr_accessor :birth_year
	attr_accessor :death_year
	attr_accessor :party
	attr_accessor :home_state

	def self.all
		puts `psql -d postgres -c 'SELECT * FROM presidents;'`
	end


	def self.find (n)
		idQuery = `psql -d postgres -c 'SELECT * FROM presidents WHERE name = '#{n};'`
		puts idQuery
	end

	def self.where(hash)

end

# puts President.find(:name => "George Washington").home_state

