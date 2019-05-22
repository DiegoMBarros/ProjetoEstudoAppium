# language: pt
Funcionalidade: Login Options
    Comentários

    Contexto:
        Dado que estive na tela de Intro
        E toquei no botão iniciar

    Cenário: Posso ir para a tela de Sign UP
        Dado que estou na tela de Login Options
        Quando tocar no botão sign up
        Então devo ver a tela de Sign UP

    Cenário: Posso ir para a tela de Sign In
        Dado que estou na tela de Login Options
        Quando tocar no botão sign in
        Então devo ver a tela de Sign In