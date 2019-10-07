module ApplicationHelper
    def date_br(date_us)
        date_us.strftime("%d/%m/%Y")
    end
    def
        application_name
        "Crypto Wallet APP"
    end

    def ambiente_rails
        if Rails.env.development?
            "Desenvolvimento"
        elsif Rails.env.production?
            "Produção"
        else
            "teste"
        end
    end

        
end
