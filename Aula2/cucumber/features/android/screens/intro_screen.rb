class IntroScreen < BaseScreen
    # def verificar_se_estou_na_screen
    def initialize
        # $driver.wait_true(5) { $driver.exists { $driver.find_element(:id, 'activity_intro')} }
        #Dicionário 
        @trait = 'activity_intro'
        @botao_iniciar = 'start_app'

        verificar_se_estou_na_screen(@trait)
    end

    def tocar_no_botao_iniciar
        # start_app = $driver.find_element(:id, @botao_iniciar)
        # start_app.click  - Migrei para dentro da BaseScreen
        tocar_botao(@botao_iniciar)
    end
end