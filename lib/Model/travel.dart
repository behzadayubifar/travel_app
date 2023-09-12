class Travel {
  String name;
  String location;
  String image;
  String distance;
  String temp;
  String rating;
  String decription;
  String price;

  Travel({
    required this.name,
    required this.location,
    required this.image,
    required this.distance,
    required this.temp,
    required this.rating,
    required this.decription,
    required this.price,
  });
}

// write a list of Travels for me
List<Travel> travels = [
  Travel(
    name: "Mount Fuji",
    location: "Japan",
    image: "assets/images/mount_fuji.jpg",
    distance: "4000",
    temp: "20",
    rating: "4.5",
    decription:
        "Mount Fuji, located on Honshū, is the highest volcano in Japan at 3,776.24 m, 2nd-highest volcano of an island in Asia, and 7th-highest peak of an island in the world. It is a dormant stratovolcano that last erupted in 1707–1708.",
    price: "2000",
  ),
  Travel(
    name: "Mount Everest",
    location: "Nepal",
    image: "assets/images/mount_everest.jpg",
    distance: "8000",
    temp: "10",
    rating: "4.5",
    decription:
        "Mount Everest is Earth's highest mountain above sea level, located in the Mahalangur Himal sub-range of the Himalayas. The China–Nepal border runs across its summit point. Its elevation of 8,848.86 m was most recently established in 2020 by the Nepali and Chinese authorities.",
    price: "2000",
  ),
  Travel(
    name: "Mount Kilimanjaro",
    location: "Tanzania",
    image: "assets/images/mount_kilimanjaro.jpg",
    distance: "6000",
    temp: "15",
    rating: "4.5",
    decription:
        "Mount Kilimanjaro or just Kilimanjaro, with its three volcanic cones, Kibo, Mawenzi, and Shira, is a dormant volcano in Tanzania. It is the highest mountain in Africa, with its summit about 4,900 metres from its base, and 5,895 metres above sea level.",
    price: "2000",
  ),
  Travel(
    name: "Mount Elbrus",
    location: "Russia",
    image: "assets/images/mount_elbrus.jpg",
    distance: "5000",
    temp: "5",
    rating: "4.5",
    decription:
        "Mount Elbrus is a dormant volcano in the Caucasus Mountains in Southern Russia, near the border with Georgia. It could be considered the highest mountain in Europe, notwithstanding the fact that the Caucasus mountains are at the intersection of Europe and Asia, and it is the tenth most prominent peak in the world.",
    price: "2000",
  ),
];
