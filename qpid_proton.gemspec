# -- encoding: utf-8 --
lib = File.expand_path('lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name        = "qpid_proton"
  s.version     = "0.37.0"
  s.licenses    = ['Apache-2.0']
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Darryl L. Pierce", "Alan Conway"]
  s.email       = ["proton@qpid.apache.org"]
  s.homepage    = "http://qpid.apache.org/proton"
  s.summary     = "Ruby language bindings for the Qpid Proton messaging framework"
  s.description = <<-EOF
Proton is a high performance, lightweight messaging library. It can be used in
the widest range of messaging applications including brokers, client libraries,
routers, bridges, proxies, and more. Proton is based on the AMQP 1.0 messaging
standard.
EOF

  s.extensions   = "ruby/ext/cproton/extconf.rb"
  s.files        = Dir[
                "ruby/LICENSE.txt",
                "ruby/ext/cproton/*.rb",
                # "ruby/ext/cproton/*.c",
                "ruby/lib/**/*.rb",
                "ruby/tests/**/*.rb",
                "ruby/examples/**/*"
                ]
  s.require_path = 'ruby/lib'
  s.required_ruby_version = '>=  1.9.3'
end
