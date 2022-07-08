part of 'ourservices_cubit.dart';

abstract class OurservicesState extends Equatable {
  const OurservicesState();

  @override
  List<Object> get props => [];
}

class OurservicesInitial extends OurservicesState {}

class OurservicesLoading extends OurservicesState {}

class OurservicesSuccess extends OurservicesState {
  
  final List<OurServicesModel> ourservices;
  
  OurservicesSuccess(this.ourservices);

  @override
  List<Object> get props => [ourservices];
}

class OurservicesFailed extends OurservicesState {

  final String error;

  OurservicesFailed(this.error);

  @override
  List<Object> get props => [error];
}