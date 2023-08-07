import 'package:flutter/material.dart';
import 'package:flutter_ui_design/widgets/Simple%20Input%20Field.dart';

class TipCalculator extends StatefulWidget {
  const TipCalculator({super.key});

  @override
  State<TipCalculator> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {

  final formKey = GlobalKey<FormState>();

  final totalBillController = TextEditingController();
  final totalTipController = TextEditingController();
  final totalPeopleController = TextEditingController();

  static const Color containerColor = Color(0xffF5F8F8);
  static const Color textBlack = Color(0xff232323);
  static const Color texLightBlack = Color(0xff717171);
  static const Color clearButtonColor = Color(0xffFF7511);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tip Calculator", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        centerTitle: true,
        elevation: 3,
        shadowColor: Colors.black.withOpacity(0.3),
        backgroundColor: Colors.white,
      ),
      
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(

                width: double.infinity,
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(5)
                ),
                padding: const EdgeInsets.all(15),

                child: Column(
                  children: [
                    Text("Total Bil", style: TextStyle(color: texLightBlack),),
                    Text("\$ ${totalBillController.text}", style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700, color: textBlack),),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Percent", style: TextStyle(color: texLightBlack),),
                        Text("Bill Amount", style: TextStyle(color: texLightBlack),),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("05", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: textBlack),),
                        Text("\$ 20.00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: textBlack),),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(5)
                ),
                padding: const EdgeInsets.all(15),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Per Percent", style: TextStyle(color: texLightBlack),),
                    Text("\$ 20.00", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: textBlack),),
                  ],
                ),

              ),
              const Spacer(),

              SimpleInputField(
                controller: totalBillController,
                title: "Total Bill",
                hintText: "Please enter total bill amount",
                iconData: Icons.attach_money,
              ),
              SimpleInputField(
                controller: totalTipController,
                title: "Tip Percentage",
                hintText: "Please enter tip percentage",
                iconData: Icons.percent,
              ),
              SimpleInputField(
                controller: totalPeopleController,
                title: "Number of people",
                hintText: "Please enter total number of people",
                iconData: Icons.people,
              ),


              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        formKey.currentState!.validate();

                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: const Text("Calculate", style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  GestureDetector(
                    onTap: () {

                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                      decoration: BoxDecoration(
                        color: clearButtonColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text("Clean", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ],
              ),

              // Text("Total Bill", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: textBlack),),
              // const SizedBox(height: 5,),
              // TextFormField(
              //   controller: totalBillController,
              //   keyboardType: TextInputType.number,
              //   decoration: InputDecoration(
              //     hintText: "Please enter total bill amount",
              //     hintStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w300, color: texLightBlack),
              //     suffixIcon: const Icon(Icons.attach_money, color: textBlack,),
              //     filled: true,
              //     fillColor: containerColor,
              //     border: OutlineInputBorder(
              //       borderSide: const BorderSide(width: 1, color: Colors.transparent),
              //       borderRadius: BorderRadius.circular(5),
              //     ),
              //     enabledBorder: OutlineInputBorder(
              //       borderSide: const BorderSide(width: 1, color: Colors.transparent),
              //       borderRadius: BorderRadius.circular(5),
              //     ),
              //     focusedBorder: OutlineInputBorder(
              //       borderSide: const BorderSide(width: 1, color: Colors.transparent),
              //       borderRadius: BorderRadius.circular(5),
              //     ),
              //   ),
              //
              //   onFieldSubmitted: (value){
              //     if(value.isEmpty){
              //       totalBillController.text = "0.00";
              //     }
              //     totalBillController.text = value.toString();
              //     setState(() {
              //
              //     });
              //   },
              // ),

            ],

          ),
        ),
      ),

    );
  }
}
