require_relative 'sistema'

solare = Sistema.new("sole")
solare.aggiungi_pianeta "terra"
solare.aggiungi_pianeta "marte"
solare.aggiungi_pianeta "giove"
solare.scrivi "solare.txt"

Navicella.new.logo
