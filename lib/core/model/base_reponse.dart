class BaseResponse<T> {
  T? data;
  String? message;
  bool? success;
  int? statusCode;

  BaseResponse({
    this.data,
    this.message,
    this.success,
    this.statusCode,
  });
}
