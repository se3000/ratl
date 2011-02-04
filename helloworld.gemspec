# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{helloworld}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Steve Ellis"]
  s.date = %q{2011-02-04}
  s.description = %q{An Email parser}
  s.email = %q{sellis6688@gmail.com}
  s.files = ["Manifest", "Rakefile", "dependencies.rb", "markers.rb", "ratl.rb", "ratl_spec.rb", "helloworld.gemspec"]
  s.homepage = %q{}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Helloworld"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{helloworld}
  s.rubygems_version = %q{1.4.2}
  s.summary = %q{An Email parser}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
