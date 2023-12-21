
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/app_colors.dart';
import '../../components/app_vectors.dart';



class EditButton extends StatefulWidget {
  const EditButton({super.key});


  @override
  State<EditButton> createState() => _EditButtonState();

}

class _EditButtonState extends State<EditButton> {
  int _counter = 1;




  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 1) {
        _counter--;
      }
    });
  }




  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset(
          AppVector.icEdit,
        ),
        SizedBox(width: 60),
        Container(
          child: Row(
            children: [

                Container(
                  width:36,
                  height:36,
                  child: FloatingActionButton(
                    heroTag: null,
                    onPressed: _decrementCounter,
                    tooltip: 'Giảm',
                    child: const Icon(Icons.remove),
                    backgroundColor: AppColors.backgroundGrayColor,
                    shape: ShapeBorder.lerp(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      CircleBorder(),
                      0,
                    ),

                  ),
                ),

              Container(
                width:36,
                height:36,
                color: Color(0xFFF8F5F2),
                child: Center(
                  child: Text(
                    '$_counter',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              Container(
                width:36,
                height:36,
                child: FloatingActionButton(
                    heroTag: null,
                    onPressed: _incrementCounter,
                    tooltip: 'Tăng',
                    child: const Icon(Icons.add),
                    backgroundColor: AppColors.textPrimaryColor,
                    shape: ShapeBorder.lerp(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    CircleBorder(),
                    0,
                  ),
                  ),
              ),

            ],
          ),
        ),
      ],
    );
  }
}
