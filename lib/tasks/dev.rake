namespace :dev do
  desc "Configura um ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
    show_spinner("Apagando BD...") {%x(rails db:drop)}   
    show_spinner("Criando BD...") {%x(rails db:create)}    
    show_spinner(" Migrando Dados...") {%x(rails db:migrate)}
    %x(rails dev:add_coins)    
    %x(rails dev:add_mining_types) 
       
    else
    puts "Você não está em ambiente de desenvolvimento!"  
    end  
  end

  desc "Cadastra as moedas"
  task add_coins: :environment do
    show_spinner("Cadastrando moedas...") do

      coins = 
        [
            {
            description: "Bitcoin",
            acronym: "BTC",
            url_image: "https://cdn.iconscout.com/icon/free/png-256/bitcoin-385-920570.png"
            },
        
            {
            description: "Dash",
            acronym: "DASH",
            url_image: "https://assets.coingecko.com/coins/images/19/large/dash-logo.png?1548385930"
            },
        
            {
            description: "Ethereaum",
            acronym: "ETH",
            url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Ethereum_logo_2014.svg/256px-Ethereum_logo_2014.svg.png"
            }

          ]

        coins.each do |coin|
          Coin.find_or_create_by!(coin)
        end
      end
  end

  desc "Cadastra os tipos de mineração"
  task add_mining_types: :environment do
    show_spinner("Cadastrando tipos...") do
      mining_types = [
        {description:'Proof of Work', acronym:'POW'},
        {description:'Proof of Stake', acronym:'POS'},
        {description:'Proof of Capacity', acronym:'POC'}
      ]

      mining_types.each do |mining_type|
        MiningType.find_or_create_by!(mining_type)
      end
    end
  end
  

  def show_spinner(msg_start, msg_end = "Concluído!")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin # Automatic animation with default interval
    yield 
    spinner.success("(#{msg_end})")
  end
end




