import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nopy_valorant_flutter_app/core/my_core.dart';
import 'package:nopy_valorant_flutter_app/detail/detail.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailBloc, DetailState>(
      builder: (_, state) {
        return Column(
          children: [
            _detailAppBarExit(
              context,
              MediaQuery.of(context).viewPadding.top,
            ),
            _detailAppBarImage(state),
          ],
        );
      },
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

  Widget _detailAppBarImage(DetailState state) {
    return Image.network(
      state.agent?.bustPortrait ?? BaseLine.empty,
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
