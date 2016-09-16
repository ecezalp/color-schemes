FactoryGirl.define do
  factory :color do
    color_name {Faker::Color.hex_color}
  end
end

FactoryGirl.define do
  factory :scheme do
    scheme_name {Faker::Hipster.word}
    creator_id { rand(1..5) }
    excerpt_id { rand(1..5) }
  end
end


FactoryGirl.define do
  factory :color_scheme_with_colors, :parent => :color_scheme do |color_scheme|
    colors { build_list :color, 3 }
  end
end

FactoryGirl.define do
  factory :excerpt do
    content {Faker::Hipster.sentence}
  end
end

FactoryGirl.define do
  factory :user do
    username {Faker::Hipster.word}
    first_name {Faker::Name.first_name}
    last_name {Faker::Name.last_name}
  end
end
