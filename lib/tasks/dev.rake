namespace :dev do
  desc "Configura um ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      spinner = TTY::Spinner.new("[:spinner] Apagando BD...")
      spinner.auto_spin # Automatic animation with default interval
    %x(rails db:drop)
    spinner.success('Concluído com sucesso') # Stop animation
    
    spinner = TTY::Spinner.new("[:spinner] Criando BD...")
      spinner.auto_spin # Automatic animation with default interval
    %x(rails db:create)
    spinner.success('Concluído com sucesso') # Stop animation 
    
    spinner = TTY::Spinner.new("[:spinner] Migrando Dados...")
      spinner.auto_spin # Automatic animation with default interval
    %x(rails db:migrate) 
    spinner.success('Concluído com sucesso') # Stop animation
    
    spinner = TTY::Spinner.new("[:spinner] Populando/preenchendo BD...")
      spinner.auto_spin # Automatic animation with default interval
    %x(rails db:seed)
    spinner.success('Concluído com sucesso') # Stop animation
  else
    puts "Você não está em ambiente de desenvolvimento!"  
    end
  
  end

end



