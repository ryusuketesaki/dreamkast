FactoryBot.define do
  factory :track1, class: Track do
    id { 1 }
    number { 1 }
    name { "A" }
    conference_id { 1 }
    movie_url { "" }
  end

  factory :track2, class: Track do
    id { 2 }
    number { 2 }
    name { "B" }
    conference_id { 1 }
    movie_url { "" }
  end

  factory :track3, class: Track do
    id { 3 }
    number { 3 }
    name { "C" }
    conference_id { 1 }
    movie_url { "" }
  end

  factory :track4, class: Track do
    id { 4 }
    number { 4 }
    name { "D" }
    conference_id { 1 }
    movie_url { "" }
  end

  factory :track5, class: Track do
    id { 5 }
    number { 5 }
    name { "E" }
    conference_id { 1 }
    movie_url { "" }
  end

  factory :track6, class: Track do
    id { 6 }
    number { 6 }
    name { "F" }
    conference_id { 1 }
    movie_url { "" }
  end

  ["A", "B", "C", "D", "E", "F", "G"].each_with_index do |value, index|
    factory "cndo_track#{index + 1}".to_sym, class: Track do
      id { index + 10 }
      number { index + 1 }
      name { value }
      conference_id { 2 }
      movie_url { "" }
    end
  end
end