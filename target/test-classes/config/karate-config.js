function fn() {
    var config = {};

    // URL base de tu API
    config.baseUrl = 'https://reqres.in/api';

    // Headers globales (opcional)
    config.headers = { 'Content-Type': 'application/json' };

    return config;
}