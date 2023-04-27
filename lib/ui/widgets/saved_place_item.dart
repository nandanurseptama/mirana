import 'package:flutter/material.dart';
import 'package:mirana/features/place/data/models/place_model.dart';
import 'package:mirana/features/place/data/models/place_type_enum.dart';

class SavedPlaceItemWidget extends StatelessWidget {
  final void Function(PlaceModel place)? onDelete;
  final PlaceModel place;
  const SavedPlaceItemWidget({super.key, required this.place, this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration:
          const BoxDecoration(border: Border(bottom: BorderSide(width: 0.9))),
      child: Row(
        children: [
          SizedBox(
            height: 48,
            width: 48,
            child: Icon(
              place.type == PlaceTypeEnum.hospital
                  ? Icons.local_hospital
                  : Icons.restaurant,
              color: place.type == PlaceTypeEnum.hospital
                  ? Colors.pink
                  : Colors.purple,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    place.name,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    place.address,
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              if (onDelete == null) {
                return;
              }
              return onDelete!(place);
            },
            child: const SizedBox(
              height: 48,
              width: 48,
              child: Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
