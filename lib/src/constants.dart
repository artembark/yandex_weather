const String kApiVersion = 'v2';
const String kApiAuthority = 'api.weather.yandex.ru';
const String kApiPath = '/$kApiVersion/informers';
const Duration kRequestTimeLimit = Duration(milliseconds: 60000);

// Json keys
const String kLang = 'lang';
const String kLat = 'lat';
const String kLon = 'lon';

const String kApiKeyHeader = 'X-Yandex-API-Key';

const String jsonMock =
    '{"now":1470220206,"now_dt":"2016-08-03T10:30:06.238Z","info":{"lat":55.833333,"lon":37.616667,"url":"https://yandex.ru/pogoda/moscow"},"fact":{"temp":20,"feels_like":21,"icon":"ovc","condition":"overcast","wind_speed":2,"wind_gust":5.9,"wind_dir":"n","pressure_mm":745,"pressure_pa":994,"humidity":83,"daytime":"d","polar":false,"season":"summer","obs_time":1470214800},"forecast":{"date":"2016-08-03","date_ts":1522702800,"week":15,"sunrise":"04:38","sunset":"20:31","moon_code":1,"moon_text":"moon-code-1","parts":[{"part_name":"day","temp_min":20,"temp_max":21,"temp_avg":21,"feels_like":23,"icon":"bkn_n","condition":"cloudy","daytime":"n","polar":false,"wind_speed":0.9,"wind_gust":4,"wind_dir":"nw","pressure_mm":746,"pressure_pa":995,"humidity":81,"prec_mm":0,"prec_period":360,"prec_prob":0},{"part_name":"evening","temp_min":20,"temp_max":21,"temp_avg":21,"feels_like":23,"icon":"bkn_n","condition":"cloudy","daytime":"n","polar":false,"wind_speed":0.9,"wind_gust":4,"wind_dir":"nw","pressure_mm":746,"pressure_pa":995,"humidity":81,"prec_mm":0,"prec_period":360,"prec_prob":0}]}}';
