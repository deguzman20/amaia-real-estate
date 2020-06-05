image_list = [
  Rails.root + "app/assets/images/sellers/Alyssa Joy Daroy.jpeg",
  Rails.root + "app/assets/images/sellers/Francheska Joyce Herrera.png",
  Rails.root + "app/assets/images/sellers/Gabriel_Ysrael.png",
  Rails.root + "app/assets/images/sellers/Jay-ar T. Hechanova.png",
  Rails.root + "app/assets/images/sellers/Jobelle Muñoz.png",
  Rails.root + "app/assets/images/sellers/Karla Camille Reyes.png",
  Rails.root + "app/assets/images/sellers/Rodelio de Roxas.png",
  Rails.root + "app/assets/images/sellers/Yanah Mendoza.png",
]

[
  {
    first_name: 'Alyssa Joy',
    middle_name: '',
    last_name: 'Daroy',
    image: File.open(image_list[0])
  },
  {
    first_name: 'Francheska Joyce',
    middle_name: '',
    last_name: 'Herrera',
    image: File.open(image_list[1])
  },
  {
    first_name: 'Gabriel',
    middle_name: '',
    last_name: 'Ysrael',
    image: File.open(image_list[2])
  },
  {
    first_name: 'Jay-ar',
    middle_name: '',
    last_name: 'Hechanova',
    image: File.open(image_list[3])
  },
  {
    first_name: 'Jobelle',
    middle_name: '',
    last_name: 'Muñoz',
    image: File.open(image_list[4])
  },
  {
    first_name: 'Karla Camille',
    middle_name: '',
    last_name: 'Reyes',
    image: File.open(image_list[5])
  },
  {
    first_name: 'Rodelio',
    middle_name: '',
    last_name: 'De Roxas',
    image: File.open(image_list[6])
  },
  {
    first_name: 'Yanah',
    middle_name: '',
    last_name: 'Mendoza',
    image: File.open(image_list[7])
  }
].each do |attributes|
  seller = Seller.new(attributes)
  seller.save(validate: false)
end
