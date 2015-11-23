require 'open-uri'
require 'json'

loop do
     puts "Entrer un numero de code barre:"
     bar_code = gets.chomps

     url= "http://fr.openfoodfacts.org/api/v0/produit/#{bar_code}.json"

     json = open(url).read

     data = JSON.parse(json)

     puts data['product']['product_name']

end