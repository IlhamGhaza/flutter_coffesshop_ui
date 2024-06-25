import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  bool isDeliverySelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const Gap(40),
          buildHeader(),
          const Gap(24),
          buildDeliveryPickupSelector(),
          const Gap(16),
          buildDeliveryAddress(),
          const Gap(24),
          buildOrderDetails(),
          const Gap(24),
          buildPaymentSummary(),
          const Gap(24),
        ],
      ),
      bottomNavigationBar: buildOrderButton(),
    );
  }

  Widget buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
        const Text(
          'Order',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Color(0xff242424),
          ),
        ),
        const IconButton(
          onPressed: null,
          icon: Icon(Icons.favorite_border),
        ),
      ],
    );
  }

  Widget buildDeliveryPickupSelector() {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isDeliverySelected = true;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: isDeliverySelected ? const Color(0xffF9F2ED) : Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isDeliverySelected ? const Color(0xffC67C4E) : const Color(0xffE3E3E3),
                ),
              ),
              alignment: Alignment.center,
              child: const Text(
                'Deliver',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xff242424),
                ),
              ),
            ),
          ),
        ),
        const Gap(16),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isDeliverySelected = false;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: isDeliverySelected ? Colors.white : const Color(0xffF9F2ED),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isDeliverySelected ? const Color(0xffE3E3E3) : const Color(0xffC67C4E),
                ),
              ),
              alignment: Alignment.center,
              child: const Text(
                'Pick Up',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xff242424),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildDeliveryAddress() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Delivery Address',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Color(0xff242424),
          ),
        ),
        const Gap(8),
        Text(
          'Jl. Kpg Sutoyo\nKpg. Sutoyo No. 620, Bilzen, Tanjungbalai',
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xff909090),
          ),
        ),
        const Gap(8),
        Row(
          children: [
            OutlinedButton(
              onPressed: () {},
              child: const Text('Edit Address'),
            ),
            const Gap(16),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Add Note'),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildOrderDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Order Details',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Color(0xff242424),
          ),
        ),
        const Gap(16),
        Row(
          children: [
            Image.asset(
              'assets/coffee_mocha.png',
              width: 64,
              height: 64,
              fit: BoxFit.cover,
            ),
            const Gap(16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Caffe Mocha',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xff242424),
                  ),
                ),
                const Gap(8),
                const Text(
                  'Deep Foam',
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
              icon: const Icon(Icons.remove),
            ),
            const Text('1'),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        const Gap(16),
        const Divider(
          color: Color(0xffE3E3E3),
          thickness: 1,
        ),
        const Gap(8),
        Row(
          children: [
            const Text(
              '1 Discount is Applied',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xffC67C4E),
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios, size: 16),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildPaymentSummary() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Payment Summary',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Color(0xff242424),
          ),
        ),
        const Gap(16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Price',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xff909090),
              ),
            ),
            Text(
              '\$4.53',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color(0xff242424),
              ),
            ),
          ],
        ),
        const Gap(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Delivery Fee',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xff909090),
              ),
            ),
            Text(
              '\$1.00',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color(0xff242424),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildOrderButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, -4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Cash/Wallet',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff909090),
                  ),
                ),
                const Gap(4),
                const Text(
                  '\$5.53',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(0xff242424),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 160,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffC67C4E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Order',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
