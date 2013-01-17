require 'rubygems'
require 'rufus/scheduler'  
scheduler = Rufus::Scheduler.start_new
scheduler.every("5m") do
	 
	system ('rake ffcrm:dropbox:run')
 
end
