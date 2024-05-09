module ApplicationHelper
    def data_br(data_us)
        data_us.strftime("%d/%m/%Y")
    end

    def idioma()
        I18n.locale == :en ? "Inglês" : "Português-BR"
    end
end
