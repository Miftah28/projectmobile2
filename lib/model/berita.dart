import 'package:flutter/material.dart';

class Movie {
  String title;
  String description;
  String imageUrl;
  String subdescription;

  Movie(
      {required this.title,
      required this.description,
      required this.imageUrl,
      required this.subdescription});
}

List<Movie> movieList = [
  Movie(
      title: 'DIABETES',
      description:
          'Diabetes atau penyakit gula adalah penyakit kronis atau yang berlangsung jangka panjang. Penyakit ini ditandai dengan meningkatnya kadar gula darah (glukosa) hingga di atas nilai normal. Diabetes terjadi ketika tubuh pengidapnya tidak lagi mampu mengambil gula (glukosa) ke dalam sel dan menggunakannya sebagai energi. Kondisi ini pada akhirnya menghasilkan penumpukan gula ekstra dalam aliran darah tubuh.',
      subdescription: 'Diabetes atau penyakit gula adalah penyakit kronis atau yang berlangsung jangka panjang.....',
      imageUrl:
          'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2021/06/08230547/diabetes.jpg.webp'),
  Movie(
      title: 'JANTUNG',
      description:
          'Jantung adalah organ seukuran kepalan tangan yang berguna untuk memompa darah ke seluruh tubuh. Organ ini adalah bagian utama dari sistem peredaran darah di dalam tubuh setiap orang.Jantung berisi empat bagian utama yang terbuat dari otot dan digerakkan oleh impuls listrik. Otak dan sistem saraf adalah elemen membuat jantung berfungsi dengan normal.Penyakit jantung adalah suatu kondisi yang memengaruhi jantung sehingga tidak berfungsi dengan normal. Istilah penyakit jantung juga kerap dikaitkan dengan penyakit kardiovaskular. Penyakit ini umumnya mengacu pada kondisi yang melibatkan penyempitan atau penyumbatan pembuluh darah yang dapat menyebabkan serangan jantung, nyeri dada (angina), atau stroke.',
      subdescription: 'Jantung adalah organ seukuran kepalan tangan yang berguna untuk memompa darah ke seluruh tubuh.....',
      imageUrl:
          'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2021/06/22040819/Penyakit-Jantung.jpg.webp'),
  Movie(
      title: 'STROKE',
      description:
          'Stroke adalah kondisi yang terjadi ketika pasokan darah ke otak mengalami gangguan atau berkurang akibat penyumbatan (stroke iskemik) atau pecahnya pembuluh darah (stroke hemoragik). Tanpa pasokan darah, otak tidak akan mendapatkan asupan oksigen dan nutrisi, sehingga sel-sel pada sebagian area otak akan mati. Kondisi ini menyebabkan bagian tubuh yang dikendalikan oleh area otak yang rusak tidak dapat berfungsi dengan baik.',
      subdescription: 'Stroke adalah kondisi yang terjadi ketika pasokan darah ke otak mengalami gangguan.....',
      imageUrl:
          'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2021/06/08224718/stroke.jpg.webp'),
  Movie(
      title: 'KOLESTEROL',
      description:
          'Kolesterol adalah lemak yang diproduksi oleh tubuh, dan juga berasal dari makanan hewani. Kolesterol membantu tubuh memproduksi vitamin D, sejumlah hormon, dan asam empedu untuk mencerna lemak. Dalam kadar yang sesuai, ini sebenarnya dibutuhkan oleh tubuh dalam membantu membangun sel-sel baru agar tubuh bisa tetap berfungsi secara normal.',
      subdescription: 'Kolesterol adalah lemak yang diproduksi oleh tubuh.....',
      imageUrl:
          'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2021/06/16071428/Kolesterol.jpg.webp'),
  Movie(
      title: 'HIPERTENSI',
      description:
          'Hipertensi adalah pengertian medis dari penyakit tekanan darah tinggi. Kondisi ini dapat menyebabkan berbagai macam komplikasi kesehatan yang membahayakan nyawa jika dibiarkan. Bahkan, gangguan ini dapat menyebabkan peningkatan risiko terjadinya penyakit jantung, stroke, hingga kematian.',
      subdescription: 'Hipertensi adalah pengertian medis dari penyakit tekanan darah tinggi.....',
      imageUrl:
          'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2021/06/10090833/Hipertensi.jpg.webp'),
];
