import 'package:airretailer/models/homepagemodel.dart';
import 'package:flutter/material.dart';

class HomePageWidgets extends StatelessWidget {
  Datum? homeDetails;

  HomePageWidgets({Key? key, this.homeDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          userdetailsheaderRow(homeDetails!),
          const SizedBox(height: 15),
          subheading(homeDetails!),
          const SizedBox(height: 15),
          subjectContainer(homeDetails!, context),
          const SizedBox(height: 15),
          activitiesRow(homeDetails!),
          const SizedBox(height: 25),
          commentContainer()
        ],
      ),
    );
  }

  userdetailsheaderRow(Datum datum) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
            datum.details!.image!,
          ),
          radius: 25,
        ),
        const SizedBox(width: 15),
        Text(datum.details!.name!),
        const SizedBox(width: 5),
        Text(datum.location.toString()),
        const Spacer(),
        const Icon(Icons.more_horiz),
        const SizedBox(width: 15),
      ],
    );
  }

  subheading(Datum datum) {
    return Text(datum.content!);
  }

  subjectContainer(Datum datum, BuildContext context) {
    return datum.postType == "video" || datum.postType == "VIDEO"
        ? Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: const FittedBox(
                child: Image(image: AssetImage("assets/images/novideo.jpg"))),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueGrey),
          )
        : datum.postType == "text" || datum.postType == "TEXT"
            ? Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                // child: const FittedBox(
                //     child: Image(image: AssetImage("assets/images/novideo.jpg"))),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey),
              )
            : Container(
                child: FittedBox(
                    child: datum.image! == ""
                        ? Image.asset("assets/images/Noimage.jpg")
                        : Image(image: NetworkImage(datum.image!))),
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
              );
  }

  activitiesRow(Datum datum) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text(datum.details!.react!.name),
            const SizedBox(width: 10),
            Container(
                width: 65,
                child: Stack(
                  children: const <Widget>[
                    CircleAvatar(
                        radius: 13,
                        child: Center(
                            child: Icon(Icons.monetization_on,
                                size: 25.0, color: Colors.black))),
                    Positioned(
                        left: 30.0,
                        child: CircleAvatar(
                            radius: 13,
                            child: Center(
                                child: Icon(Icons.monetization_on,
                                    size: 25.0, color: Colors.black)))),
                    Positioned(
                        left: 15.0,
                        child: CircleAvatar(
                            radius: 13,
                            child: Center(
                                child: Icon(Icons.monetization_on,
                                    size: 25.0, color: Colors.black)))),
                  ],
                )),
            const Text(""),
            const Spacer(),
            const Text("40"),
            const SizedBox(width: 10),
            const Icon(Icons.message),
            const SizedBox(width: 15),
            const Text("20"),
            const Icon(Icons.skip_next),
          ],
        ),
        const SizedBox(height: 25),
        const Text("view all 40 comments"),
      ],
    );
  }

  commentContainer() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[300],
      ),
      height: 55.0,
      child: const TextField(
        cursorColor: Colors.grey,
        style: TextStyle(
          fontSize: 14,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 20),
          border: InputBorder.none,
          hintText: "Write a comment",
          labelStyle: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
