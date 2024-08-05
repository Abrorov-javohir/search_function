import 'dart:math';

/// Checks if you are awesome. Spoiler: you are.
class Awesome {
  bool get isAwesome => true;
}

class SearchResult {
  final int index;
  final int timeMicroseconds;
  SearchResult({
    required this.index,
    required this.timeMicroseconds,
  });
}

class LinearSearch {
  final List<dynamic> list;
  final dynamic target;

  LinearSearch({
    required this.list,
    required this.target,
  });

  SearchResult search() {
    final stopwatch = Stopwatch()..start();
    for (int i = 0; i < list.length; i++) {
      if (list[i] == target) {
        stopwatch.stop();
        return SearchResult(index: i, timeMicroseconds: stopwatch.elapsedMicroseconds);
      }
    }
    stopwatch.stop();
    return SearchResult(index: -1, timeMicroseconds: stopwatch.elapsedMicroseconds);
  }
}

class BinarySearch {
  final List<dynamic> list;
  final dynamic target;

  BinarySearch({
    required this.list,
    required this.target,
  });

  SearchResult search() {
    final stopwatch = Stopwatch()..start();
    int left = 0;
    int right = list.length - 1;
    while (left <= right) {
      int mid = left + (right - left) ~/ 2;
      if (list[mid] == target) {
        stopwatch.stop();
        return SearchResult(index: mid, timeMicroseconds: stopwatch.elapsedMicroseconds);
      }
      if (list[mid] < target) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    stopwatch.stop();
    return SearchResult(index: -1, timeMicroseconds: stopwatch.elapsedMicroseconds);
  }
}

class JumpSearch {
  final List<dynamic> list;
  final dynamic target;

  JumpSearch({
    required this.list,
    required this.target,
  });

  SearchResult search() {
    final stopwatch = Stopwatch()..start();
    int n = list.length;
    int step = sqrt(n).toInt();
    int prev = 0;

    while (prev < n && list[min(step, n) - 1] < target) {
      prev = step;
      step += sqrt(n).toInt();
      if (prev >= n) {
        stopwatch.stop();
        return SearchResult(index: -1, timeMicroseconds: stopwatch.elapsedMicroseconds);
      }
    }

    for (int i = prev; i < min(step, n); i++) {
      if (list[i] == target) {
        stopwatch.stop();
        return SearchResult(index: i, timeMicroseconds: stopwatch.elapsedMicroseconds);
      }
    }
    stopwatch.stop();
    return SearchResult(index: -1, timeMicroseconds: stopwatch.elapsedMicroseconds);
  }
}
