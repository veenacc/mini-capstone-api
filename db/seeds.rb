# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# product1 =Product.new(name:"apple", price:1, image_url:"https://domf5oio6qrcr.cloudfront.net/medialibrary/11525/0a5ae820-7051-4495-bcca-61bf02897472.jpg" ,description:"Red delicious apple")
# product1.save

# product2 =Product.new(name:"Orange", price:2, image_url:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Orange-Fruit-Pieces.jpg/2560px-Orange-Fruit-Pieces.jpg" ,description:"Juicy healthy oranges")
# product2.save

# product3 =Product.new(name:"grapes", price:5, image_url:"https://canadianfoodfocus.org/wp-content/uploads/2020/09/table-grapes.jpg" ,description:"bunch of grapes")
# product3.save

# product4 =Product.new(name:"peach", price:2, image_url:"https://www.amproduce.ca/wp-content/uploads/2023/05/46.jpg" ,description:"Juicy healthy peaches")
# product4.save

# product5 =Product.new(name:"Banana", price:1, image_url:"https://www.shutterstock.com/image-photo/banana-cluster-isolated-600nw-575528746.jpg" ,description:"yellow bananas")
# product5.save

############################ Add supplier data
# supplier1 =Supplier.new(name:"supplier1", email:"sup1@gmail.com", phone_number:"777-999")
# supplier1.save

# supplier2 =Supplier.new(name:"supplier2", email:"sup2@gmail.com", phone_number:"888-555")
# supplier2.save

# supplier3 =Supplier.new(name:"supplier3", email:"sup3@gmail.com", phone_number:"999-777")
# supplier3.save

################ Add data to images table

# image1 =Image.new(url:"https://domf5oio6qrcr.cloudfront.net/medialibrary/11525/0a5ae820-7051-4495-bcca-61bf02897472.jpg", product_id:1)
# image1.save

# image2 =Image.new(url:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Orange-Fruit-Pieces.jpg/2560px-Orange-Fruit-Pieces.jpg", product_id:2)
# image2.save

# image3 =Image.new(url:"https://canadianfoodfocus.org/wp-content/uploads/2020/09/table-grapes.jpg", product_id:3)
# image3.save

# image3 =Image.new(url:"https://media.post.rvohealth.io/wp-content/uploads/2022/01/grapes-732x549-thumbnail.jpg", product_id:3)
# image3.save