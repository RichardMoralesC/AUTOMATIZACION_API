Feature: Providers API


Scenario: Validar detalle de provider 1password.com

    Given url baseUrl + providers + '.json'
    When method get
    Then status 200

Scenario: Enumera todos los nombres de servicio

    Given url baseUrl + providers + '/services.json'
    When method get
    Then status 200

Scenario: Listar todas las API

    Given url baseUrl + 'list.json'
    When method get
    Then status 200
Scenario: Recuperar una versión de una API específica

    Given url baseUrl + 'specs/' + providers + '/' + api  + '.json'
    When method get
    Then status 200