module WelcomeHelper
    def ambiente_rails
        if Rails.env.development?
            t('dev')
        elsif Rails.env.production?
            t('prod')
        else 
            t('test')
        end
    end
end
