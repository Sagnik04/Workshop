import 'package:detection/main.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:tflite/tflite.dart';


class Page4 extends StatefulWidget {  @override
State<Page4> createState() => _HomeState();
}

class _HomeState extends State<Page4> {
  CameraImage? cameraImage;
  CameraController? cameraController;
  String result = " ";


  @override
  void initState(){
    super.initState();
    CameraLoad();
    loadmodel();
  }


  CameraLoad(){
    cameraController = CameraController(cameras![0], ResolutionPreset.medium);
    cameraController!.initialize().then((value){
      if(!mounted){
        return;
      }
      else{
        cameraController!.startImageStream((imageStram) {
          cameraImage = imageStram;
          runModel();
        });
      }
    });
  }
  runModel()async{
    if(cameraImage!=null){
      var predictions = await Tflite.runModelOnFrame(bytesList: cameraImage!.planes.map((plane) {
        return plane.bytes;
      }).toList(),
        imageHeight: cameraImage!.height,
        imageWidth: cameraImage!.width,
        imageMean: 127.5,
        imageStd: 127.5,
        rotation: 90,
        numResults: 2,
        threshold: 0.1,
        asynch: true,

      );
      predictions!.forEach((element) {
        setState(() {
          result = element['label'];
        });
      });

    }
  }

  loadmodel()async{
    await Tflite.loadModel(model: "assets/model_unquant4.tflite",
        labels: "assets/labels4.txt"
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Striking",style: TextStyle(color: Colors.redAccent),),
        backgroundColor: Colors.black87,

      ),
      body: Column(
        children: [
          Padding(padding:
          EdgeInsets.all(20),
            child: Container(
              height: MediaQuery.of(context).size.height*0.7,
              width: MediaQuery.of(context).size.width,
              child: !cameraController!.value.isInitialized?
              Container():
              AspectRatio(aspectRatio: cameraController!.value.aspectRatio,
                child: CameraPreview(cameraController!),
              ),
            ),
          ),
          Text(result,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),)
        ],
      ),
    );
  }}
