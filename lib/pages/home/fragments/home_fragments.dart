import 'package:flutter/material.dart';
import 'package:flutter_coffesshop_ui/core/constants/colors.dart';
import 'package:gap/gap.dart';

class HomeFragments extends StatelessWidget {
  const HomeFragments({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(0),
      children: [
        Stack(
          children: [
            buildbackground(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Gap(68),
                  buildHeader(),
                  Gap(24),
                  buildSearch(),
                  Gap(68),
                  buildBannerPromo(),
                ],
              ),
            )
          ],
        ),
        Gap(20),
        buildCategories(),
        Gap(16),
        buildGridCoffe(),
        Gap(30),
      ],
    );
  }

  Widget buildbackground() {
    return Container(
      height: 280,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            Color(0xff111111),
            Color(0xff313131),
          ])),
    );
  }

  Widget buildHeader() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               const Text(
                  "Location",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  fontWeight: FontWeight.normal, //semi bold
                  fontSize: 12,
                  color: AppColors.Lighter,
                ),
              ),
              Gap(4),
              Row(
                children: [
                  const Text(
                      "Bandung, Indonesia",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                      fontWeight: FontWeight.w600, //semi bold
                      fontSize: 14,
                      color: Color(0xffD8D8D8),
                    ),
                  ),
                  // ImageIcon(AssetImage('assets/ic_arrow_down.png'))
                  Image.asset('assets/ic_arrow_down.png',
                  height: 14,
                  width: 14,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildSearch(){
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xff2A2A2A),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                const ImageIcon(AssetImage('assets/ic_search.png'),
                color: AppColors.PureWhite,
                ),
                Gap(8),
                const Expanded(
                  child: TextField(
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.PureWhite,
                    ),
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(0),
                      border: InputBorder.none,
                      hintText: 'Search Coffe',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.Lighter,
                      ),
                    ),
                  ),
                ),
                Gap(16),
    
                //aksi ontap inkwell bungkus container
                InkWell(
                  child: Container(
                    width: 52,
                    height: 52,
                    decoration:  BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(12,)
                    ),
                    alignment: Alignment.center,
                    child: const ImageIcon(
                      AssetImage('assets/ic_filter.png'),
                      size: 20,
                      color: AppColors.PureWhite
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget buildBannerPromo(){
    return Container();
  }

  Widget buildCategories() {
    return Container();
  }
  
  Widget buildGridCoffe(){
    return Container();
  }
}
