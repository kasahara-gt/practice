import 'dart:io';

bool isLeapYear(int year) {
  """
  与えられた年が閏年かどうかを判定します。

  Args:
      year: 判定する年。

  Returns:
      閏年ならtrue、平年ならfalse。
  """;
  if (year % 4 == 0) {
    if (year % 100 == 0) {
      if (year % 400 == 0) {
        return true;
      } else {
        return false;
      }
    } else {
      return true;
    }
  } else {
    return false;
  }
}

void main() {
  try {
    stdout.write('西暦を入力してください: ');
    final input = stdin.readLineSync();
    if (input == null) {
      throw FormatException('入力が空です。');
    }
    final year = int.parse(input);
    print(isLeapYear(year));
  } on FormatException catch (e) {
    print('エラー: ${e.message}');
  } catch (e) {
    print('予期せぬエラーが発生しました: $e');
  }
}