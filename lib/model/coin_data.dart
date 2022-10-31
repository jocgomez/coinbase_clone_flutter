class CoinData {
  final num time;
  final num high;
  final num low;
  final num open;
  final num volumefrom;
  final num volumeto;
  final num close;
  final String conversionType;
  final String conversionSymbol;

  CoinData({
    required this.time,
    required this.high,
    required this.low,
    required this.open,
    required this.volumefrom,
    required this.volumeto,
    required this.close,
    required this.conversionType,
    required this.conversionSymbol,
  });

  factory CoinData.fromMap(Map<String, dynamic> map) {
    return CoinData(
      time: map['time'],
      high: map['high'],
      low: map['low'],
      open: map['open'],
      volumefrom: map['volumefrom'],
      volumeto: map['volumeto'],
      close: map['close'],
      conversionType: map['conversionType'],
      conversionSymbol: map['conversionSymbol'],
    );
  }
}
