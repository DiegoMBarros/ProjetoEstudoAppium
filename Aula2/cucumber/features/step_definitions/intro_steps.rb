Dado("que estou/estive na tela de Intro") do
    @page = IntroScreen.new
    # @page.verificar_se_estou_na_screen
end
  
Quando("tocar/toquei no botão iniciar") do
    # page = IntroScreen.new
    @page.tocar_no_botao_iniciar   
end
  
Então("devo ver a tela de Login Options") do
    LoginOptionsScreen.new
    # @entao = LoginOptionsScreen.new
    # @entao.verificar_se_estou_na_screen - Com o initialize não é mais necessário chamar o método
end