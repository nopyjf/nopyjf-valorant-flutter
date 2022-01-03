import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nopy_valorant_flutter_app/detail/detail.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).viewPadding.top;

    return BlocBuilder<DetailBloc, DetailState>(
      builder: (_, state) {
        return Column(
          children: [
            Container(
              height: 56 + statusBarHeight,
              padding: const EdgeInsets.only(top: 16, left: 16),
              alignment: Alignment.centerLeft,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0x33C4C4C4),
                ),
                child: Container(
                  padding: const EdgeInsets.all(4),
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
              ),
            ),
            Image.network(
              state.agent?.bustPortrait ?? "",
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
            ),
          ],
        );
      },
    );
  }
}
