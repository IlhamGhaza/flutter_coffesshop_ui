import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DeliveryPage extends StatelessWidget {
  const DeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildMap(context),
          buildDeliveryInfo(),
        ],
      ),
    );
  }

  Widget buildMap(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
        image: DecorationImage(
          image: AssetImage('assets/map_sample.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 40,
            left: 24,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back, color: Colors.white),
            ),
          ),
          Positioned(
            top: 40,
            right: 24,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDeliveryInfo() {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '10 minutes left',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color(0xff242424),
              ),
            ),
            const Gap(4),
            const Text(
              'Delivery to Jl. Kpg Sutoyo',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xff909090),
              ),
            ),
            const Gap(16),
            Row(
              children: List.generate(4, (index) {
                return Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    height: 5,
                    decoration: BoxDecoration(
                      color: index < 3 ? const Color(0xff34C759) : const Color(0xffE3E3E3),
                      borderRadius: BorderRadius.circular(2.5),
                    ),
                  ),
                );
              }),
            ),
            const Gap(16),
            const Divider(color: Color(0xffE3E3E3)),
            const Gap(16),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xffF9F2ED),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.check_circle,
                    color: Color(0xffC67C4E),
                    size: 24,
                  ),
                ),
                const Gap(16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Delivered your order',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xff242424),
                      ),
                    ),
                    Text(
                      'We will deliver your goods to you in the shortest possible time.',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff909090),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Gap(24),
            Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/courier.png',
                    width: 56,
                    height: 56,
                    fit: BoxFit.cover,
                  ),
                ),
                const Gap(16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Brooklyn Simmons',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xff242424),
                      ),
                    ),
                    Text(
                      'Personal Courier',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff909090),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.phone, color: Color(0xffC67C4E)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
