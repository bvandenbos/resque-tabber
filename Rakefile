$LOAD_PATH.unshift 'lib'

desc "Build a gem"
task :gem => [ :gemspec, :build ]

begin
  begin
    require 'jeweler'
  rescue LoadError
    puts "Jeweler not available. Install it with: "
    puts "gem install jeweler"
  end

  require 'resque-tabber'

  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "resque-tabber"
    gemspec.summary = "Adds a tab to resque-web which goes wherever you want"
    gemspec.description = gemspec.summary
    gemspec.email = "bvandenbos@gmail.com"
    gemspec.homepage = "http://github.com/bvandenbos/resque-tabber"
    gemspec.authors = ["Ben VandenBos"]
    gemspec.version = Resque::Tabber::Version

    gemspec.add_dependency "resque"
    gemspec.add_development_dependency "jeweler"
    gemspec.add_development_dependency "mocha"
  end
end


desc "Push a new version to Gemcutter"
task :publish => [ :gemspec, :build ] do
  require 'resque-tabber'
  system "git tag v#{Resque::Tabber::Version}"
  system "git push origin v#{Resque::Tabber::Version}"
  system "git push origin master"
  system "gem push pkg/resque-tabber-#{Resque::Tabber::Version}.gem"
  system "git clean -fd"
end
