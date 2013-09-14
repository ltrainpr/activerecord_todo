require 'faker'

module FakeIt
  def self.make_data
    10.times do
      desc = Faker::Name.name
      comp = [true,false].sample
      Task.create!(description: desc, complete: comp)
    end
  end
end
