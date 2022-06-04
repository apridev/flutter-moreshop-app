class OnBoarding{
  final String title;
  final String image;
  final String subtitle;

  OnBoarding({
    required this.title,
    required this.image,
    required this.subtitle
  });
}

List<OnBoarding> onBoardingList = [
  OnBoarding(
    title: 'Selamat datang di Moreshop. Temukan \nfashionmu sekarang!', 
    image: 'assets/img/onboarding1.png', 
    subtitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Consectetur eleifend ipsum eu tellus. Et senectus libero in felis, ut augue sed.'
  ),
  OnBoarding(
    title: 'Proses Pengiriman barang cepat dan efisien. \nTransaksi yang digunakan juga aman.', 
    image: 'assets/img/onboarding2.png', 
    subtitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Consectetur eleifend ipsum eu tellus. Et senectus libero in felis, ut augue sed.'
  ),
  OnBoarding(
    title: 'Tunggu apa lagi ayo belanja di Moreshop dan nikmati berbagai promo menarik.', 
    image: 'assets/img/onboarding3.png', 
    subtitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Consectetur eleifend ipsum eu tellus. Et senectus libero in felis, ut augue sed.'
  ),
];