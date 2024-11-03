import 'package:box/core/extension/size.dart';
import 'package:box/core/extension/widget.dart';
import 'package:box/core/style/color.dart';
import 'package:box/core/style/icon_broken.dart';
import 'package:box/core/style/text_style.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomeModuleScreen extends StatelessWidget {
  const HomeModuleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String img =
        'https://img.freepik.com/free-photo/top-view-food-banquet_23-2149893441.jpg?w=1380&t=st=1697715344~exp=1697715944~hmac=41d114531afce2ca2193a8174dcd539b31e1be4d8444c402699b4db3afaca5a9';
    return SingleChildScrollView(
      child: SafeArea(
          child: Column(
        children: [
          _buildDeliverToWidget(context),
          _buildCategoryNav(img, context),
          _buildOfferGroubs(context, img),
          _buildOfferGroubs(context, img),
          _buildOfferGroubs(context, img),
        ],
      )),
    );
  }

  Widget _buildOfferGroubs(BuildContext context, String img) {
    return Column(
      children: [
        Text(
          'Hot Offers',
          style: jan20bold(),
        ).colorContainer(width: 100.0.w(context)).paddingSH(context, 4.0),
        ListView.builder(
          itemCount: 20,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => _buildItemCard(context, img),
        ).colorContainer(width: 100.0.w(context), height: 22.0.h(context)),
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: TextButton(
              onPressed: () {},
              child: Text(
                'See All Deal',
                style:
                    jan15bold().copyWith(color: Recolor.mainColor, height: 1),
              )),
        )
      ],
    )
        .colorContainer(width: 100.0.w(context), height: 33.0.h(context))
        .paddingSV(context, 0.5);
  }

  Widget _buildItemCard(BuildContext context, img) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CachedNetworkImage(
            imageUrl: img,
            height: 16.0.h(context),
            width: 40.0.w(context),
            fit: BoxFit.cover,
          ).colorContainer(radius: 7).paddingSV(context, 0.5),
          Text(
            'PRODUCT NAME ',
            style: jan14().copyWith(height: 1),
            overflow: TextOverflow.ellipsis,
          ),
          const Text('PRICE 50.0 EG '),
        ],
      ).paddingSH(context, 0.5.w(context));

  Widget _buildCategoryNav(String img, BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CachedNetworkImage(
              imageUrl: img,
              width: 18.0.w(context),
              height: 6.0.h(context),
              fit: BoxFit.cover,
            ).roundWidget(radius: 1.0.w(context)),
            Text(
              'data$index',
              //style: jan18bold(),
            ),
          ],
        ).paddingSH(context, 2.0);
      },
    )
        .colorContainer(
          width: 100.0.w(context),
          height: 9.0.h(context),
        )
        .paddingSV(context, 1.0);
  }

  Widget _buildDeliverToWidget(BuildContext context) {
    return Row(
      children: [
        const Icon(IconBroken.Location).paddingSH(context, 2.0),
        Text(
          'Deliver To',
          style: ub15bold().copyWith(color: Colors.black),
        ),
      ],
    ).colorContainer(
      height: 6.0.h(context),
      width: 100.0.w(context),
      color: Colors.amber,
    );
  }
}
