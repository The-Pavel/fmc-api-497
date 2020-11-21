# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
stories = [
  {title: "Rails", content: "never use scaffold", image: "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=968798453,3747873039&fm=26&gp=0.jpg" },
  {title: "wXMP", content: "why is not everything called params", image: "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=968798453,3747873039&fm=26&gp=0.jpg" },
  {title: "JS", content: "Fake inbox livecode", image: "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=968798453,3747873039&fm=26&gp=0.jpg" },
  {title: "HTML", content: "russian dolls of divs", image: "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=968798453,3747873039&fm=26&gp=0.jpg" }
]

Story.destroy_all
Story.create!(stories)
