class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "Corel DRAW - bu illyustratsiyalarni qaysi printsipiga asoslangan holda yaratuvchi va tahrirlovchi dastur hisoblanadi?",
    [
      Answer("vektor grafikasiga", true),
      Answer("pixcel grafikasiga", false),
      Answer("rastr grafikasiga", false),
      Answer("grafik imkoniyatlarga ", false),
    ],
  ));

  list.add(Question(
    "Pick (ko`rsatgich) instrumentlarning asosiy bajaradigan vazifasi?",
    [
      Answer(
          "Turli o`lcham va nisbatdagi to`g`ri to`rtburchaklik chizish", false),
      Answer("Ob'ektlarni tanlash va qayta tuzish", true),
      Answer("Ob'ektlar shaffofligini interaktiv tuzish", false),
      Answer("Ob'ekt qismlarini o`chirish", false),
    ],
  ));

  list.add(Question(
    "“Интерактивная заливка” instrumentlarning asosiy bajaradigan vazifasi.",
    [
      Answer("Ob'ektlarni tanlash va qayta tuzish", false),
      Answer(
          "Turli o`lcham va nisbatdagi to`g`ri to`rtburchaklik chizish", false),
      Answer("Ob'ektlar shaffofligini interaktiv tuzish", false),
      Answer("Ob'ektni interaktiv bo’yash", true),
    ],
  ));

  list.add(Question(
    "Asosiy menyu nechta punktdan iborat?",
    [
      Answer("6 ta", false),
      Answer("9 ta", false),
      Answer("11 ta ", true),
      Answer("13 ta", false),
    ],
  ));
  list.add(Question(
    "Uchta asosiy ranglar bilan kodlash qaysi.",
    [
      Answer("CMYK", false),
      Answer("RGB", true),
      Answer("LAB", false),
      Answer("to'g'ri javob yo'q", false),
    ],
  ));
  list.add(Question(
    "Fayl menyusi buyruqlari qanday amallar bajarishda foydalaniladi.",
    [
      Answer("Yangi fayl yaratish, import qilish.", false),
      Answer("Skayner qilish, eksport qilish.", false),
      Answer("Document haqida ma’lumot olish", false),
      Answer("Barchasi to'g'ri", true),
    ],
  ));
  list.add(Question(
    "Uch o'lchovli aylanma xarakat menyudan qaysi buyrug'ini tanlash orqali amalga oshiriladi?",
    [
      Answer("3D Rotate orqali amalga oshiriladi", true),
      Answer("\"Extract Rollover Object\" tugmasi orqali", false),
      Answer("Text buyrig'i orqali	", false),
      Answer("Barcha javoblar to'g'ri", false),
    ],
  ));
  list.add(Question(
    "Bezie (Bezier) asboblarining vazifasi nima?	",
    [
      Answer("kvadrat chizish", false),
      Answer("geometrik shakllar chizish", false),
      Answer("har xil egri chiziqlarni chizish ", true),
      Answer("to’g’ri chiziq chizish", false),
    ],
  ));
  list.add(Question(
    "Egri chiziqlar guruhi (Curve) asboblar paneli qanday qismlardan iborat",
    [
      Answer("Chizish,(Freehand), Bezie (Bezier)", false),
      Answer("Pero (Natural Pen), Ulchovli chiziq (Dimension)", false),
      Answer("Bog’lovchi chiziqlar(Connector Line) va bog’lagich (Connector)",
          false),
      Answer("barchasi to’g’ri", true),
    ],
  ));
  list.add(Question(
    "Obyekt (Object) guruhi asboblari qaysilardan tashkil topgan?",
    [
      Answer("Ko’pburchak (Polygon), Bezie (Bezier)", false),
      Answer("Pero (Natural Pen), Ulchovli chiziq (Dimension)", false),
      Answer("Korrdinat qo’goz (Graph Paper).", false),
      Answer(
          "Ko’pburchak (Polygon), Spiral (Spiral), Korrdinat qo’goz (Graph Paper).",
          true),
    ],
  ));
  list.add(Question(
    "Agarda bir nechta obyektlar ajratilgan bo’lsa markerlar qanday shakilda bo’ladi?",
    [
      Answer("Kub shaklida", false),
      Answer("Yulduzcha shaklida", false),
      Answer("Katta turtburchak shaklida.", true),
      Answer("Silindr shaklida", false),
    ],
  ));
  list.add(Question(
    "Obyektlarni markazdan masshtablash uchun qaysi tugma ishlatiladi?",
    [
      Answer("Ctrl tugmasi bilan.", false),
      Answer("Shift tugmasi bilan", true),
      Answer("Alt tugmasi bilan.", false),
      Answer("Capslock tugmasi bilan.", false),
    ],
  ));
  list.add(Question(
    "Vektor obyektinig kerak emas joylarini o’chiradigan asbob qaysi?",
    [
      Answer("Ластик (Eraser) asbobi.", true),
      Answer("Стрелка (Pick) asbobi", false),
      Answer("Форма (Shape) asbobi.", false),
      Answer("Безье (Bezier) asbobi.", false),
    ],
  ));
  list.add(Question(
    "RGB rang modelida qaysi ranglar asosiy ranglar sifatida ishlatiladi?",
    [
      Answer("oq,qora, qizil", false),
      Answer("qora, ko’k, qizil, sariq", false),
      Answer("qizil, yashil, ko’k", true),
      Answer("qizil, ko’k, sariq", false),
    ],
  ));
  list.add(Question(
    "Foydalanuvchi interfeyisi quyidagilardan tashkil topgan.",
    [
      Answer("sarlovha,bosh menyu, ishchi oynalar, panellar.", true),
      Answer("bosh menyu, satr, obyektlar shajarasi", false),
      Answer("ishchi oynalar, kontesk menyu.", false),
      Answer("barcha javoblar to’g’ri", false),
    ],
  ));
  list.add(Question(
    "Dastur ishchi oynasining quyi qismida qanday qator joylashgan.",
    [
      Answer("vositalar satri.", false),
      Answer("holat satri.", true),
      Answer("asboblar satri.", false),
      Answer("ish jarayonida qo’llaniladigan qurollar qatori", false),
    ],
  ));
  list.add(Question(
    "Corel Draw dasturida bir vaqtning o’zida bir nechta hujjatlar bilan ishlash mumkinmi.",
    [
      Answer("yo’q mumkin emas.", false),
      Answer("ha mumkin.", true),
      Answer("o’ylab ko’rish kerak", false),
      Answer("to’g’ri javob yo’q", false),
    ],
  ));
  list.add(Question(
    "Hujjatlarni xotiraga saqlash qanday amalga oshiriladi?",
    [
      Answer("menyuning “File”->“Save”.", false),
      Answer("menyuning “Файл”->“Cохранить”", false),
      Answer("klaviaturadan Ctrl+S tugmalarini bosish orqali", false),
      Answer("barcha javoblar to’g’ri", true),
    ],
  ));
  list.add(Question(
    "“Drang-and-drop” so’zining manosi nima?	",
    [
      Answer("olib borib tashlash", true),
      Answer("olmasdan o’chirib tashlash", false),
      Answer("olib o’chirib tashlash", false),
      Answer("bilmayman, o’ylab ko’rish lozim", false),
    ],
  ));
  list.add(Question(
    "RGB rang modeli qaerda ishlatiladi?",
    [
      Answer("Rangli bosmaga chiqaruvchi qurilmalarda", false),
      Answer("kompyuter ekranida", true),
      Answer("televidenieda", false),
      Answer("bunday rang modeli yo’q", false),
    ],
  ));

  return list;
}
