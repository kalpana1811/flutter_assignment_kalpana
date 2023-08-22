import 'package:flutter/material.dart';
import 'package:youtube_app/screens/vidPage.dart';
import 'package:youtube_app/services/ytClient.dart';
import 'package:youtube_app/services/ytModel.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  vidClient ytClient = vidClient();

  late Future<List<VidModel>> _vidModels;

  Future<List<VidModel>> _getVideos() async {
    Map<String, dynamic> vidMap = await ytClient.getData();
    List<dynamic> vidList = vidMap["items"];

    List<VidModel> vidModels = _GenericToSpecific(vidList);
    return vidModels;
  }

  _GenericToSpecific(List<dynamic> vidMaps) {
    List<VidModel> ytModels = vidMaps.map((map) {
      VidModel singleModel = VidModel.extractData(map);
      return singleModel;
    }).toList();
    return ytModels;
  }

  @override
  void initState() {
    // TODO: implement initState
    _vidModels = _getVideos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          // appBar: AppBar(
          //   backgroundColor: Colors.red,
          //   title: Text(
          //     "Youtube",
          //     style: TextStyle(
          //       color: Colors.white,
          //       fontWeight: FontWeight.bold,
          //       fontSize: 16,
          //     ),
          //   ),
          // ),
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Image.asset('assets/yt.png'),
            title: const Text(
              'Youtube',
              style: TextStyle(
                  fontFamily: AutofillHints.birthday, color: Colors.black),
            ),
            actions: const [
              Icon(
                Icons.cast,
                color: Colors.black,
              ),
              SizedBox(width: 20),
              Icon(Icons.video_call, color: Colors.black),
              SizedBox(width: 20),
              Icon(
                Icons.search,
                color: Colors.black,
              ),
              SizedBox(width: 20),
              CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage("assets/yt.png"),
              ),
              SizedBox(width: 20),
            ],
          ),
          body: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: FutureBuilder(
              future: _vidModels,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      "ERROR: ${snapshot.error}",
                      style: TextStyle(
                        color: Colors.pink,
                      ),
                    ),
                  );
                } else if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: ((context, index) {
                        return Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                Image.network(snapshot
                                    .data![index].snippet.thumbnail.thumbnail),
                                IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => PlayerPage(
                                                    playList: snapshot.data!,
                                                    currInd: index,
                                                  )));
                                    },
                                    icon: Icon(
                                      Icons.play_circle_outline_rounded,
                                      color: Colors.grey[300],
                                      size: 64,
                                    ))
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                top: 8,
                                bottom: 16,
                                right: 4,
                                left: 4,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    snapshot.data![index].snippet.title,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    snapshot.data![index].snippet.channelTitle,
                                    style: TextStyle(
                                      color: Colors.grey[900],
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      }));
                }
                return Text("Placeholder");
              },
            ),
          )),
    );
  }
}
