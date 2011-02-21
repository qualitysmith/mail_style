# encoding: utf-8
require 'rake'
require 'rake/rdoctask'
require 'bundler'
Bundler::GemHelper.install_tasks

begin
  require 'spec/rake/spectask'
rescue LoadError
  begin
    gem 'rspec-rails', '>= 1.0.0'
    require 'spec/rake/spectask'
  rescue LoadError
    puts "RSpec - or one of its dependencies - is not available. Install it with: sudo gem install rspec-rails"
  end
end

desc "Default: Run specs."
task :default => :spec

desc "Generate documentation for the mail_style plugin."
Rake::RDocTask.new(:rdoc) do |t|
  t.rdoc_dir = 'rdoc'
  t.title    = 'MailStyle'
  t.options << '--line-numbers' << '--inline-source'
  t.rdoc_files.include(['readme.textile'])
  t.rdoc_files.include('lib/**/*.rb')
end

if defined?(Spec)
  desc "Run plugin specs for mail_style."
  Spec::Rake::SpecTask.new('spec') do |t|
    t.spec_files = FileList['spec/**/*_spec.rb']
    t.spec_opts = ["-c"]
  end

  desc "Run plugin specs for mail_style with specdoc formatting and colors"
  Spec::Rake::SpecTask.new('specdoc') do |t|
    t.spec_files = FileList['spec/**/*_spec.rb']
    t.spec_opts = ["--format specdoc", "-c"]
  end
end
