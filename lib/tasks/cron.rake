namespace :cron do
  Dir[Rails.root.join('lib/crons', '*.rb')].each do |filename|
    task_name = File.basename(filename, '.rb').intern
    desc "Cron job #{task_name.to_s.humanize}"
    task "#{task_name}": :environment do
      load(filename) if File.exist?(filename)
    end
  end
end
