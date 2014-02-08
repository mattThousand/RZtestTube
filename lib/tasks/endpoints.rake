namespace :endpoints do
  desc "Hit all endpoints"
  task :hit => :environment do
  	applications = Application.all

  	applications.each do |a|
  		a.requests.each do |r|
  			r.refresh_status_code
  			puts "Refreshing status codes for requests belonging to: " + r.application.name
  		end
  	end

  end
end
