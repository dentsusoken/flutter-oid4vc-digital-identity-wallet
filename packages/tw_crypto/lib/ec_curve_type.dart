/// crv: EC identifier - Taken from the "COSE Elliptic Curves" registry
enum ECCurveType {
  p256(1),
  p384(2),
  p521(3);

  final int value;

  const ECCurveType(this.value);

  static ECCurveType fromValue(int value) {
    return ECCurveType.values.firstWhere((el) => el.value == value);
  }
}
