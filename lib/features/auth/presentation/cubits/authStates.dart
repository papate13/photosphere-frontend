

abstract class AuthState {}

// inital
class AuthInital extends AuthState {}

// loading...
class AuthLoading extends AuthState {}

// authenticated
class Authenticated extends AuthState {}

// unauthenticated
class Unauthenticated extends AuthState {}

// errors..
class AuthErrors extends AuthState {}