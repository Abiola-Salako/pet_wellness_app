
import 'package:equatable/equatable.dart';

enum SignupStatus{Initial, Processing, Successful, Error}

class SignupState extends Equatable{
  SignupState({
    required this.name,
    required this.emailAddress,
    required this.password,
    this.signupStatus = SignupStatus.Initial,
  });

  static SignupState empty = SignupState(
      name: "",
      emailAddress: "",
      password: ""
  );

  final String name;
  final String emailAddress;
  final String password;
  final SignupStatus signupStatus;

  @override
  List<Object?> get props => [
    name, emailAddress, password, signupStatus
  ];

  SignupState copyWith({
    String? name,
    String? emailAddress,
    String? password,
    SignupStatus? signupStatus,
  }){
    return SignupState(
      name: name ?? this.name,
      emailAddress: emailAddress ?? this.emailAddress,
      password: password ?? this.password,
      signupStatus: signupStatus ?? this.signupStatus,
    );
  }
}