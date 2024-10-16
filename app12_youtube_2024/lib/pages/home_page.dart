import 'package:flutter/material.dart';
import 'package:app12_youtube_2024/models/video_model.dart';
import 'package:app12_youtube_2024/services/api_services.dart';
import 'package:app12_youtube_2024/ui/general/colors.dart';
import 'package:app12_youtube_2024/ui/widgets/item_filter_widget.dart';
import 'package:app12_youtube_2024/ui/widgets/item_video_widget.dart';
import 'package:app12_youtube_2024/pages/video_detail_page.dart';

class HomePageprof extends StatefulWidget {
  const HomePageprof({super.key});

  @override
  State<HomePageprof> createState() => _HomePageprofState();
}

class _HomePageprofState extends State<HomePageprof> {
  final APIService _apiService = APIService();
  List<VideoModel> videos = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() {
    _apiService.getVideos().then((value) {
      videos = value;
      setState(() {});
    });
  }

  void navigateToVideoDetail(VideoModel videoModel) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => VideoDetailPage(videoModel: videoModel),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14.0,
          vertical: 12,
        ),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.explore_outlined,
                      color: Colors.white,
                    ),
                    label: Text(
                      "Explorar",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: kBrandSecundaryColor,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 38.0,
                    child: VerticalDivider(
                      color: kBrandSecundaryColor,
                      thickness: 1.0,
                    ),
                  ),
                  ItemFilterWidget(
                    texto: "Todos",
                    isSelected: true,
                  ),
                  ItemFilterWidget(
                    texto: "Mixes",
                    isSelected: false,
                  ),
                  ItemFilterWidget(
                    texto: "Música",
                    isSelected: false,
                  ),
                  ItemFilterWidget(
                    texto: "Programación",
                    isSelected: false,
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: videos.length,
              itemBuilder: (BuildContext context, int index) {
                return ItemVideoWidget(
                  videoModel: videos[index],
                  onTap: () => navigateToVideoDetail(videos[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
