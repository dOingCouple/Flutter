// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doing.query.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMe$Query$Me _$GetMe$Query$MeFromJson(Map<String, dynamic> json) {
  return GetMe$Query$Me()
    ..uuid = json['uuid'] as String
    ..nickName = json['nickName'] as String;
}

Map<String, dynamic> _$GetMe$Query$MeToJson(GetMe$Query$Me instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'nickName': instance.nickName,
    };

GetMe$Query _$GetMe$QueryFromJson(Map<String, dynamic> json) {
  return GetMe$Query()
    ..me = json['me'] == null
        ? null
        : GetMe$Query$Me.fromJson(json['me'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetMe$QueryToJson(GetMe$Query instance) =>
    <String, dynamic>{
      'me': instance.me?.toJson(),
    };

SignIn$Mutation$SignInOutput _$SignIn$Mutation$SignInOutputFromJson(
    Map<String, dynamic> json) {
  return SignIn$Mutation$SignInOutput()
    ..accessToken = json['accessToken'] as String;
}

Map<String, dynamic> _$SignIn$Mutation$SignInOutputToJson(
        SignIn$Mutation$SignInOutput instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
    };

SignIn$Mutation _$SignIn$MutationFromJson(Map<String, dynamic> json) {
  return SignIn$Mutation()
    ..signIn = json['signIn'] == null
        ? null
        : SignIn$Mutation$SignInOutput.fromJson(
            json['signIn'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SignIn$MutationToJson(SignIn$Mutation instance) =>
    <String, dynamic>{
      'signIn': instance.signIn?.toJson(),
    };

SignInInput _$SignInInputFromJson(Map<String, dynamic> json) {
  return SignInInput(
    email: json['email'] as String,
    provider: _$enumDecodeNullable(_$ProviderEnumMap, json['provider'],
        unknownValue: Provider.artemisUnknown),
  );
}

Map<String, dynamic> _$SignInInputToJson(SignInInput instance) =>
    <String, dynamic>{
      'email': instance.email,
      'provider': _$ProviderEnumMap[instance.provider],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$ProviderEnumMap = {
  Provider.google: 'GOOGLE',
  Provider.kakao: 'KAKAO',
  Provider.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

SignUp$Mutation$Me _$SignUp$Mutation$MeFromJson(Map<String, dynamic> json) {
  return SignUp$Mutation$Me()
    ..uuid = json['uuid'] as String
    ..nickName = json['nickName'] as String;
}

Map<String, dynamic> _$SignUp$Mutation$MeToJson(SignUp$Mutation$Me instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'nickName': instance.nickName,
    };

SignUp$Mutation _$SignUp$MutationFromJson(Map<String, dynamic> json) {
  return SignUp$Mutation()
    ..signUp = json['signUp'] == null
        ? null
        : SignUp$Mutation$Me.fromJson(json['signUp'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SignUp$MutationToJson(SignUp$Mutation instance) =>
    <String, dynamic>{
      'signUp': instance.signUp?.toJson(),
    };

SignUpDeviceInput _$SignUpDeviceInputFromJson(Map<String, dynamic> json) {
  return SignUpDeviceInput(
    os: _$enumDecodeNullable(_$OsEnumMap, json['os'],
        unknownValue: Os.artemisUnknown),
    model: json['model'] as String,
    version: json['version'] as String,
  );
}

Map<String, dynamic> _$SignUpDeviceInputToJson(SignUpDeviceInput instance) =>
    <String, dynamic>{
      'os': _$OsEnumMap[instance.os],
      'model': instance.model,
      'version': instance.version,
    };

const _$OsEnumMap = {
  Os.ios: 'IOS',
  Os.android: 'ANDROID',
  Os.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

SignUpInput _$SignUpInputFromJson(Map<String, dynamic> json) {
  return SignUpInput(
    email: json['email'] as String,
    provider: _$enumDecodeNullable(_$ProviderEnumMap, json['provider'],
        unknownValue: Provider.artemisUnknown),
    name: json['name'] as String,
    nickName: json['nickName'] as String,
    photoUrl: json['photoUrl'] as String,
    device: json['device'] == null
        ? null
        : SignUpDeviceInput.fromJson(json['device'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SignUpInputToJson(SignUpInput instance) =>
    <String, dynamic>{
      'email': instance.email,
      'provider': _$ProviderEnumMap[instance.provider],
      'name': instance.name,
      'nickName': instance.nickName,
      'photoUrl': instance.photoUrl,
      'device': instance.device?.toJson(),
    };

SignInArguments _$SignInArgumentsFromJson(Map<String, dynamic> json) {
  return SignInArguments(
    signInInput: json['signInInput'] == null
        ? null
        : SignInInput.fromJson(json['signInInput'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SignInArgumentsToJson(SignInArguments instance) =>
    <String, dynamic>{
      'signInInput': instance.signInInput?.toJson(),
    };

SignUpArguments _$SignUpArgumentsFromJson(Map<String, dynamic> json) {
  return SignUpArguments(
    signUpInput: json['signUpInput'] == null
        ? null
        : SignUpInput.fromJson(json['signUpInput'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SignUpArgumentsToJson(SignUpArguments instance) =>
    <String, dynamic>{
      'signUpInput': instance.signUpInput?.toJson(),
    };
