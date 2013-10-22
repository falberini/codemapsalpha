require 'nokogiri'
require 'open-uri'

desc "Fetch school data"
task :fetch_school_data => :environment do 

	url = "http://aws.code.org/search?query=berkeley%2C+ca"
	doc = Nokogiri::HTML(open(url))
	doc.css(".result").each do |item|
		name = item.css(".name").text
		description = item.css(".tt").text
		street = item.css(".address").text
		city_state = item.css(".address+ .address").text
		site_url = item.css(".description a").text
		school_level = item.css(".description div div:nth-child(1)").text
		class_format = item.css(".description div div:nth-child(2)").text
		languages = item.css(".description div div:nth-child(3)").text
		puts '&&&&&&&&&&&&&&&&&&&'
		puts '******NAME******'
		#name.gsub!(/^\n    /,'')
		p name.strip
		puts '***DESCRIPTION**'
		p description.strip
		puts '***STREET*******'
		p street.strip
		puts '***CITY/STATE***'
		p city_state.strip
		puts '***SCHL-LEVEL***'
		p school_level.strip
		puts '**CLASS-FORMAT**'
		p class_format.strip
		puts '****LANGUAGES***'
		p class_format.strip
		puts '&&&&&&&&&&&&&&&&&&&'
	end

end