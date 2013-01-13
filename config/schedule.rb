# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

adds >> /path/to/script/dropbox.sh > /dev/null 2&>1
set :output, '/path/to/script/dropbox.sh'

every 1.hours do
	command "cd /path/to/ffc;"
	rake "RAILS_ENV=production"
	command "ffcrm:dropbox:run"
  end
every 1.hours do
	command "bash -c 'cd /path/to/ffc;"
	command "/pathtorake/rake ffcrm:dropbox:run"
	rake "RAILS_ENV=production' >/dev/null 2&>1 "
	end
