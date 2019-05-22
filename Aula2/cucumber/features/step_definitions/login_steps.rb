Dado("que estou/estive na tela de Login Options") do
    wait_true(5) { exists { find_element(:id, 'activity_login_option')} }
end
  
Quando("tocar/toquei no botão sign up") do
    sign_up = find_element(:id, 'sign_up')
    sign_up.click
end

Quando("tocar/toquei no botão sign in") do
    sign_in = find_element(:id, 'sign_in')
    sign_in.click
end

Então("devo ver a tela de Sign UP") do
    wait_true(5) { exists { find_element(:id, 'activity_sign_up') } }
end

Então("devo ver a tela de Sign In") do
    wait_true(5) { exists { find_element(:id, 'activity_login') } }
end