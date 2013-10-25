require 'nokogiri'
require 'open-uri'

desc "Fetch school data"
task :fetch_school_data => :environment do 
	cities = ["Chicago+Ill.","Houston+Tex.","Philadelphia+Pa.","Phoenix+Ariz.","San+Antonio+Tex.","San+Diego+Calif.","Dallas+Tex.","San+Jose+Calif.","Austin+Tex.","Jacksonville+Fla.","Indianapolis+Ind.","San+Francisco+Calif","Columbus+Ohio","Fort+Worth+Tex","Charlotte+N.C.","Detroit+Mich.","El+Paso+Tex","Memphis+Tenn.","Boston+Mass.","Seattle+Wash.","Denver+Colo.","Washington+DC","Nashville-Davidson+Tenn","Baltimore+Md.","Louisville-Jefferson+County+ky","Portland+Ore.","Oklahoma+City+Okla","Milwaukee+Wis.","Las+Vegas+Nev","Albuquerque+N.M.","Tucson+Ariz.","Fresno+Calif.","Sacramento+Calif.","Long+Beach+Calif","Kansas+City+Mo","Mesa+Ariz.","Virginia+Beach+Va","Atlanta+Ga","Colorado+Springs+Colo","Raleigh+N.C.","Omaha+Nebr.","Miami+Fla.","Oakland+Calif.","Tulsa+Okla.","Minneapolis+Minn.","Cleveland+Ohio","Wichita+Kans.","Arlington+Tex."]
	cities.each do |city|	
		url = "http://aws.code.org/search?query="+city
		doc = Nokogiri::HTML(open(url))
		doc.css(".result").each do |item|
			#Scrape data from code.org
			name = item.css(".name").text
			description = item.css(".tt").text
			street = item.css(".address").text
			city_state = item.css(".address+ .address").text
			site_url = item.css(".description a").text
			school_level = item.css(".description div div:nth-child(1)").text
			class_format = item.css(".description div div:nth-child(2)").text
			languages = item.css(".description div div:nth-child(3)").text
			#Strip empty space and random html formatting crap from each entry
			name1 = name.strip
			description1 = description.strip
			street1 = street.strip
			city_state1 = city_state.strip
			site_url1 = site_url.strip
			school_level1 = school_level.strip
			class_format1 = class_format.strip
			languages1 = languages.strip
			if name1.empty?
				puts "Unable to add school to DB"
			else
				OfflineSchool.create(name: name1, street: street1, city: city_state1, site_url: site_url1, bio: description1, ed_level: school_level1, format: class_format1)
			end
		end
	end
end