class UtillsApp {
  static const String baseUrl = "https://api.quran.com/api/v4";

  static const List<Map> arabicName = [
    {"surah": "1", "name": "الفاتحة", "number": 7},
    {"surah": "2", "name": "البقرة", "number": 286},
    {"surah": "3", "name": "آل عمران", "number": 200},
    {"surah": "4", "name": "النساء", "number": 176},
    {"surah": "5", "name": "المائدة", "number": 120},
    {"surah": "6", "name": "الأنعام", "number": 165},
    {"surah": "7", "name": "الأعراف", "number": 206},
    {"surah": "8", "name": "الأنفال", "number": 75},
    {"surah": "9", "name": "التوبة", "number": 129},
    {"surah": "10", "name": "يونس", "number": 109},
    {"surah": "11", "name": "هود", "number": 123},
    {"surah": "12", "name": "يوسف", "number": 111},
    {"surah": "13", "name": "الرعد", "number": 43},
    {"surah": "14", "name": "ابراهيم", "number": 52},
    {"surah": "15", "name": "الحجر", "number": 99},
    {"surah": "16", "name": "النحل", "number": 128},
    {"surah": "17", "name": "الإسراء", "number": 111},
    {"surah": "18", "name": "الكهف", "number": 110},
    {"surah": "19", "name": "مريم", "number": 98},
    {"surah": "20", "name": "طه", "number": 135},
    {"surah": "21", "name": "الأنبياء", "number": 112},
    {"surah": "22", "name": "الحج", "number": 78},
    {"surah": "23", "name": "المؤمنون", "number": 118},
    {"surah": "24", "name": "النور", "number": 64},
    {"surah": "25", "name": "الفرقان", "number": 77},
    {"surah": "26", "name": "الشعراء", "number": 227},
    {"surah": "27", "name": "النمل", "number": 93},
    {"surah": "28", "name": "القصص", "number": 88},
    {"surah": "29", "name": "العنكبوت", "number": 69},
    {"surah": "30", "name": "الروم", "number": 60},
    {"surah": "31", "name": "لقمان", "number": 34},
    {"surah": "32", "name": "السجدة", "number": 30},
    {"surah": "33", "name": "الأحزاب", "number": 73},
    {"surah": "34", "name": "سبإ", "number": 54},
    {"surah": "35", "name": "فاطر", "number": 45},
    {"surah": "36", "name": "يس", "number": 83},
    {"surah": "37", "name": "الصافات", "number": 182},
    {"surah": "38", "name": "ص", "number": 88},
    {"surah": "39", "name": "الزمر", "number": 75},
    {"surah": "40", "name": "غافر", "number": 85},
    {"surah": "41", "name": "فصلت", "number": 54},
    {"surah": "42", "name": "الشورى", "number": 53},
    {"surah": "43", "name": "الزخرف", "number": 89},
    {"surah": "44", "name": "الدخان", "number": 59},
    {"surah": "45", "name": "الجاثية", "number": 37},
    {"surah": "46", "name": "الأحقاف", "number": 35},
    {"surah": "47", "name": "محمد", "number": 38},
    {"surah": "48", "name": "الفتح", "number": 29},
    {"surah": "49", "name": "الحجرات", "number": 18},
    {"surah": "50", "name": "ق", "number": 45},
    {"surah": "51", "name": "الذاريات", "number": 60},
    {"surah": "52", "name": "الطور", "number": 49},
    {"surah": "53", "name": "النجم", "number": 62},
    {"surah": "54", "name": "القمر", "number": 55},
    {"surah": "55", "name": "الرحمن", "number": 78},
    {"surah": "56", "name": "الواقعة", "number": 96},
    {"surah": "57", "name": "الحديد", "number": 29},
    {"surah": "58", "name": "المجادلة", "number": 22},
    {"surah": "59", "name": "الحشر", "number": 24},
    {"surah": "60", "name": "الممتحنة", "number": 13},
    {"surah": "61", "name": "الصف", "number": 14},
    {"surah": "62", "name": "الجمعة", "number": 11},
    {"surah": "63", "name": "المنافقون", "number": 11},
    {"surah": "64", "name": "التغابن", "number": 18},
    {"surah": "65", "name": "الطلاق", "number": 12},
    {"surah": "66", "name": "التحريم", "number": 12},
    {"surah": "67", "name": "الملك", "number": 30},
    {"surah": "68", "name": "القلم", "number": 52},
    {"surah": "69", "name": "الحاقة", "number": 52},
    {"surah": "70", "name": "المعارج", "number": 44},
    {"surah": "71", "name": "نوح", "number": 28},
    {"surah": "72", "name": "الجن", "number": 28},
    {"surah": "73", "name": "المزمل", "number": 20},
    {"surah": "74", "name": "المدثر", "number": 56},
    {"surah": "75", "name": "القيامة", "number": 40},
    {"surah": "76", "name": "الانسان", "number": 31},
    {"surah": "77", "name": "المرسلات", "number": 50},
    {"surah": "78", "name": "النبإ", "number": 40},
    {"surah": "79", "name": "النازعات", "number": 46},
    {"surah": "80", "name": "عبس", "number": 42},
    {"surah": "81", "name": "التكوير", "number": 29},
    {"surah": "82", "name": "الإنفطار", "number": 19},
    {"surah": "83", "name": "المطففين", "number": 36},
    {"surah": "84", "name": "الإنشقاق", "number": 25},
    {"surah": "85", "name": "البروج", "number": 22},
    {"surah": "86", "name": "الطارق", "number": 17},
    {"surah": "87", "name": "الأعلى", "number": 19},
    {"surah": "88", "name": "الغاشية", "number": 26},
    {"surah": "89", "name": "الفجر", "number": 30},
    {"surah": "90", "name": "البلد", "number": 20},
    {"surah": "91", "name": "الشمس", "number": 15},
    {"surah": "92", "name": "الليل", "number": 21},
    {"surah": "93", "name": "الضحى", "number": 11},
    {"surah": "94", "name": "الشرح", "number": 8},
    {"surah": "95", "name": "التين", "number": 8},
    {"surah": "96", "name": "العلق", "number": 19},
    {"surah": "97", "name": "القدر", "number": 5},
    {"surah": "98", "name": "البينة", "number": 8},
    {"surah": "99", "name": "الزلزلة", "number": 8},
    {"surah": "100", "name": "العاديات", "number": 11},
    {"surah": "101", "name": "القارعة", "number": 11},
    {"surah": "102", "name": "التكاثر", "number": 8},
    {"surah": "103", "name": "العصر", "number": 3},
    {"surah": "104", "name": "الهمزة", "number": 9},
    {"surah": "105", "name": "الفيل", "number": 5},
    {"surah": "106", "name": "قريش", "number": 4},
    {"surah": "107", "name": "الماعون", "number": 7},
    {"surah": "108", "name": "الكوثر", "number": 3},
    {"surah": "109", "name": "الكافرون", "number": 6},
    {"surah": "110", "name": "النصر", "number": 3},
    {"surah": "111", "name": "المسد", "number": 5},
    {"surah": "112", "name": "الإخلاص", "number": 4},
    {"surah": "113", "name": "الفلق", "number": 5},
    {"surah": "114", "name": "الناس", "number": 6}
  ];
  static const List<int> noOfVerses = [
    7,
    286,
    200,
    176,
    120,
    165,
    206,
    75,
    129,
    109,
    123,
    111,
    43,
    52,
    99,
    128,
    111,
    110,
    98,
    135,
    112,
    78,
    118,
    64,
    77,
    227,
    93,
    88,
    69,
    60,
    34,
    30,
    73,
    54,
    45,
    83,
    182,
    88,
    75,
    85,
    54,
    53,
    89,
    59,
    37,
    35,
    38,
    29,
    18,
    45,
    60,
    49,
    62,
    55,
    78,
    96,
    29,
    22,
    24,
    13,
    14,
    11,
    11,
    18,
    12,
    12,
    30,
    52,
    52,
    44,
    28,
    28,
    20,
    56,
    40,
    31,
    50,
    40,
    46,
    42,
    29,
    19,
    36,
    25,
    22,
    17,
    19,
    26,
    30,
    20,
    15,
    21,
    11,
    8,
    8,
    19,
    5,
    8,
    8,
    11,
    11,
    8,
    3,
    9,
    5,
    4,
    7,
    3,
    6,
    3,
    5,
    4,
    5,
    6
  ];
}
