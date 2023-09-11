import 'package:flutter/material.dart';

class Aide extends StatelessWidget {
  const Aide({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(

      padding: const EdgeInsets.all(8.0),
      children: [
        Card(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 180.0,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset('../../images/flowers.jpg', fit: BoxFit.cover)
                    ),
                    Positioned(
                      bottom: 16.0,left:16.0,right:16.0,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text("exemple card 11",
                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white))),
                    )
                  ]
                ),
              )
            ]
          ),
        ),
        Card(
          color: Colors.white,
          child: Column(children: [
            SizedBox(
              height: 180.0,
              child: Stack(children: [
                Positioned.fill(
                    child: Image.asset('../../images/flower2.jpg',
                        fit: BoxFit.cover)),
                Positioned(
                  bottom: 16.0,
                  left: 16.0,
                  right: 16.0,
                  child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text("exemple card 22",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(color: Colors.white))),
                )
              ]),
            )
          ]),
        ),
        Card(
          color: Colors.white,
          child: Column(children: [
            SizedBox(
              height: 180.0,
              child: Stack(children: [
                Positioned.fill(
                    child: Image.asset('../../images/future.jpg',
                        fit: BoxFit.cover)),
                Positioned(
                  bottom: 16.0,
                  left: 16.0,
                  right: 16.0,
                  child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text("exemple card 33",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(color: Colors.white))),
                )
              ]),
            )
          ]),
        ),
        Card(
          color: Colors.white,
          child: Column(children: [
            SizedBox(
              height: 180.0,
              child: Stack(children: [
                Positioned.fill(
                    child: Image.asset('../../images/ipidi.jfif',
                        fit: BoxFit.cover)),
                Positioned(
                  bottom: 16.0,
                  left: 16.0,
                  right: 16.0,
                  child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text("exemple card 44",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(color: Colors.white))),
                )
              ]),
            )
          ]),
        )
      ],
    );
  }
}