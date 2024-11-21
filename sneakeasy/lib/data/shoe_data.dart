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
    imageUrl: 'https://i.ebayimg.com/images/g/rx4AAOSwyele~3e9/s-l1200.jpg',
    link: 'https://www.ebay.com/itm/274493978849',
  ),
  Shoe(
    name: 'Yeezy Boost 350 Triple White',
    price: 300,
    id: 2,
    brand: 'Adidas',
    material: 'Mesh',
    primaryColor: 'White',
    trending: false,
    imageUrl: 'https://cdn.flightclub.com/TEMPLATE/800801/1.jpg?w=3840',
    link:
        'https://www.flightclub.com/yeezy-boost-350-v2-cwhite-cwhite-cwhite-800801',
  ),
  Shoe(
    name: 'Nike Air Max 90 Infrared',
    price: 150,
    id: 3,
    brand: 'Nike',
    material: 'Leather & Mesh',
    primaryColor: 'White',
    trending: true,
    imageUrl: 'https://cdn.flightclub.com/750/TEMPLATE/138038/1.jpg',
    link: 'https://www.flightclub.com/nike-air-max-90-infrared-138038',
  ),
  Shoe(
    name: 'Adidas Ultraboost 21 Solar Red',
    price: 180,
    id: 4,
    brand: 'Adidas',
    material: 'Primeknit',
    primaryColor: 'Red',
    trending: false,
    imageUrl: 'https://i.ebayimg.com/images/g/iWgAAOSwG0Zly7sV/s-l1200.jpg',
    link: 'https://www.flightclub.com/adidas-ultraboost-21-solar-red-231194',
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
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShGf6B6QueSe8SRXt3F9WZ98V8NIg2rObaMQ&s',
    link: 'https://www.flightclub.com/converse-chuck-taylor-all-star-199008',
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
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIffWyp3Cl1p-p5JjzDfP_do_9TQ7Qz_NVTg&s',
    link: 'https://www.flightclub.com/puma-rs-x-bold-175329',
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
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRN_muoPdwDrp-FHTK1DUZuX6AbLneTNzqh7g&s',
    link: 'https://www.flightclub.com/vans-old-skool-black-white-213960',
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
        'https://images.stockx.com/images/New-Balance-550-White-Green-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&q=90&dpr=2&trim=color&updated_at=1628002321',
    link: 'https://www.flightclub.com/new-balance-550-white-green-211405',
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
        'https://images.stockx.com/images/Air-Jordan-4-Retro-Black-Cement-2019-Product.jpg?fit=fill&bg=FFFFFF&w=1200&h=857&q=60&dpr=1&trim=color&updated_at=1606316608',
    link: 'https://www.flightclub.com/jordan-4-retro-bred-138206',
  ),
  Shoe(
    name: 'Asics Gel-Kayano 14 White/Silver',
    price: 150,
    id: 10,
    brand: 'Asics',
    material: 'Mesh',
    primaryColor: 'Silver',
    trending: false,
    imageUrl: 'https://cdn.flightclub.com/TEMPLATE/312097/1.jpg',
    link: 'https://www.flightclub.com/asics-gel-kayano-14-white-silver-233703',
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
        'https://reebok.bynder.com/transform/535ef73b-8bfa-4a40-b05c-5137540b2269/100000317_SLC_eCom-tif?io=transform:fit,width:500&quality=100',
    link: 'https://www.flightclub.com/reebok-club-c-85-vintage-208675',
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
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRx82yVt5ByrfMfP4SM6pqJJ_vANPpaG8Ae0A&s',
    link: 'https://www.flightclub.com/saucony-shadow-6000-white-blue-221749',
  ),
  // Additional shoes
  Shoe(
    name: 'Reebok Classic Leather',
    price: 75,
    id: 11,
    brand: 'Reebok',
    material: 'Leather',
    primaryColor: 'White',
    trending: true,
    imageUrl: 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:--',
    link:
        'https://www.reebok.com/p/100008790/classic-leather-shoes?georedirect=false',
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
        'https://m.media-amazon.com/images/I/81h2t-HTo1L._AC_SR1840,1472_.jpg',
    link:
        'https://www.zappos.com/p/unisex-saucony-originals-jazz-81-white-gray/product/9820824/color/749',
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
        'https://assets.adidas.com/images/h_2000,f_auto,q_auto,fl_lossy,c_fill,g_auto/cc3416c01bff48249f77a7fd012dd9fd_9366/Samba_Classic_Shoes_White_772109_01_standard.jpg',
    link: 'https://www.adidas.com/us/samba-classic-shoes/772109.html',
  ),
  Shoe(
    name: 'Under Armour HOVR Sonic 4',
    price: 110,
    id: 15,
    brand: 'Under Armour',
    material: 'Knit',
    primaryColor: 'Black',
    trending: false,
    imageUrl: 'https://i.ebayimg.com/images/g/Kp4AAOSwtdpm-YA~/s-l1600.webp',
    link: 'https://www.ebay.com/itm/387433432937',
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
        'https://m.media-amazon.com/images/I/71S+w4QQ0HL._AC_SR1840,1472_.jpg',
    link:
        'https://www.zappos.com/p/womens-brooks-single-shoe-ghost-14-alloy-primer-grey-oyster/product/9671546/color/913591',
  ),
  Shoe(
    name: 'Hoka Clifton 8',
    price: 140,
    id: 17,
    brand: 'Hoka',
    material: 'Mesh',
    primaryColor: 'Black',
    trending: true,
    imageUrl: 'https://m.media-amazon.com/images/I/71+8YdknJLL._AC_SX695_.jpg',
    link:
        'https://www.amazon.com/HOKA-ONE-Womens-Low-top-Sneaker/dp/B09WTJX38X',
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
        'https://dks.scene7.com/is/image/GolfGalaxy/22MAZWCLD5RSTBLCKFTW_Undyed?qlt=70&wid=500&fmt=webp&op_sharpen=1',
    link:
        'https://www.dickssportinggoods.com/p/on-womens-cloud-5-shoes-22mazwcld5rstblckftw/22mazwcld5rstblckftw?sku=23764263',
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
        'https://img.runningwarehouse.com/watermark/rs.php?path=SES3M03-1.jpg&nw=1080',
    link:
        'https://www.runningwarehouse.com/Saucony_Endorphin_Speed_3/descpage-SES3M03.html',
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
        'https://media.crocs.com/images/t_pdphero/f_auto%2Cq_auto/products/10001_4ST_ALT100/crocs',
    link: 'https://www.crocs.com/p/classic-clog/10001.html',
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
        'https://img.runningwarehouse.com/watermark/rs.php?path=NP40M14-1.jpg&nw=1080',
    link:
        'https://www.runningwarehouse.com/Nike_Pegasus_40/descpage-NP40M14.html',
  ),
  Shoe(
    name: 'Nike Free Run 5.0',
    price: 100,
    id: 22,
    brand: 'Nike',
    material: 'Mesh',
    primaryColor: 'Gold',
    trending: false,
    imageUrl: 'https://cdn.modesens.com/media/137945767?w=400',
    link:
        'https://modesens.com/product/nike-men-free-run-50-road-running-shoes-grey-50405401/?country=us&language=en',
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
        'https://images.footlocker.com/is/image/EBFL2/IE7279_a1?wid=500&hei=500&fmt=png-alpha',
    link:
        'https://www.footlocker.com/product/~/IE7279.html?source=shoppingads&locale=en-US&SID=6936&inceptor=1',
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
        'https://images.footlocker.com/is/image/EBFL2/26993100_a1?wid=500&hei=500&fmt=png-alpha',
    link:
        'https://www.footlocker.com/product/~/26993100.html?source=shoppingads&locale=en-US&SID=6936&inceptor=1',
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
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/fb7eda3c-5ac8-4d05-a18f-1c2c5e82e36e/BLAZER+MID+%2777+VNTG.png',
    link:
        'https://www.nike.com/t/blazer-mid-77-vintage-mens-shoes-nw30B2/BQ6806-100?nikemt=true',
  ),
];
