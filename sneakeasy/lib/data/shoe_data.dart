import '../models/shoe_model.dart';

final List<Shoe> allShoesData = [
  Shoe(
    name: 'Air Jordan 1 Mid Chicago',
    price: 250,
    id: 1,
    brand: 'Nike',
    material: 'Leather',
    primaryColor: 'Red',
    trending: true,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/083/706/674/original/651566_01.jpg.jpeg?action=crop&width=600',
    link: 'https://www.goat.com/sneakers/air-jordan-1-mid-chicago-554724-173',
  ),
  Shoe(
    name: 'Yeezy Boost 350 Triple White',
    price: 300,
    id: 2,
    brand: 'Adidas',
    material: 'Mesh',
    primaryColor: 'White',
    trending: false,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/079/011/427/original/116662_01.jpg.jpeg?action=crop&width=600',
    link: 'https://www.goat.com/sneakers/yeezy-boost-350-v2-cream-white-cp9366',
  ),
  Shoe(
    name: 'Nike Air Max 90 Infrared',
    price: 150,
    id: 3,
    brand: 'Nike',
    material: 'Leather & Mesh',
    primaryColor: 'White',
    trending: true,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/099/906/882/original/695234_01.jpg.jpeg?action=crop&width=600',
    link: 'https://www.goat.com/sneakers/air-max-90-infrared-2020-ct1685-100',
  ),
  Shoe(
    name: 'Adidas Ultraboost 21 Solar Red',
    price: 180,
    id: 4,
    brand: 'Adidas',
    material: 'Primeknit',
    primaryColor: 'Red',
    trending: false,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_pictures/images/051/952/865/original/FZ1925.png.png?action=crop&width=600',
    link: 'https://www.goat.com/sneakers/ultraboost-21-white-solar-red-fz1925',
  ),
  Shoe(
    name: 'Converse Chuck Taylor All-Star',
    price: 60,
    id: 5,
    brand: 'Converse',
    material: 'Canvas',
    primaryColor: 'Black',
    trending: true,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_pictures/images/023/673/908/original/164919C.png.png?action=crop&width=600',
    link:
        'https://www.goat.com/sneakers/chuck-taylor-all-star-hi-black-164919c',
  ),
  Shoe(
    name: 'Puma RS-X Bold',
    price: 110,
    id: 6,
    brand: 'Puma',
    material: 'Mesh & Leather',
    primaryColor: 'Blue',
    trending: false,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_pictures/images/025/328/551/original/372715_01.png.png?action=crop&width=600',
    link:
        'https://www.goat.com/sneakers/rs-x-bold-black-andean-toucan-orange-372715-01',
  ),
  Shoe(
    name: 'Vans Old Skool Black/White',
    price: 65,
    id: 7,
    brand: 'Vans',
    material: 'Suede & Canvas',
    primaryColor: 'Black',
    trending: true,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_pictures/images/011/783/831/original/VN000ZD4Y28.png.png?action=crop&width=600',
    link: 'https://www.goat.com/sneakers/old-skool-pro-vn000zd4y28',
  ),
  Shoe(
    name: 'New Balance 550 White/Green',
    price: 130,
    id: 8,
    brand: 'New Balance',
    material: 'Leather & Suede',
    primaryColor: 'Green',
    trending: true,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/102/479/033/original/781801_01.jpg.jpeg?action=crop&width=600',
    link: 'https://www.goat.com/sneakers/550-white-green-bb550wt1',
  ),
  Shoe(
    name: 'Jordan 4 Retro Bred',
    price: 220,
    id: 9,
    brand: 'Jordan',
    material: 'Leather & Suede',
    primaryColor: 'Black',
    trending: true,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/097/777/584/original/1293064_01.jpg.jpeg?action=crop&width=600',
    link:
        'https://www.goat.com/sneakers/air-jordan-4-retro-bred-reimagined-fv5029-006',
  ),
  Shoe(
    name: 'Asics Gel-Kayano 14 White/Silver',
    price: 150,
    id: 10,
    brand: 'Asics',
    material: 'Mesh',
    primaryColor: 'Silver',
    trending: false,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/092/006/010/original/1159238_01.jpg.jpeg?action=crop&width=600',
    link:
        'https://www.goat.com/sneakers/wmns-gel-kayano-14-silver-grape-1202a056-111',
  ),
  Shoe(
    name: 'Reebok Club C 85 Vintage',
    price: 75,
    id: 11,
    brand: 'Reebok',
    material: 'Leather',
    primaryColor: 'White',
    trending: true,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/092/466/993/original/1258969_01.jpg.jpeg?action=crop&width=600',
    link:
        'https://www.goat.com/sneakers/club-c-85-vintage-chalk-glen-green-100000317',
  ),
  Shoe(
    name: 'Saucony Shadow 6000 White/Blue',
    price: 120,
    id: 12,
    brand: 'Saucony',
    material: 'Mesh & Suede',
    primaryColor: 'Blue',
    trending: false,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/100/305/122/original/1263139_01.jpg.jpeg?action=crop&width=1000',
    link:
        'https://www.goat.com/sneakers/shadow-6000-premium-blue-white-s70785-1',
  ),
  Shoe(
    name: 'Reebok Classic Leather',
    price: 75,
    id: 11,
    brand: 'Reebok',
    material: 'Leather',
    primaryColor: 'White',
    trending: true,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/070/902/579/original/915017_01.jpg.jpeg?action=crop&width=600',
    link:
        'https://www.goat.com/sneakers/classic-leather-1983-vintage-chalk-vector-navy-gx6123',
  ),
  Shoe(
    name: 'Saucony Jazz Original',
    price: 90,
    id: 12,
    brand: 'Saucony',
    material: 'Suede & Nylon',
    primaryColor: 'Grey',
    trending: false,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_pictures/images/097/962/778/original/S2044_691.png.png?action=crop&width=600',
    link: 'https://www.goat.com/sneakers/jazz-original-grey-navy-s2044-691',
  ),
  Shoe(
    name: 'Air Jordan 5 Fire Red',
    price: 225,
    id: 13,
    brand: 'Nike',
    material: 'Leather',
    primaryColor: 'Red',
    trending: true,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/078/085/028/original/13617_01.jpg.jpeg?action=crop&width=750',
    link:
        'https://www.goat.com/sneakers/air-jordan-5-retro-2013-release-136027-120',
  ),
  Shoe(
    name: 'Adidas Samba Classic',
    price: 70,
    id: 14,
    brand: 'Adidas',
    material: 'Leather',
    primaryColor: 'Black',
    trending: true,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/089/143/738/original/837279_01.jpg.jpeg?action=crop&width=600',
    link: 'https://www.goat.com/sneakers/samba-classic-white-2021-772109-21',
  ),
  Shoe(
    name: 'Under Armour HOVR Sonic 4',
    price: 110,
    id: 15,
    brand: 'Under Armour',
    material: 'Knit',
    primaryColor: 'Black',
    trending: false,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_pictures/images/052/293/008/original/3023543_002.png.png?action=crop&width=600',
    link: 'https://www.goat.com/sneakers/hovr-sonic-4-black-white-3023543-002',
  ),
  Shoe(
    name: 'Brooks Ghost 14',
    price: 140,
    id: 16,
    brand: 'Brooks',
    material: 'Mesh',
    primaryColor: 'Grey',
    trending: true,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_pictures/images/070/237/436/original/110369_1D_078.png.png?action=crop&width=600',
    link: 'https://www.goat.com/sneakers/ghost-14-grey-blue-red-110369-1d-078',
  ),
  Shoe(
    name: 'Hoka Clifton 8',
    price: 140,
    id: 17,
    brand: 'Hoka',
    material: 'Mesh',
    primaryColor: 'Black',
    trending: true,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/087/100/844/original/1042565_01.jpg.jpeg?action=crop&width=600',
    link: 'https://www.goat.com/sneakers/clifton-8-black-white-1119393-bwht',
  ),
  Shoe(
    name: 'On Cloud 5',
    price: 140,
    id: 18,
    brand: 'On Running',
    material: 'Mesh',
    primaryColor: 'White',
    trending: true,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/097/110/742/original/1267232_01.jpg.jpeg?action=crop&width=600',
    link: 'https://www.goat.com/sneakers/wmns-cloud-5-white-59-98373',
  ),
  Shoe(
    name: 'Saucony Endorphin Speed 3',
    price: 170,
    id: 19,
    brand: 'Saucony',
    material: 'Mesh',
    primaryColor: 'Pink',
    trending: true,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_pictures/images/076/953/409/original/S20756_40.png.png?action=crop&width=600',
    link:
        'https://www.goat.com/sneakers/endorphin-speed-3-prospect-quartz-s20756-40',
  ),
  Shoe(
    name: 'Crocs Classic Clog',
    price: 50,
    id: 20,
    brand: 'Crocs',
    material: 'Rubber',
    primaryColor: 'Blue',
    trending: true,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/073/771/874/original/902162_01.jpg.jpeg?action=crop&width=600',
    link: 'https://www.goat.com/sneakers/classic-clog-navy-10001-410',
  ),
  Shoe(
    name: 'Nike Pegasus 40',
    price: 130,
    id: 21,
    brand: 'Nike',
    material: 'Mesh',
    primaryColor: 'Grey',
    trending: false,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_pictures/images/088/548/480/original/DV3853_102.png.png?action=crop&width=600',
    link:
        'https://www.goat.com/sneakers/air-zoom-pegasus-40-white-wolf-grey-dv3853-102',
  ),
  Shoe(
    name: 'Nike Free Run 5.0',
    price: 100,
    id: 22,
    brand: 'Nike',
    material: 'Mesh',
    primaryColor: 'Gold',
    trending: false,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/057/563/452/original/783612_01.jpg.jpeg?action=crop&width=600',
    link:
        'https://www.goat.com/sneakers/free-run-5-0-steam-olive-aura-cz1884-002',
  ),
  Shoe(
    name: 'Adidas NMD R1 V2',
    price: 150,
    id: 23,
    brand: 'Adidas',
    material: 'Primeknit',
    primaryColor: 'Black',
    trending: true,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_pictures/images/046/531/764/original/H02540.png.png?action=crop&width=600',
    link:
        'https://www.goat.com/sneakers/nmd_r1-v2-j-overbranded-core-black-h02540',
  ),
  Shoe(
    name: 'Under Armour HOVR Phantom 3',
    price: 160,
    id: 24,
    brand: 'Under Armour',
    material: 'Mesh',
    primaryColor: 'Grey',
    trending: true,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_pictures/images/090/685/495/original/3026652_100.png.png?action=crop&width=600',
    link:
        'https://www.goat.com/sneakers/hovr-phantom-3-se-elevate-halo-grey-3026652-100',
  ),
  Shoe(
    name: 'Nike Blazer Mid 77 Vintage',
    price: 100,
    id: 25,
    brand: 'Nike',
    material: 'Leather',
    primaryColor: 'White',
    trending: true,
    imageUrl:
        'https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/099/439/682/original/502784_01.jpg.jpeg?action=crop&width=600',
    link:
        'https://www.goat.com/sneakers/blazer-mid-77-vintage-white-black-bq6806-100',
  ),
];
