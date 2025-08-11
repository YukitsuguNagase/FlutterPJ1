sealed class Result<T> {
  const Result();
  factory Result.success(T value) = Success<T>;
  factory Result.failure(AppException error) = Failure<T>;
}

class Success<T> extends Result<T> {
  final T value;
  const Success(this.value);
}

class Failure<T> extends Result<T> {
  final AppException error;
  const Failure(this.error);
}
