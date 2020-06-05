# if UnitType.count.zero?
UnitType.create([
                  {
                    name: "Condominium"
                  },
                  {
                    name: "House and Lot"
                  },
                  {
                    name: "Townhouse"
                  }
                ])
puts "Successfully seeded unit type table... Proceeding..."
# else
#   puts "City table has already been seeded... Proceeding..."
# end
