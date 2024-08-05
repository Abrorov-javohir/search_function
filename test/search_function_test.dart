import 'package:search_function/search_function.dart';
import 'package:test/test.dart';

void main() {
  group("Testing search", () {
    final list = List<int>.generate(1000, (i) => i);

    test('Linear Search - Found', () {
      final search = LinearSearch(list: list, target: 90);
      final result = search.search();
      expect(result.index, 90);
      expect(result.timeMicroseconds, greaterThanOrEqualTo(0));
    });

    test('Linear Search - Not Found', () {
      final search = LinearSearch(list: list, target: 1001);
      final result = search.search();
      expect(result.index, -1);
      expect(result.timeMicroseconds, greaterThanOrEqualTo(0));
    });

    test('Binary Search - Found', () {
      final search = BinarySearch(list: list, target: 500);
      final result = search.search();
      expect(result.index, 500);
      expect(result.timeMicroseconds, greaterThanOrEqualTo(0));
    });

    test('Binary Search - Not Found', () {
      final search = BinarySearch(list: list, target: 1001);
      final result = search.search();
      expect(result.index, -1);
      expect(result.timeMicroseconds, greaterThanOrEqualTo(0));
    });

    test('Jump Search - Found', () {
      final search = JumpSearch(list: list, target: 500);
      final result = search.search();
      expect(result.index, 500);
      expect(result.timeMicroseconds, greaterThanOrEqualTo(0));
    });

    test('Jump Search - Not Found', () {
      final search = JumpSearch(list: list, target: 1001);
      final result = search.search();
      expect(result.index, -1);
      expect(result.timeMicroseconds, greaterThanOrEqualTo(0));
    });
  });
}
