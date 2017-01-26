require 'git'

URI = 'git@github.com:Bijiabo/learn-ruby-git.git'
NAME = 'learn-ruby-git-test'

=begin
puts 'start clone'
g = Git.clone(URI, NAME, :path => './tmp/checkout')
puts 'clone finished.'
=end

g = Git.open('./tmp/checkout/learn-ruby-git-test')

puts 'run pull'
g.pull
puts 'pull end'

puts g.tags
puts g.tags[0]
g.checkout g.tags[0]