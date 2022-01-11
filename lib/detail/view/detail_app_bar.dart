import 'package:flutter/material.dart';
import 'package:nopy_valorant_flutter_app/core/my_core.dart';

class DetailAppBar extends StatelessWidget {
  final String bustPortrait;

  const DetailAppBar({Key? key, required this.bustPortrait}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _detailAppBarExit(
          context,
          MediaQuery.of(context).viewPadding.top,
        ),
        _detailAppBarImage(bustPortrait),
      ],
    );
  }

  Widget _detailAppBarExit(BuildContext context, double statusBarHeight) {
    return Container(
      height: MySize.size56 + statusBarHeight,
      padding: EdgeInsets.only(
        top: MySize.size16,
        left: MySize.size16,
      ),
      alignment: Alignment.centerLeft,
      child: _detailAppBarExitButton(context),
    );
  }

  Widget _detailAppBarExitButton(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: MyColor.alphaGrey,
      ),
      child: Container(
        padding: EdgeInsets.all(MySize.size4),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.close_sharp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _detailAppBarImage(String bustPortrait) {
    return Image.network(
      bustPortrait,
      loadingBuilder: (
        BuildContext context,
        Widget child,
        ImageChunkEvent? loadingProgress,
      ) {
        if (loadingProgress == null) return child;
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
