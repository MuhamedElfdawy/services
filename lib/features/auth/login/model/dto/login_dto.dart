class LoginDto {
  String? accessToken;
  String? refreshToken;

  LoginDto({
    this.accessToken,
    this.refreshToken,
  });

  factory LoginDto.fromJson(Map<String, dynamic> json) {
    return LoginDto(
      accessToken: json['access_token'],
      refreshToken: json['refresh_token'],
    );
  }
}
