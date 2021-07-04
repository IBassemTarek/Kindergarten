import 'package:get/get.dart';

class DrawerScalling extends GetxController {
  double xmargin = 0;
  double ymargin = 0;
  double scaleFactor=1;
    double xmargin1 = 0;
  double ymargin1 = 0;
  double scaleFactor1=1;
  bool isDrawerOpen = false;
    openDrawer (){
        xmargin = 280;
        ymargin = 150;
        scaleFactor = 0.6;
        xmargin1 = 240;
        ymargin1 = 190;
        scaleFactor1=0.5;
        isDrawerOpen = true;
        update();
    }  
    closeDrawer (){
        xmargin = 0;
        ymargin = 0;
        scaleFactor = 1;
        xmargin1 = 0;
        ymargin1 = 0;
        scaleFactor1=1;
        isDrawerOpen = false;
        update();
    }  
}