desc "Fetch school data"
task :fetch_school_data => :environment do 
	require 'nokogiri'
	require 'open-uri'

	url = "http://aws.code.org/search?query=berkeley%2C+ca"
	doc = Nokogiri::HTML(open(url))
	doc.css(".result").each do |school|
		name = item.at_css(".selectedResult .name").text
		description = item.at_css(".tt").text
		address = item.at_css(".address").text
		site_url = item.at_css(".description a").text
		school_level = item.at_css(".description div div:nth-child(1)").text
		class_format = item.at_css(".description div div:nth-child(2)").text
		languages = item.at_css(".description div div:nth-child(3)").text
		puts "#{name}, #{address}, #{description}, #{site_url}, #{school_level}, #{class_format}, #{languages}" 
	end

end