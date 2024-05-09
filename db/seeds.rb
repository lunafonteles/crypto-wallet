# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

=begin
Coin.create!(
    [
        {
            description: "Bitcoin",
            acronym: "BTC",
            url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/800px-Bitcoin.svg.png"
        },

        {
            description: "Ethereum",
            acronym: "ETH",
            url_image: "https://help.vaerdex.ch/hc/article_attachments/360016404440"
        },
        {
            description: "Dash",
            acronym: "DASH",
            url_image: "https://s2.coinmarketcap.com/static/img/coins/200x200/131.png"
        }
    ]
)
=end

minningType  = [
    {
        description: "Proof of Work",
        acronym: "PoW"
    },
    {
        description: "Proof of Stake",
        acronym: "PoS"
    },
    {
        description: "Proof of Capacity",
        acronym: "PoC"
    },
]

minningType.each do |mt|
    MinningType.find_or_create_by!(mt)
end

coins = [
    {
        description: "Bitcoin",
        acronym: "BTC",
        url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/800px-Bitcoin.svg.png",
        minning_type: MinningType.all.sample
    },

    {
        description: "Ethereum",
        acronym: "ETH",
        url_image: "https://help.vaerdex.ch/hc/article_attachments/360016404440",
        minning_type: MinningType.all.sample
    },
    {
        description: "Dash",
        acronym: "DASH",
        url_image: "https://s2.coinmarketcap.com/static/img/coins/200x200/131.png",
        minning_type: MinningType.all.sample
    }
]

coins.each do |coin|
    Coin.find_or_create_by!(coin)
end
