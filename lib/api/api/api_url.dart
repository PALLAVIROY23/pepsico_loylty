class AppUrl {
  // static const String BaseUrl = "http://43.204.43.7:4009";
  static const String BaseUrl = "https://pepsicoapi.almonds.ai/api";
  static const String LOGIN_URL = "$BaseUrl/auth/login-with-number";
  static const String OTP_VERIFY = "$BaseUrl/auth/otp-verify";
  static const String RETAILER_PROFILE = "$BaseUrl/auth/user";
  static const String REDEEM_CATALOGUE = "$BaseUrl/data/products?page=1&size=10";
  static const String STATE_AREA = "$BaseUrl/data/areas";
  static const String STATE_AREA_WITH_CITY = "$BaseUrl//data/city";
  static const String  ALL_DATA_ZONES = "$BaseUrl//data/zones";
  static const String  GET_CITY = "$BaseUrl/data/getcityByStateId";

}
