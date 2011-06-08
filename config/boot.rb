require 'rubygems'
require 'eventmachine'

# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])

EventMachine.run do
    EM.add_periodic_timer(1) { puts "Tick ..." }

    EM.add_timer(3) do
        puts "I waited 3 seconds"
        EM.stop_event_loop
    end
end