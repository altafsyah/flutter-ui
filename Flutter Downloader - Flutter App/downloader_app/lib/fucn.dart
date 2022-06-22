GlobalKey _globalKey = new GlobalKey();
  Uint8List? bytes;

  Future<Uint8List?> _capturePng() async {
    try {
      RenderRepaintBoundary boundary = _globalKey.currentContext!
          .findRenderObject() as RenderRepaintBoundary;
      ui.Image image = await boundary.toImage();
      final directory = (await getExternalStorageDirectory());
      ByteData? byteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
      Uint8List pngBytes = byteData!.buffer.asUint8List();
      File imgFile = File('${directory!.path}/photo.png');
      await imgFile.writeAsBytes(pngBytes);
      print(imgFile.path);
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future download(String url) async {
    var status = await Permission.storage.request();
    if (status.isGranted) {
      final baseStorage = await getExternalStorageDirectory();
      // print('INI ${baseStorage!.path}');
      // print('INI PATH ${baseStorage!.path}');
      await FlutterDownloader.enqueue(
          url: url,
          savedDir: baseStorage!.path,
          showNotification:
              true, // show download progress in status bar (for Android)
          openFileFromNotification: true,
          saveInPublicStorage:
              true // click on notification to open downloaded file (for Android)
          );
    }
  }

  ReceivePort _port = ReceivePort();

  @override
  void initState() {
    super.initState();
    ui.IsolateNameServer.registerPortWithName(
        _port.sendPort, 'downloader_send_port');
    _port.listen((dynamic data) {
      String id = data[0];
      DownloadTaskStatus status = data[1];
      int progress = data[2];

      if (status == DownloadTaskStatus.complete) {
        print('Download Complete');
      }
      setState(() {});
    });

    FlutterDownloader.registerCallback(downloadCallback);
  }

  @override
  void dispose() {
    ui.IsolateNameServer.removePortNameMapping('downloader_send_port');
    super.dispose();
  }

  @pragma('vm:entry-point')
  static void downloadCallback(
      String id, DownloadTaskStatus status, int progress) {
    final SendPort? send =
        ui.IsolateNameServer.lookupPortByName('downloader_send_port');
    send!.send([id, status, progress]);
  }

  Widget btnDownload() {
    return Center(
        child: ElevatedButton(
            child: Text('Download'),
            onPressed: () {
              // download('https://download.samplelib.com/mp4/sample-5s.mp4');
              download('https://vocasia.id/user/get_certificate/57/6077#');
              final snackBar = SnackBar(
                content: const Text('Berhasil Mendownload Sertifikat'),
                duration: Duration(seconds: 2),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }));
  }

  Widget buildCertificate() {
    return Container(
      color: Colors.red,
      // padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(15),
      width: double.infinity,
      height: 300,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset('assets/certif_template.jpg'),
          Positioned(
            top: 120,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text('Safinatun Najah Unju',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
            ),
          ),
          Positioned(
            top: 155,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Column(
                children: [
                  Text(
                      '"Basic Excel Trainig For Professional Employees & Recruitment Selection Candidates"',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                      textAlign: TextAlign.center),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Jakarta, 24 October 2021',
                      style:
                          TextStyle(fontWeight: FontWeight.normal, fontSize: 8))
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: (65 / 640) * MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text('Certificate no : 257911829183',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 6)),
                Text('Certificate no : 257911829183',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 6)),
              ],
            ),
          )
        ],
      ),
    );
  }

  Future saveImage(Uint8List bytes) async {
    try {
      final appStorage = await getExternalStorageDirectory();
      final file = File('${appStorage!.path}/certif.png');
      file.writeAsBytes(bytes);
      print(appStorage.path);
      print('SUKSES');
    } on Exception catch (e) {
      // TODO
      print(e);
    }
  }