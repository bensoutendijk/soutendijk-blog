# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def random_color
    "%06x" % (rand * 0xffffff)
end

(1..12).each do |i|
    var_color1 = random_color
    var_color2 = random_color
    Article.create!(title: "Article #{i}", text: 'Lorem ipsum', average_color: "##{var_color1}", font_color: "##{var_color2}")
end

