# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Listing.create!(name: 'Unusual Garran & Drywiz', quality: 'Mythical', desc: 'The International 2013. Evil and ill intention are obvious in every gesture of this despicable duo.', picture: 'http://steamcommunity-a.akamaihd.net/economy/image/W_I_5GLm4wPcv9jJQ7z7tz_l_0sEIYUhRfbF4arNQkgGQGKd3kMuVpk7GxtD5A3Fck6e3OlUVfbUCw02CJawQkuzP6iU-VyvUtNIaNpaNW4L24z2jk8UAXTfVuMQXoZ968zL0Q2_CAGTfzdry94Dg_DNiJTRWa7TrUC1JB0wjbNK8MqOFA/360fx360f', game: 'Dota 2', price: '40', user_id: '1')
Listing.create!(name: 'Genuine Hwytty & Shyzzyrd', quality: 'Mythical', desc: "'We encountered unexpected delays!' the old rider croaked, but his words did nothing to lessen the curse-wife's displeasure. In an instant, the perpetually tardy partnership found itself vendor-swapped! Despite his many infirmities, the elder Hwytty must now strap on Shyzzyrd's saddlebags. And it's plain to see who wears the magic hat in this relationship!", picture: 'http://steamcommunity-a.akamaihd.net/economy/image/W_I_5GLm4wPcv9jJQ7z7tz_l_0sEIYUhRfbF4arNQkgGQGKd3kMuVpk7GxtD5A3Fck6e3OlUVeDIFwM0A6foT168JqmylBnwD59DddpuPHYm35ut2xRbO2aOT-dWXL8pvZvHvVboT1TEZzM1mokDh_XHhs_VWqbVoEexJlAk0eU_X8gWnhlUZ2I1z2dncqYiMVBT6wUzZnZRfsE/360fx360f', game: 'Dota 2', price: '60', user_id: '2')
Listing.create!(name: 'Genuine Shagbark the Plush', quality: 'Legendary', desc: "Shagbark is a trusty forest familiar who lives for the thrill of delivery. Fond of secrets and artifacts, he hopes you'll never finish farming.", picture: 'http://steamcommunity-a.akamaihd.net/economy/image/W_I_5GLm4wPcv9jJQ7z7tz_l_0sEIYUhRfbF4arNQkgGQGKd3kMuVpMgCwRZrhyFY1OZ0v4CeevbBQw4CJOwVUy8M6-M1EKeV9FVfdErPzlNiNG8gUxBACGEUeRFDIZ4tMvD2wvvDQfAKDc0nYVSgaDL0s-ACriQ90Xx_MFAHQ/360fx360f', game: 'Dota 2', price: '50', user_id: '3')
Listing.create!(name: 'Dragonclaw Hook', quality: 'Immortal', desc: "Sithil's Summer Stash 2012. The claw from a black dragon's left toe. The only piece of the beast that survived an encounter with Pudge's voracious hunger.", picture: 'http://steamcommunity-a.akamaihd.net/economy/image/W_I_5GLm4wPcv9jJQ7z7tz_l_0sEIYUhRfbF4arNQkgGQGKd3kMuVpMgCwRZrg-fckaVmPxYbuTfPR0yH5T6UkuzC6WCyUKeWd9DY-tpOH0e2ce-jxtEBiODAOBACoQsupvBhwvtWADFejZuzI5VgPTNhZLdXKHZ_BC0bkMuhAcDY6l_/360fx360f', game: 'Dota 2', price: '250', user_id: '4')
Listing.create!(name: 'Treasure Key', quality: 'Common', desc: 'Used to open locked Treasure Chests. Double click or right-click the key in your backpack and select the chest you want to open.', picture: 'http://steamcommunity-a.akamaihd.net/economy/image/W_I_5GLm4wPcv9jJQ7z7tz_l_0sEIYUhRfbF4arNQkgGQGKd3kMuVo47AQVZrguYc0CDwv5IVeDSBx0tJZP6X3uxNb-Kwwf0WNMUeYExYGtLiYvqjxsbBXSCVuRCDtF4uZqR1wnqCQKTe2A6yd9QnLOQ19r5vY6F/360fx360f', game: 'Dota 2', price: '4', user_id: '5')

User.create!(password: '11111111', email: '1@email.com', nickname: 'ONE', steam_id: '1xONE', paypal: 'pp1')
User.create!(password: '11111111', email: '2@email.com', nickname: 'TWO', steam_id: '2xTWO', paypal: 'pp2')
User.create!(password: '11111111', email: '3@email.com', nickname: 'THREE', steam_id: '3xTHREE', paypal: 'pp3')
User.create!(password: '11111111', email: '4@email.com', nickname: 'FOUR', steam_id: '4xFOUR', paypal: 'pp4')
User.create!(password: '11111111', email: '5@email.com', nickname: 'FIVE', steam_id: '5xFIVE', paypal: 'pp5')
User.create!(password: 'qweqweqwe', email: 'test@admin.com', nickname: 'nicks', steam_id: 'steams', paypal: 'paypals', admin: 'true')