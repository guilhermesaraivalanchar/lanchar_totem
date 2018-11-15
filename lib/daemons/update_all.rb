# encoding: utf-8

#!/usr/bin/env ruby

# You might want to change this
ENV["RAILS_ENV"] ||= "production"

root = File.expand_path(File.dirname(__FILE__))
root = File.dirname(root) until File.exists?(File.join(root, 'config'))
Dir.chdir(root)

require File.join(root, "config", "environment")

$running = true
Signal.trap("TERM") do
  $running = false
end

while($running) do
  # Buscando todos os incidentes atrasados

  log = Logger.new("#{Rails.root}/log/incidente_8dias.log", 1, 3242880000)
  log.info "DESGRASAAAAfgrse grsd grsdg rA"
  
  u = User.last
  
  log.info u.inspect

  sleep 300
end