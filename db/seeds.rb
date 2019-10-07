# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Coin.create!(
    description: "Bitcoin",
    acronym: "BTC",
    url_image: "https://cdn.iconscout.com/icon/free/png-256/bitcoin-385-920570.png"
)

Coin.create!(
    description: "Dash",
    acronym: "DASH",
    url_image: "https://assets.coingecko.com/coins/images/19/large/dash-logo.png?1548385930"

)

Coin.create!(
    description: "Ethereaum",
    acronym: "ETH",
    url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Ethereum_logo_2014.svg/256px-Ethereum_logo_2014.svg.png"

)
