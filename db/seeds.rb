# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Profile.create(id: 2, user_id: 2, user_name: "dany_boy", age: 33, heights: 5.5, weights: 165, city: "Brooklyn", country: "USA")
# Profile.create(id: 3, user_id: 3, user_name: "dany_boy", age: 33, heights: 5.5, weights: 165, city: "Brooklyn", country: "USA")
# Profile.create(id: 4, user_id: 4, user_name: "dany_boy", age: 33, heights: 5.5, weights: 165, city: "Brooklyn", country: "USA")
# Profile.create(id: 5, user_id: 5, user_name: "dany_boy", age: 33, heights: 5.5, weights: 165, city: "Brooklyn", country: "USA")
# Profile.create(id: 6, user_id: 6, user_name: "dany_boy", age: 33, heights: 5.5, weights: 165, city: "Brooklyn", country: "USA")
# Profile.create(id: 7, user_id: 7, user_name: "dany_boy", age: 33, heights: 5.5, weights: 165, city: "Brooklyn", country: "USA")
# Profile.create(id: 8, user_id: 8, user_name: "dany_boy", age: 33, heights: 5.5, weights: 165, city: "Brooklyn", country: "USA")

# User.create!([
    # {user_name: "ronen1", email: "ronen1@localhost", password: "123456", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-12-31 22:27:09", last_sign_in_at: "2014-12-31 22:27:09", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", date_of_birth: "1980-05-30 00:00:00"}
    # {user_name: "ronen2", email: "ronen2@localhost", password: "123456", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-12-31 22:27:09", last_sign_in_at: "2014-12-31 22:27:09", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", date_of_birth: "1980-05-30 00:00:00"}
    # {user_name: "ronen3", email: "ronen3@localhost", password: "123456", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-12-31 22:27:09", last_sign_in_at: "2014-12-31 22:27:09", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", date_of_birth: "1980-05-30 00:00:00"}
    # {user_name: "ronen4", email: "ronen4@localhost", password: "123456", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-12-31 22:27:09", last_sign_in_at: "2014-12-31 22:27:09", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", date_of_birth: "1980-05-30 00:00:00"}

#   ])
# 50.times do 
# 	User.create!(
#     :user_name  => Faker::Name.name.to_s,
#     :email => Faker::Internet.email.to_s,
#     :password => 123456,
#     :encrypted_password => "$2a$10$cHyiV6SD/vdO674gzqZCP.mbSMjcct.gU..aS2Vi7nA.DZ8bILjZy",
#     :date_of_birth => Faker::Date.birthday(18, 65),
#     :height => 5.5,
#     :intrested_in => "Both",
#     :sex => "w",
#     :country => "United States",
#     :state => "NY",
#     :city => "New York",
#     :one_liner => Faker::Seinfeld.quote.to_s,
#     :avatar => Faker::Avatar.image
# 	)
# end

# User.destroy_all