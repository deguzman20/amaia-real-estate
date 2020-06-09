image_list = [
  Rails.root + "app/assets/images/slide1.jpg",
  Rails.root + "app/assets/images/slide2.jpg",
  Rails.root + "app/assets/images/slide3.jpg"
]

[
  {
    image: File.open(image_list[0])
  },
  {
    image: File.open(image_list[1])
  },
  {
    image: File.open(image_list[2])
  }
].each do |attributes|
  carousel = Carousel.new(attributes)
  carousel.save(validate: false)
end
puts "Successfully seeded carousels table... Proceeding..."
