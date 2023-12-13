
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../pages/cart_page.dart';

class FourScreen extends StatefulWidget {
  const FourScreen({super.key});

  @override
  State<FourScreen> createState() => _FourScreenState();
}

class _FourScreenState extends State<FourScreen> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5F2),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(
                  context,
                );
              },

                child: SvgPicture.asset(
                  "assets/vectors/ic_Left.svg",
                ),

            ),
           SizedBox(width:60),

           const Text(
                "Checkout",
                style: TextStyle(
                  color: Color(0xFF3E4462),
                ),
              ),

          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18,
        ),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF1D2D50),
              borderRadius: BorderRadius.circular(8),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>   const  MyCart(),
                  ),
                );
              },
              child: Row(
                children: const <Widget>[
                  Expanded(
                    child: Text(
                      "Place order",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    "18.50",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          "Keep social distancing",
                          style: TextStyle(
                            color: Color(0xFF3E4462),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Leave your order on the doorstep",
                          style: TextStyle(
                            color: Color(0xFF7E7E7E),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CupertinoSwitch(
                    activeColor: const Color(0xFF3E4462),
                    value: switchValue,
                    onChanged: (bool value) {
                      setState(() {
                        switchValue = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 16,
              ),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              "Deliver to",
                              style: TextStyle(
                                color: Color(0xFF3E4462),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Jl. Jayakatwang no 301",
                              style: TextStyle(
                                color: Color(0xFF7E7E7E),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFF1D2D50),
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: const EdgeInsets.all(6),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF1D2D50),
                            borderRadius: BorderRadius.circular(70),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 36,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2F5F8),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: TextFormField(
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: const InputDecoration(
                        hintText: "Add a note of delivery address",
                        hintStyle: TextStyle(
                          color: Color(0xFF7E7E7E),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        contentPadding: EdgeInsets.only(top: 10),
                        isDense: true,
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.note_alt_rounded),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const Expanded(
                        child: Text(
                          "My Cart",
                          style: TextStyle(
                            color: Color(0xFF3E4462),
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          debugPrint("add item");
                        },
                        child: Row(
                          children: const <Widget>[
                            Icon(
                              Icons.add,
                              color: Color(0xFF3E4462),
                              size: 16,
                            ),
                            SizedBox(width: 4),
                            Text(
                              "Add items",
                              style: TextStyle(
                                color: Color(0xFF3E4462),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 82,
                        width: 72,
                        child: Image.network(
                          "https://www.shutterstock.com/image-photo/healthy-food-clean-eating-selection-260nw-722718097.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 24),
                      const Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Fruit salad mix",
                              style: TextStyle(
                                color: Color(0xFF3E4462),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 8,
                              ),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "18.50",
                                    style: TextStyle(
                                      color: Color(0xFF7E7E7E),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    "22.500",
                                    style: TextStyle(
                                      color: Color(0xFFCACACA),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "Free delivery",
                              style: TextStyle(
                                color: Color(0xFF7E7E7E),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Icon(
                          Icons.delete,
                          color: Color(0xFF3E4462),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      Container(
                        margin: EdgeInsets.only(right:36),
                        height:24,
                        width:24,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                        ),
                        child: SvgPicture.asset('assets/vectors/ic_vector.svg'),
                      ),

                      Container(
                        width: 88,
                        height: 26,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(color: Color(0xFFF8F5F2)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: Color(0xFFE1E1E1),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                              ),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 20,
                              ),

                            ),
                            const SizedBox(width: 16),
                            const Text(
                              '1',
                              style: TextStyle(
                                color: Color(0xFF3E4462),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,


                              ),
                            ),
                            const SizedBox(width: 16),
                            Container(
                              width: 24,
                              height: 24,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: Color(0xFF1D2D50),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              ),

                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                vertical: 16,
              ),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "Payment",
                    style: TextStyle(
                      color: Color(0xFF3E4462),
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Expanded(
                        child: Text(
                          "Item total",
                          style: TextStyle(
                            color: Color(0xFF3E4462),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Text(
                        "18.500",
                        style: TextStyle(
                          color: Color(0xFF3E4462),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Expanded(
                        child: Text(
                          "Delivery fee",
                          style: TextStyle(
                            color: Color(0xFF3E4462),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Text(
                        "0",
                        style: TextStyle(
                          color: Color(0xFF3E4462),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 24),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Expanded(
                        child: Text(
                          "To Pay",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Text(
                        "Rp 18.500",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
