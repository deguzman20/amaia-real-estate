image_list = [
  Rails.root + "app/assets/images/condo-1.jpg",
  Rails.root + "app/assets/images/condo-2.jpg",
  Rails.root + "app/assets/images/condo-3.jpg",
  Rails.root + "app/assets/images/condo-4.jpg",
  Rails.root + "app/assets/images/condo-5.jpg",
  Rails.root + "app/assets/images/condo-6.jpg",
  Rails.root + "app/assets/images/condo-7.jpg",
  Rails.root + "app/assets/images/condo-8.jpg",
  Rails.root + "app/assets/images/house-and-lot-1.jpg",
  Rails.root + "app/assets/images/house-and-lot-2.jpg",
  Rails.root + "app/assets/images/house-and-lot-3.jpg",
  Rails.root + "app/assets/images/house-and-lot-4.jpg",
  Rails.root + "app/assets/images/house-and-lot-5.jpg",
  Rails.root + "app/assets/images/house-and-lot-6.jpg",
  Rails.root + "app/assets/images/townhouse-1.jpg"
]

[
  {
    specific_location: "Shaw",
    image: File.open(image_list[0]),
    price_from: "1700000",
    price_to: "3400000",
    unit_type_id: 1,
    unit_size_from: "18.6",
    unit_size_to: "36.20",
    city_id: 77,
    type_id: 3
  },
  {
    specific_location: "Sta. Mesa",
    image: File.open(image_list[1]),
    price_from: "1900000",
    price_to: "3400000",
    unit_type_id: 1,
    unit_size_from: "18.6",
    unit_size_to: "32",
    city_id: 79,
    type_id: 3
  },
  {
    specific_location: "Avenida",
    image: File.open(image_list[2]),
    price_from: "1900000",
    price_to: "3400000",
    unit_type_id: 1,
    unit_size_from: "18",
    unit_size_to: "32.7",
    city_id: 79,
    type_id: 3
  },
  {
    specific_location: "Bicutan",
    image: File.open(image_list[3]),
    price_from: "2100000",
    price_to: "2900000",
    unit_type_id: 1,
    unit_size_from: "23",
    unit_size_to: "44",
    city_id: 96,
    type_id: 4
  },
  {
    specific_location: "Sucat",
    image: File.open(image_list[4]),
    price_from: "2300000",
    price_to: "2900000",
    unit_type_id: 1,
    unit_size_from: "23",
    unit_size_to: "42",
    city_id: 96,
    type_id: 4
  },
  {
    specific_location: "Pasig",
    image: File.open(image_list[5]),
    price_from: 2_000_000,
    price_to: 3_600_000,
    unit_type_id: 1,
    unit_size_from: "23",
    unit_size_to: "42",
    city_id: 98,
    type_id: 4
  },
  {
    specific_location: "Cubao",
    image: File.open(image_list[6]),
    price_from: "1700000",
    price_to: "3400000",
    unit_type_id: 1,
    unit_size_from: "18",
    unit_size_to: "34",
    city_id: 101,
    type_id: 3
  },
  {
    specific_location: "Nuvali",
    image: File.open(image_list[7]),
    price_from: "3000000",
    price_to: "7000000",
    unit_type_id: 1,
    unit_size_from: "31",
    unit_size_to: "73",
    city_id: nil,
    type_id: 4
  },
  {
    specific_location: "Pampanga",
    image: File.open(image_list[8]),
    price_from: "1100000",
    price_to: "1700000",
    unit_type_id: 2,
    unit_size_from: "25",
    unit_size_to: "75",
    city_id: nil,
    type_id: 1
  },
  {
    specific_location: "San Fernando",
    image: File.open(image_list[9]),
    price_from: "900000",
    price_to: "2500000",
    unit_type_id: 2,
    unit_size_from: "25",
    unit_size_to: "75",
    type_id: 1
  },
  {
    specific_location: "Bulacan",
    image: File.open(image_list[10]),
    price_from: "1600000",
    price_to: "3000000",
    unit_type_id: 2,
    unit_size_from: "25",
    unit_size_to: "75",
    type_id: 1
  }
].each do |attributes|
  u = Unit.new(attributes)
  u.save(validate: false)
end
puts "Successfully seeded units table... Proceeding..."