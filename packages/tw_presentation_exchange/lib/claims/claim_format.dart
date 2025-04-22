enum JWTType {
  jwt('jwt'),
  jwtVc('jwt_vc'),
  jwtVp('jwt_vp');

  const JWTType(this.value);

  final String value;
}

enum LDPType {
  ldp('ldp'),
  ldpVc('ldp_vc'),
  ldpVp('ldp_vp');

  const LDPType(this.value);

  final String value;
}

abstract class ClaimFormat {
  const ClaimFormat();

  factory ClaimFormat.msoMdoc() {
    return ClaimFormatMsoMdoc();
  }

  factory ClaimFormat.jwtType({required JWTType jwtType}) {
    return ClaimFormatJwtType(jwtType: jwtType);
  }

  factory ClaimFormat.ldpType({required LDPType ldpType}) {
    return ClaimFormatLdpType(ldpType: ldpType);
  }
}

class ClaimFormatMsoMdoc extends ClaimFormat {}

class ClaimFormatJwtType extends ClaimFormat {
  ClaimFormatJwtType({required this.jwtType});

  final JWTType jwtType;
}

class ClaimFormatLdpType extends ClaimFormat {
  ClaimFormatLdpType({required this.ldpType});

  final LDPType ldpType;
}
