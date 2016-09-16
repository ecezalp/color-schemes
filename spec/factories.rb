FactoryGirl.define do
  factory :color do
    color_name {Faker::Color.hex_color}
  end
end


FactoryGirl.define do
  factory :color_scheme_with_colors, :parent => :color_scheme do |color_scheme|
    colors { build_list :color, 3 }
  end
end

FactoryGirl.define do
  factory_girl :excerpt do
    content "Blah Blah Blah"
  end
end

FactoryGirl.define do
  factory_girl :user do
    username "alex_s"
    password "1234"
    first_name "alex"
    last_name "sanborn"
  end
end
