Dado("que naveguei até a tela de sign up") do
    # Neste contexto foram acumulados todos os passos que é necessário para se chegar no contexto acima
    steps(%"
        E que estive na tela de Intro
        E toquei no botão iniciar
        E que estou na tela de Login Options
        E tocar no botão sign up
        ")
end
  
Dado("que estou na tela Sign UP") do
    $driver.wait_true(5) { $driver.find_element(:id, 'activity_sign_up') }
end
  
Quando("inserir {string} no campo de nome completo") do |nome|
    fullname = $driver.find_element(:id, 'fullname')
    fullname.send_keys(nome)
    $driver.back
end