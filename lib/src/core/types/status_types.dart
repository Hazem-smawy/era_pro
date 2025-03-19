// ignore: constant_identifier_names
import 'package:get/get_rx/src/rx_types/rx_types.dart';

enum Status { LOADING, SUCCESS, ERROR, NOTHING }

enum NewStatus { initial, loading, success, error }

void updateStatus<T>({
  required Rx<NewStatus> status,
  required Rx<T?> response,
  required bool Function(T?) hasData,
}) async {
  await Future.delayed(
      Duration.zero); // Ensures this runs after async tasks finish

  if (response.value == null) {
    status.value = NewStatus.error;
  } else if (hasData(response.value)) {
    status.value = NewStatus.success;
  } else {
    status.value = NewStatus.initial;
  }
}

extension StatusExtension on Status {
  Status changeTo(Status newStatus) {
    return newStatus;
  }

  bool isLoading() => this == Status.LOADING;
  bool isSuccess() => this == Status.SUCCESS;
  bool isError() => this == Status.ERROR;
  bool isNothing() => this == Status.NOTHING;
}

enum StoreStatus { empty, loading, success, error }

enum BillsStatus { empty, loading, success, error }

enum ItemStatus { empty, loading, success, error }
