require 'rubygems'
require 'sinatra'
get '/chicago' do
  erb :chicago

end

post '/chicago' do
 

	def citation_generator(firstName, lastName, authorCount, firstName2, lastName2, firstName3, lastName3, title, location, publisher, year, pages)
		authorCount = authorCount.to_i

		firstName = firstName.capitalize
		lastName = lastName.capitalize
		firstName2 = firstName2.capitalize
		lastName2 = lastName2.capitalize
		firstName3 = firstName3.capitalize
		lastName3 = lastName3.capitalize
		title = title.split.map(&:capitalize).join(' ')
		location = location.capitalize
		publisher = publisher.split.map(&:capitalize).join(' ')




		if authorCount > 3
			book = "#{firstName} #{lastName} et al., <i>#{title}</i> (#{location}: #{publisher}, #{year}), #{pages}."
		elsif authorCount == 1
	        book = "#{firstName} #{lastName}, <i>#{title}</i> (#{location}: #{publisher}, #{year}), #{pages}."
	    elsif authorCount == 2
	        book = "#{firstName} #{lastName} and #{firstName2} #{lastName2}, <i>#{title}</i> (#{location}: #{publisher}, #{year}), #{pages}."
	    elsif authorCount == 3
	    	book = "#{firstName} #{lastName}, #{firstName2} #{lastName2}, and #{firstName3} #{lastName3} <i>#{title}</i> (#{location}: #{publisher}, #{year}), #{pages}."
	    end

	book

	end
	"Here is your citation: '#{citation_generator(params[:firstName], params[:lastName], params[:authorCount], params[:firstName2], params[:lastName2], params[:firstName3], params[:lastName3], params[:title], params[:location], params[:publisher], params[:year], params[:pages])}'"
end