# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mail_style/version"

Gem::Specification.new do |s|
  s.name        = "mail_style"
  s.version     = MailStyle::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jim Neath"]
  s.date        = "2010-05-03"
  s.email       = ["jimneath@googlemail.com"]
  s.homepage    = "http://github.com/purify/mail_style"
  s.summary     = %q{Making HTML emails a little less painful. Writes css inline and corrects image urls.}
  s.description = %q{Making HTML emails a little less painful. Writes css inline and corrects image urls.}

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version          = %q{1.3.6}

  s.rdoc_options      = ["--charset=UTF-8"]
  s.extra_rdoc_files  = [
    "Rakefile",
     "lib/mail_style.rb",
     "lib/mail_style/inline_styles.rb",
     "lib/mail_style/sass_support.rb",
     "lib/mail_style/version.rb",
     "readme.textile",
     "spec/inline_styles_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.files = [
    "Rakefile",
     "lib/mail_style.rb",
     "lib/mail_style/inline_styles.rb",
     "lib/mail_style/sass_support.rb",
     "lib/mail_style/version.rb",
     "readme.textile",
     "spec/inline_styles_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.test_files = [
    "spec/inline_styles_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.require_paths = ["lib"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<actionmailer>, [">= 1.2.3", "< 3.0"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 1.0.0"])
      s.add_runtime_dependency(%q<css_parser>, [">= 1.0.0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 1.2.6", "< 2.0"])
    else
      s.add_dependency(%q<actionmailer>, [">= 1.2.3", "< 3.0"])
      s.add_dependency(%q<nokogiri>, [">= 1.0.0"])
      s.add_dependency(%q<css_parser>, [">= 1.0.0"])
      s.add_dependency(%q<rspec-rails>, [">= 1.2.6", "< 2.0"])
    end
  else
    s.add_dependency(%q<actionmailer>, [">= 1.2.3", "< 3.0"])
    s.add_dependency(%q<nokogiri>, [">= 1.0.0"])
    s.add_dependency(%q<css_parser>, [">= 1.0.0"])
    s.add_dependency(%q<rspec-rails>, [">= 1.2.6", "< 2.0"])
  end
end
