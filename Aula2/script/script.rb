#!/usr/bin/env ruby

require 'appium_lib'

#1 - Saber quais caps queremos na nossa sessão (appium.txt)
caps_path = File.join(File.dirname(__FILE__), 'appium.txt')
caps = Appium.load_appium_txt file: caps_path, verbose: true
#2 - Criar um cliente e usar as caps
Appium::Driver.new caps, true

#3 - Iniciar a sessão
$driver.start_driver

#Estando na tela Intro
$driver.wait_true(5) { $driver.exists { $driver.find_element(:id, 'activity_intro')} }

#Ação
start_app = $driver.find_element(:id, 'start_app')
start_app.click

#Estando na tela de login option
$driver.wait_true(5) { $driver.exists { $driver.find_element(:id, 'activity_login_option')} }

#Ação
sign_up = $driver.find_element(:id, 'sign_up')
sign_up.click

#Quero ir para atel de inscrição
$driver.wait_true(5) { $driver.exists { $driver.find_element(:id, 'activity_sign_up')} }

#quero digitar meu nome
fullname = $driver.find_element(:id, 'fullname')
fullname.send_keys("Diego Macêdo")
$driver.back

#4 - Fechar a sessão
$driver.driver_quit