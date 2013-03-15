require_relative './sistema.rb'

navicella001 = Navicella.new
logo =navicella001.logo

file = File.new("logo.gif","wb")
file.write(logo)
file.close
