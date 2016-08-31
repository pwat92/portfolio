namespace :setup do
  desc "setup up app when deploying"
  task setup: :environment do 
    if Rake::Task['db:migrate'].execute
      puts "migrate success"
    end

    Rake::Task['add_db_info:add_previous_skills'].execute
    Rake::Task['add_db_info:add_previous_jobs'].execute
  end
end