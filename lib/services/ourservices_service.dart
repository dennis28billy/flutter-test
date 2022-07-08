import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sma_dennis/models/ourservices.model.dart';


class OurservicesService{

  CollectionReference _ourservicesRef = 
    FirebaseFirestore.instance.collection('ourservices');

  Future<List<OurServicesModel>> fetchOurservices() async {
    try{

      QuerySnapshot result = await _ourservicesRef.get();

      List<OurServicesModel> ourservices = result.docs.map((e){
        return OurServicesModel.fromJson(e.id, e.data() as Map<String, dynamic>);
      },
      ).toList();
      
      return ourservices;

    } catch(e){
      throw e;
    }
  }
}