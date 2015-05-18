require 'bundler/gem_tasks'

begin
  require 'rubocop/rake_task'
  RuboCop::RakeTask.new

  task :default do
    Rake::Task['rubocop'].execute
  end
rescue => _
  puts 'Rubocop not loaded.'
end
