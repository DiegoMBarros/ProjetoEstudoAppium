class LoginOptionsScreen < BaseScreen
    # def verificar_se_estou_na_screen
    def initialize
        # $driver.wait_true(5) { $driver.exists { $driver.find_element(:id, 'activity_login_option')} }
        verificar_se_estou_na_screen('activity_login_option')
    end
end