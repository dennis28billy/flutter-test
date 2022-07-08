import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sma_dennis/models/ourservices.model.dart';
import 'package:sma_dennis/services/ourservices_service.dart';

part 'ourservices_state.dart';

class OurservicesCubit extends Cubit<OurservicesState> {
  OurservicesCubit() : super(OurservicesInitial());

  void fetchOurservices() async{
    try{
      emit(OurservicesLoading());

      List<OurServicesModel> ourservices = await OurservicesService().fetchOurservices();

      emit(OurservicesSuccess(ourservices));
    } catch (e){
        emit(OurservicesFailed(e.toString()));
    }
  }
}
