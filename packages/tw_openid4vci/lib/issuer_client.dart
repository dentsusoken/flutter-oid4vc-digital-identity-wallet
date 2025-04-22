import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tw_openid4vci/entities/entities.dart';

part 'issuer_client.g.dart';

@RestApi()
abstract class IssuerClient {
  factory IssuerClient(Dio dio) = _IssuerClient;

  @POST('/api/par')
  @FormUrlEncoded()
  Future<ParResponse> par({
    @Field('client_id') required String clientId,
    @Field('response_type') String responseType = 'code',
    @Field('scope') required String scope,
    @Field('redirect_uri') required String redirectUri,
    @Field('code_challenge') required String codeChallenge,
  });

  @POST('/api/token')
  @FormUrlEncoded()
  Future<TokenResponse> token({
    @Field('client_id') required String clientId,
    @Field('grant_type') String grantType = 'authorization_code',
    @Field('code') required String code,
    @Field('redirect_uri') required String redirectUri,
    @Field('code_verifier') required String codeVerifier,
  });

  @POST('/api/credential')
  @FormUrlEncoded()
  Future<CredentialResponse> credential({
    @Field('client_id') required String clientId,
    @Field('code') required String code,
    @Field('redirect_uri') required String redirectUri,
  });
}
