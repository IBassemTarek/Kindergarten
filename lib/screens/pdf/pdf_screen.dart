import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:http/http.dart' as http;
import 'package:kindergarten/screens/commonWidget/app_bar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart'; 
import 'dart:io';

import '../../settings.dart'; 
class PdfScreen extends StatefulWidget {
  final String pdfDriveUrl;
  final String title;
  final String source;
  PdfScreen({required this.title,required this.pdfDriveUrl,required this.source});
  @override
  _PdfScreenState createState() => _PdfScreenState();
}



class _PdfScreenState extends State<PdfScreen> {
  String ? localFile;
  int ? currentPage =0 ;
  int ? totalPages = 0;

  @override
  void initState() { 
    super.initState();
    ApiService.loadPDF(pdfDrive:  widget.pdfDriveUrl).then((value) {
      setState(() {
        localFile = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height; 
    return Scaffold(
      floatingActionButton: Container(

        decoration: tabsShadow.copyWith(color: kColor3),
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(Locales.currentLocale(context).toString() == "en"?'$currentPage of $totalPages':'$currentPage من $totalPages',style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 14,color:kColor9 ),),
        )
      ),
      body: localFile!=null ? SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: _height*0.8,
                child: PDFView(
                  fitEachPage: true,
                  onPageChanged: (page, total) {
                     setState(() {
                       currentPage = page !+ 1 ;
                     totalPages = total;
                     });
                  },
                  filePath: localFile,
                ),
              ),
            ),
          Align(
            alignment: Locales.currentLocale(context).toString() == "en"?Alignment.bottomLeft:Alignment.bottomRight, 
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              await canLaunch(widget.source) ? await launch(widget.source) : throw 'Could not launch ${widget.source}';
            },
            child: Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(6),
              decoration: tabsShadow.copyWith(color: kColor3),
              child: Icon(Icons.download,color: kColor9,),
            ),
          )),
          Align(
            alignment: Alignment.topRight, 
          child: Image.asset("assets/images/resources/Vector1.png",height:0.142053*_height)),
            //TopBar(title: "learning resources",),
            TopBar(title: widget.title,staticTitle: false),

          ],
        ),
      ): Center(child: CircularProgressIndicator())
    );
  }
}

String driveURLTransfer (String str){  
if (str.substring(0,24) == "https://drive.google.com")
{
return "https://drive.google.com/uc?export=view&id="+str.substring(32, 65);
}
else 
{
  print(str);
return str;
}

}  


class ApiService {
  
  static Future<String> loadPDF({required String pdfDrive}) async {
    
    final String pdf = driveURLTransfer(pdfDrive); 
    var response = await http.get( Uri.parse(pdf) );
    var dir = await getTemporaryDirectory();
    File file=new File(dir.path+"/data.pdf");
    file.writeAsBytes(response.bodyBytes,flush:true);
    return file.path;
  }
}