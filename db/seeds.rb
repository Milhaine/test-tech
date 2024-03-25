# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

Restaurant.create(name:"Chez Didi", address:"7 rue henry", phone_number:"0687677658", category:"italian")
Restaurant.create(name:"Chez lulu", address:"1 rue de la liberté", phone_number:"0678987658", category:"french")
Restaurant.create(name:"Bon app", address:"9 rue super", phone_number:"068765468", category:"belgian")
Restaurant.create(name:"Miam", address:"6 av du top", phone_number:"069865467", category:"chinese")
Restaurant.create(name:"Bon", address:"1 rue mémé", phone_number:"98756757678", category:"japanese")
