import 'package:airretailer/models/homepagemodel.dart';
import 'package:airretailer/pages/widgets/homepage_widgets.dart';
import 'package:airretailer/provider/homepadeg_provider.dart';
import 'package:airretailer/provider/loginprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  static const PAGE = "HomePage";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() async {
      context.read<HomePageProvider>().getData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: context.watch<HomePageProvider>().isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : _buildBody(),
    );
  }

  _buildBody() {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: context.watch<HomePageProvider>().count,
            itemBuilder: (_, index) {
              return HomePageWidgets(
                  homeDetails: context
                      .watch<HomePageProvider>()
                      .homePageModel!
                      .data![index]);
            }));
  }
}
