namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.production?
      puts "Você não está em ambiente de desenvolvimento/teste"
    else 
      show_spinner("Apagando BD...") do
        %x(rails db:drop)
      end

      show_spinner("Criando BD...") { %x(rails db:create) }
      show_spinner("Migrando BD...") { %x(rails db:migrate) }
      show_spinner("Populando BD...") { %x(rails db:seed)}
    end
  end
  private 
  def show_spinner(msg)
    spinner = TTY::Spinner.new("[:spinner] #{msg}")
    spinner.auto_spin
    yield
    spinner.success('Concluído!')
  end
end
