// ignore_for_file: avoid_print

void main() {
  print("//============ SOAL B ===========");

  String inputSoalB = '1.225.441';
  String rmvDot = inputSoalB.replaceAll(".", "");
  for (int i = 0; i < rmvDot.length; i++) {
    print(rmvDot[i] + addZero(i, rmvDot.length));
  }
  print("//=================================");

  print("//============ SOAL C =============");

  String? inputSoalC = "hello world";
  Map<String, int> characterFrequency = {};
  for (int i = 0; i < inputSoalC.length; i++) {
    String char = inputSoalC[i];
    if (char != ' ') {
      if (characterFrequency.containsKey(char)) {
        characterFrequency[char] = (characterFrequency[char] ?? 0) + 1;
      } else {
        characterFrequency[char] = 1;
      }
    }
  }
  characterFrequency.forEach((char, frequency) {
    print('$char - $frequency');
  });

  print("//=================================");

  print("//============ SOAL D ============");

  int N = 20; // Ganti dengan nilai N sesuai kebutuhan
  for (int i = 1; i <= N; i++) {
    String result = '';

    if (i % 5 == 0 && i != 5) {
      result = 'IDIC';
    }

    if (i % 6 == 0 && i != 6) {
      result = 'LPS';
    }

    if (result.isEmpty) {
      result = i.toString();
    }

    print(result);
  }
  print("//================================");

  print("//============ SOAL E ===========");

  String? inputSoalE = "SeLamAT PAGi semua halOo";
  String titleCase = toTitleCase(inputSoalE);
  String lowerCase = inputSoalE.toLowerCase();
  print("Format Judul: $titleCase");
  print("Format Biasa: $lowerCase");

  print("//=================================");
}

String addZero(int index, int length) {
  String res = '';
  for (int i = 0; i < (length - 1) - index; i++) {
    res += "0";
  }
  return res;
}

String toTitleCase(String text) {
  List<String> words = text.split(' ');

  for (int i = 0; i < words.length; i++) {
    if (words[i].isNotEmpty) {
      words[i] =
          words[i][0].toUpperCase() + words[i].substring(1).toLowerCase();
    }
  }
  return words.join(' ');
}
