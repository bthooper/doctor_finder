
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "doctor_finder/version"

Gem::Specification.new do |spec|
  spec.name          = "doctor_finder"
  spec.version       = DoctorFinder::VERSION
  spec.authors       = ["Bryan Hooper"]
  spec.email         = ["bryan@lindsayfarm.net"]

  spec.summary       = %q{DoctorFinder finds doctors.}
  spec.description   = %q{DoctorFinder is a CLI that asks for a zipcode and the returns a list of doctors.}
  spec.homepage      = "https://github.com/bthooper/doctor_finder"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = ["doctor_finder"]
  spec.require_paths = ["lib"]
  spec.license       = 'MIT'

  spec.add_runtime_dependency "nokogiri"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry", "~> 0"
end
