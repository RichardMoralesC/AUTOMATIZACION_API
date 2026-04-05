function fn() {
  var config = {};

  config.baseUrl = 'https://api.apis.guru/v2/';
  config.providers = '1forge.com';
 config.api = '0.0.1';
  
  // Headers globales
  config.headers = {
    'Content-Type': 'application/json'
  };
  return config;
}