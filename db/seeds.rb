require 'faker'

City.destroy_all
User.destroy_all
Gossip.destroy_all
Tag.destroy_all
PrivateMessage.destroy_all
JoinTablePmToRecipient.destroy_all
JoinTableTagToGossip.destroy_all


10.times do 
    City.create!(
        name: Faker::Address.city,
        zip_code: Faker::Address.zip_code
    )
end

10.times do
    User.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name, description: Faker::Games::Pokemon.move,
        email: Faker::Internet.email,
        age: Faker::Number.between(from: 7, to: 77),
        city_id: City.all.sample.id
    )
end

20.times do
    Gossip.create!(
        title: Faker::Quote.most_interesting_man_in_the_world,
        content: Faker::Lorem.paragraph,
        user_id: User.all.sample.id
    )
end

10.times do
    Tag.create!(
        title: Faker::Emotion.noun
    )
end

10.times do
    JoinTableTagToGossip.create!(
        gossip_id: Gossip.all.sample.id,
        tag_id: Tag.all.sample.id
    )
end

20.times do
    pm = PrivateMessage.create!(
        content: Faker::Lorem.paragraph,
        sender_id: User.all.sample.id
    )
    rand(1..3).times do
        JoinTablePmToRecipient.create!(
            private_message: pm,
            recipient_id: User.all.sample.id
        )
    end
end

=begin
20.times do
    Comment.create!(
        content: Faker::Lorem.paragraph
    )
end

20.times do
    Like.create!(
    )
end
=end