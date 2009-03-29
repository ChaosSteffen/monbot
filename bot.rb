require 'rubygems'
require 'twibot'

i = 0
`ps -A | grep apache`.each_line do |l|
  unless l.include?('grep')
    i += 1
  end
end

if i == 0
  post_tweet "@yourtwittername I'm dead!"
end