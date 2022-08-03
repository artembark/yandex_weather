const String kApiVersion = 'v2';
const String kApiAuthority = 'api.weather.yandex.ru';
const String kApiPath = '/$kApiVersion/informers';
const Duration kRequestTimeLimit = Duration(milliseconds: 60000);

// Json keys
const String kLang = 'lang';
const String kLat = 'lat';
const String kLon = 'lon';

const String kApiKeyHeader = 'X-Yandex-API-Key';
