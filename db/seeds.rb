require 'faker'

#DELETE ALL
ActiveRecord::Base.connection.execute("DELETE FROM assembly_parts")
ActiveRecord::Base.connection.execute("DELETE FROM assemblies")
ActiveRecord::Base.connection.execute("DELETE FROM parts")
ActiveRecord::Base.connection.execute("DELETE FROM SQLITE_SEQUENCE")

#PART
20.times do
  part = Part.create!(part_number: Faker::Dessert.unique.topping)
end

#ASSEMBLY AND ASSEMBLYPART
10.times do
  assembly = Assembly.create!(name: Faker::Dessert.unique.variety)
end

10.times do
  assemblypart = AssemblyPart.create!(assembly_id: rand(1..Assembly.count), part_id: rand(1..Part.count))
end
