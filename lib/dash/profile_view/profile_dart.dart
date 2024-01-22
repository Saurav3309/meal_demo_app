import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/dash/profile_view/controller/profile_controller.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(builder: (ProfileController controller) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: Get.height*0.1,),
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.blue),
                  child: Center(child: Text("Demo",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black,),)),

                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
                  shrinkWrap: true,
                  itemCount: controller.profileOptions.length,
                  itemBuilder: (context, index) {
                    var item = controller.profileOptions[index];
                    return GestureDetector(

                      onTap: () => controller.onProfileOptionsTap(index),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey),
                        child: Row(
                          children: [
                            SizedBox(
                              child: item.first,
                            ),
                            Text(item.last.toString()),
                            // const Spacer(),
                            const Icon(
                              Icons.arrow_forward_ios_rounded,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Spacer(),
              Container(
                margin:
                const EdgeInsets.symmetric(horizontal: 100, vertical: 60),
                width: Get.width,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Log Out",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    )),
              )
            ],
          ),
        ),
      );
    });
  }
}
