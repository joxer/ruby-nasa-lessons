require 'net/http'

class Sistema
  def initialize(stella)
    @stella = stella
    @pianeti = []
  end
  def stella #metodo get
    @stella end
  def stella=(nuova_stella) #metodo set
     @stella = nuova_stella
  end
  def aggiungi_pianeta(pianeta)
    @pianeti << pianeta
  end
  def pianeti
    @pianeti
  end
  
  def ritorna_primi_cinque_pianeti
    @pianeti[0..4]
  end

  def missione
    @pianeti.each do |x|
      yield(x)
    end
  end

  def scrivi(file)
    file = File.new(file,"w")
    file.puts "sole="+stella
    0.upto(@pianeti.length-1) do |index|
      file.puts @pianeti[index]
    end
    file.close
  end
  
  def self.leggi(file)
    file = File.new(file,"r")
    sole = file.gets.chomp
    sole = sole.split("=")[1]
    pianeti = []
    while (pianeta = file.gets) != nil
      pianeti << pianeta.chomp
    end
    file.close

      sistema = Sistema.new(sole)
      pianeti.each do |pianeta|
        sistema.aggiungi_pianeta pianeta
      end
      sistema
    end
  end
   
  class Navicella
    
    def initialize(site="nasa.gov")
      @site = site
    end
    
  def logo
    Net::HTTP.get('www.nasa.gov', '/templateimages/redesign/modules/header/header_logo.gif')
  end
end
