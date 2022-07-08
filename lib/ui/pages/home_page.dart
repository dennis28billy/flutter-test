import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sma_dennis/cubit/auth_cubit.dart';
import 'package:sma_dennis/cubit/ourservices_cubit.dart';
import 'package:sma_dennis/models/ourservices.model.dart';
import 'package:sma_dennis/shared/theme.dart';
import 'package:sma_dennis/ui/widgets/ourservices_card.dart';
import 'package:sma_dennis/ui/widgets/ourclients_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState(){
    context.read<OurservicesCubit>().fetchOurservices();
    super.initState();
  }

  Widget header() {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is AuthSuccess) {
          return Container(
              margin: EdgeInsets.only(
                  left: defaultMargin, right: defaultMargin, top: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hallo, ${state.user.name}',
                          style: blackTextStyle.copyWith(
                              fontSize: 24, fontWeight: semiBold),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'This is Our Service in SMA : ',
                          style: greyTextStyle.copyWith(
                              fontSize: 16, fontWeight: light),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/image_profile.png'))),
                  )
                ],
              ));
        } else {
          return SizedBox();
        }
      },
    );
  }

  Widget ourServices(List<OurServicesModel> ourservices) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: ourservices.map((OurServicesModel ourservices){
            return OurserviceCard(ourservices);
          }).toList(),
        ),
      ),
    );
  }

  Widget ourClients() {
    return Container(
      margin: EdgeInsets.only(
          top: 30, left: defaultMargin, right: defaultMargin, bottom: 120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Our Clients',
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold)),
          Ourclientscard(
              name: 'PT Weda Bay Nickel',
              city: 'a Subsidiary of IWIP Located in Central Halmahera Maluku',
              imageUrl: 'assets/image_pt_weda.png'),
          Ourclientscard(
              name: 'PT MSM/PT TTN',
              city: 'PT Meares Soputan Mining / PT Tambang Tondano Nusajaya located in Likupang - North Sulawesi',
              imageUrl: 'assets/image_pt_msm.png'),
          Ourclientscard(
              name: 'PT GAG Nikel',
              city: 'a Subsidiary of PT Antam Tbk located in Gag Island - West Papua',
              imageUrl: 'assets/image_pt_gag.png'),
          Ourclientscard(
              name: 'PT Arafura Surya Alam',
              city: 'PT JResources Group Located in Doup - East Bolaang Mongondow North Sulawesi',
              imageUrl: 'assets/image_pt_arafura.png'),
          Ourclientscard(
              name: 'PT ANTAM',
              city: 'Project location at Gee Island - North Maluku',
              imageUrl: 'assets/image_pt_antam.png'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OurservicesCubit, OurservicesState>(
      listener: (context, state) {
        if(state is OurservicesFailed){
          print(state.error);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: kRedColor,
              content: Text(
                state.error
              )
            )
          );
        }
      },
      builder: (context, state) {

        if(state is OurservicesSuccess){
          return ListView(
          children: [header(), 
            ourServices(state.ourservices), 
            ourClients()
          ],
        );
        }
        
        return Center(
          child: CircularProgressIndicator()
        );
      },
    );
  }
}
