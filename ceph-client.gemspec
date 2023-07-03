require_relative "lib/ceph/client/version"

Gem::Specification.new do |spec|
  spec.name = "ceph-client"
  spec.version = Ceph::Client::VERSION
  spec.authors = ["phsnlam"]
  spec.email = ["phsnlam@gmail.com"]

  spec.summary = "Ruby Ceph client to connect to Ceph REST API"
  spec.homepage = "https://github.com/phsnlam/ceph-client"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/phsnlam/ceph-client/issues",
    "changelog_uri" => "https://github.com/phsnlam/ceph-client/releases",
    "source_code_uri" => "https://github.com/phsnlam/ceph-client",
    "homepage_uri" => spec.homepage
  }

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir.glob(%w[LICENSE.txt README.md {exe,lib}/**/*]).reject { |f| File.directory?(f) }
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
