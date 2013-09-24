class Linker
	attr_reader :link

	def initialize(link)
		@link = link
	end

	def alive?
		state = :inactive
		http = Curl.get self.link	

		# binding.pry 
		case http.status
		when "200 OK", "302 Found"
			state = :active
		when "", "404 Not Found"
			state = :inactive
		end
		state
	end

	def has_spec_folder?
		
	end
end