///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'translations.g.dart';

// Path: <root>
typedef TranslationsJa = Translations; // ignore: unused_element

class Translations implements BaseTranslations<AppLocale, Translations> {
  /// Returns the current translations of the given [context].
  ///
  /// Usage:
  /// final t = Translations.of(context);
  static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
    : assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
      $meta = TranslationMetadata(
        locale: AppLocale.ja,
        overrides: overrides ?? {},
        cardinalResolver: cardinalResolver,
        ordinalResolver: ordinalResolver,
      );

  /// Metadata for the translations of <ja>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final Translations _root = this; // ignore: unused_field

  // Translations
  String get dashboard => 'ダッシュボード';
  String get addDoc => 'VC発行';
  String get vpHistory => 'VP履歴';
  String get vpHistoryDetails => 'VP履歴詳細';
  String get vcType => 'VC種別';
  String get memberId => '会員ID';
  String get success => '成功';
  String get fail => '失敗';
  String get error => 'エラー';
  String get next => 'つぎへ';
  String get share => '共有';
  String get issue => '発行';
  String get cancel => 'キャンセル';
  String get verify => '書類検証';
  String get tryAgain => 'もう一度試す';
  String get unknownIssuer => '発行者';
  String get unknownVerifier => '検証者';
  String get yes => 'はい';
  String get no => 'いいえ';
  String get pleaseWait => 'お待ちください...';
  String get memberVC => '会員VC';
  String get vcIssue => 'VC発行';
  String get vcIssueDescription => '発行するVCを選択してください';
  String get vcFailed => '問題が発生しました！';
  String get vcFailedDescription => '書類の発行に失敗しました。もう一度お試しください。';
  String vcSucceededDescription({required String document}) => '書類が発行されました。${document}を追加できます。';
  String get vpShareSucceeded => '検証者と情報を正常に共有しました';
  String get vpShareRequest => '検証者が下記情報の共有をリクエストしています';
  String get vpShareRequestAttention => 'データを共有する前に、慎重にご確認ください。';
  String get vpShareWhyNeedData => 'なぜあなたのデータが必要ですか？';
  String get vpShareDocumentNotFound => '要求された書類は、ウォレットに存在していません。詳細については、公認発行者にお問い合わせください。';
  String documentDeletionConfirmTitle({required String document}) => '${document} を削除しますか？';
  String documentDeletionConfirmDescription({required String document}) => '削除するとこの ${document} は使用できなくなります。';
  String get ageBirthYear => '何年生まれですか?';
  String get ageInYears => 'あなたは何歳ですか?';
  String ageOver({required int age}) => '${age}歳以上?';
  String get ageVerification => '年齢確認';
  String get biometryOpenSettings => '設定を開く';
  String get nationality => '国籍';
  String get mailAddress => 'メールアドレス';
  String get birthCity => '出生市';
  String get birthCountry => '出生国';
  String get birthDate => '生年月日';
  String get birthPlace => '出生地';
  String get birthState => '出生州';
  String get roomNumber => '部屋番号';
  String get seatNumber => '座席番号';
  String get gender => '性別';
  String get userPseudonym => 'ニックネーム';
  String get weight => '体重 (kg)';
  String get issueDate => '発行日';
  String get issuingAuthority => '発行機関';
  String get issuingCountry => '発行国';
  String get issuingJurisdiction => '発行地';
  String get issuanceDate => '発行日';
  String get givenName => '名';
  String get givenNameBirth => '名（出生時）';
  String get givenNameNationalCharacter => '名（母国語）';
  String get hairColor => '髪の色';
  String get height => '身長 (cm)';
  String get dateOfExpiry => '効期期限';
  String get dateOfIssue => '発行日';
  String get dHSCompliance => 'DHSコンプライアンス';
  String get documentNumber => '文書番号';
  String get drivingPrivileges => '車両区分';
  String get eDLCredential => 'EDL資格';
  String get expired => '期限切れ';
  String get expiryDate => '有効期限日';
  String get eyeColor => '目の色';
  String get familyName => '姓';
  String get familyNameBirth => '姓（出生時）';
  String get familyNameNationalCharacter => '姓（母国語）';
  String get faqTitle => 'FAQ';
  String get firstName => '名';
  String get firstNameBirth => '名（出生時）';
  String get firstNameNationalCharacter => '名（母国語）';
}
