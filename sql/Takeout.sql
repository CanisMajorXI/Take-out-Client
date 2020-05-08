/*
 Navicat Premium Data Transfer

 Source Server         : mongo
 Source Server Type    : MongoDB
 Source Server Version : 40206
 Source Host           : localhost:27017
 Source Schema         : Takeout

 Target Server Type    : MongoDB
 Target Server Version : 40206
 File Encoding         : 65001

 Date: 08/05/2020 16:30:40
*/


// ----------------------------
// Collection structure for orders
// ----------------------------
db.getCollection("orders").drop();
db.createCollection("orders");

// ----------------------------
// Documents of orders
// ----------------------------
db.getCollection("orders").insert([ {
    _id: ObjectId("5eb03deb5f9fbe461cac0433"),
    foods: [
        {
            name: "bone and meat kebabs",
            id: "10003",
            price: "10.6",
            pic: "https://cube.elemecdn.com/7/ba/a86f40577e504f6c454171a595dcfjpeg.jpeg?x-oss-process=image/resize,m_lfit,w_141,h_141/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp",
            num: NumberInt("1")
        },
        {
            name: "spicy chicken wings",
            id: "10004",
            price: "13.9",
            pic: "https://cube.elemecdn.com/a/8f/8746525e3c7a01007dc41e89c1561jpeg.jpeg?x-oss-process=image/resize,m_lfit,w_141,h_141/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp",
            num: NumberInt("2")
        }
    ],
    num: "2020550811_nckiy9zkd",
    time: ISODate("2020-05-04T16:08:11.36Z"),
    storeId: ObjectId("5dd29214151ff50b14524f37"),
    userId: ObjectId("5eb02fe1e354503f6017dbfc"),
    storeName: "Wallace's burger（CCNU Store）",
    storeLogoUrl: "https://cube.elemecdn.com/0/35/11f89c92c5e17dd0aa4b0384c9959jpeg.jpeg?x-oss-process=image/format,webp/resize,w_130,h_130,m_fixed",
    price: 42.4,
    userAddress: "XinAn",
    userName: "Qiwei Zhang",
    userPhone: "13153083012",
    status: NumberInt("1"),
    __v: NumberInt("0")
} ]);
db.getCollection("orders").insert([ {
    _id: ObjectId("5eb03f955f9fbe461cac0435"),
    foods: [
        {
            name: "Roast pork with rice",
            id: "10003",
            price: "26",
            pic: "http://pic.51yuansu.com/pic3/cover/01/55/70/594c83ce7e5b3_610.jpg",
            num: NumberInt("1")
        },
        {
            name: "Steamed egg rice rolls",
            id: "10008",
            price: "6",
            pic: "http://pic.51yuansu.com/pic3/cover/01/55/70/594c83ce7e5b3_610.jpg",
            num: NumberInt("3")
        }
    ],
    num: "20205501517_9t0phbk0x",
    time: ISODate("2020-05-04T16:15:17.13Z"),
    storeId: ObjectId("5dd292a8b077520c2839aa0b"),
    userId: ObjectId("5eb02fe1e354503f6017dbfc"),
    storeName: "Keke casual restaurant",
    storeLogoUrl: "https://cube.elemecdn.com/1/10/94e068597d5b90407fff916adc0ecpng.png?x-oss-process=image/format,webp/resize,w_130,h_130,m_fixed",
    price: NumberInt("46"),
    userAddress: "XinAn",
    userName: "Qiwei Zhang",
    userPhone: "13153083012",
    status: NumberInt("1"),
    __v: NumberInt("0")
} ]);
db.getCollection("orders").insert([ {
    _id: ObjectId("5eb0407e5f9fbe461cac043c"),
    foods: [
        {
            name: "Roast pork with rice",
            id: "10003",
            price: "10.6",
            pic: "https://cube.elemecdn.com/7/ba/a86f40577e504f6c454171a595dcfjpeg.jpeg?x-oss-process=image/resize,m_lfit,w_141,h_141/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp",
            num: NumberInt("1")
        }
    ],
    num: "20205501910_osmq1soxu",
    time: ISODate("2020-05-04T16:19:10.94Z"),
    storeId: ObjectId("5dd29214151ff50b14524f37"),
    userId: ObjectId("5eb02fe1e354503f6017dbfc"),
    storeName: "Wallace's burger（CCNU Store）",
    storeLogoUrl: "https://cube.elemecdn.com/0/35/11f89c92c5e17dd0aa4b0384c9959jpeg.jpeg?x-oss-process=image/format,webp/resize,w_130,h_130,m_fixed",
    price: 14.6,
    userAddress: "XinAn",
    userName: "Qiwei Zhang",
    userPhone: "13153083012",
    status: NumberInt("1"),
    __v: NumberInt("0")
} ]);
db.getCollection("orders").insert([ {
    _id: ObjectId("5eb040945f9fbe461cac043f"),
    foods: [
        {
            name: "\"2 bone and meat kebabs",
            id: "10003",
            price: "10.6",
            pic: "https://cube.elemecdn.com/7/ba/a86f40577e504f6c454171a595dcfjpeg.jpeg?x-oss-process=image/resize,m_lfit,w_141,h_141/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp",
            num: NumberInt("1")
        }
    ],
    num: "20205501932_uci7ruqeq",
    time: ISODate("2020-05-04T16:19:32.908Z"),
    storeId: ObjectId("5dd29214151ff50b14524f37"),
    userId: ObjectId("5eb02fe1e354503f6017dbfc"),
    storeName: "华莱士汉堡（华师大店）",
    storeLogoUrl: "https://cube.elemecdn.com/0/35/11f89c92c5e17dd0aa4b0384c9959jpeg.jpeg?x-oss-process=image/format,webp/resize,w_130,h_130,m_fixed",
    price: 14.6,
    userAddress: "XinAn",
    userName: "Qiwei Zhang",
    userPhone: "13153083012",
    status: NumberInt("1"),
    __v: NumberInt("0")
} ]);
db.getCollection("orders").insert([ {
    _id: ObjectId("5eb3c6e9834c3517109a1c0a"),
    foods: [
        {
            name: "spicy chicken wings",
            id: "10004",
            price: "13.9",
            pic: "https://cube.elemecdn.com/a/8f/8746525e3c7a01007dc41e89c1561jpeg.jpeg?x-oss-process=image/resize,m_lfit,w_141,h_141/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp",
            num: NumberInt("1")
        }
    ],
    num: "202057162929_q7xj3k16e",
    time: ISODate("2020-05-07T08:29:29.815Z"),
    storeId: ObjectId("5dd29214151ff50b14524f37"),
    userId: ObjectId("5eb02fe1e354503f6017dbfc"),
    storeName: "Wallace's burger（CCNU Store）",
    storeLogoUrl: "",
    price: 17.9,
    userAddress: "test",
    userName: "test",
    userPhone: "11166666666",
    status: NumberInt("1"),
    __v: NumberInt("0")
} ]);
db.getCollection("orders").insert([ {
    _id: ObjectId("5eb3c783834c3517109a1c0d"),
    foods: [
        {
            name: "spicy chicken wings",
            id: "10004",
            price: "13.9",
            pic: "https://cube.elemecdn.com/a/8f/8746525e3c7a01007dc41e89c1561jpeg.jpeg?x-oss-process=image/resize,m_lfit,w_141,h_141/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp",
            num: NumberInt("2")
        }
    ],
    num: "20205716323_uohqnwjlx",
    time: ISODate("2020-05-07T08:32:03.333Z"),
    storeId: ObjectId("5dd29214151ff50b14524f37"),
    userId: ObjectId("5eb02fe1e354503f6017dbfc"),
    storeName: "Wallace's burger（CCNU Store）",
    storeLogoUrl: "",
    price: 31.8,
    userAddress: "test",
    userName: "test",
    userPhone: "11166666666",
    status: NumberInt("1"),
    __v: NumberInt("0")
} ]);
db.getCollection("orders").insert([ {
    _id: ObjectId("5eb3d11b834c3517109a1c1c"),
    foods: [
        {
            name: "Hot and dry beef noodles",
            id: "10003",
            price: "10.6",
            pic: "https://cube.elemecdn.com/7/ba/a86f40577e504f6c454171a595dcfjpeg.jpeg?x-oss-process=image/resize,m_lfit,w_141,h_141/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp",
            num: NumberInt("1")
        },
        {
            name: "Hot and dry pork noodles",
            id: "10004",
            price: "13.9",
            pic: "https://cube.elemecdn.com/a/8f/8746525e3c7a01007dc41e89c1561jpeg.jpeg?x-oss-process=image/resize,m_lfit,w_141,h_141/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp",
            num: NumberInt("1")
        }
    ],
    num: "202057171259_sc6iyl101",
    time: ISODate("2020-05-07T09:12:59.499Z"),
    storeId: ObjectId("5dd292a8b077520c2839aa0b"),
    userId: ObjectId("5eb02fe1e354503f6017dbfc"),
    storeName: "Wuhan Caimingwei",
    storeLogoUrl: "https://localhost/9/f6/94d860414ac9e3e76c4a4abb8c213png.png?x-oss-process=image/format,webp/resize,w_130,h_130,m_fixed",
    price: 26.5,
    userAddress: "test",
    userName: "test",
    userPhone: "11166666666",
    status: NumberInt("1"),
    __v: NumberInt("0")
} ]);
db.getCollection("orders").insert([ {
    _id: ObjectId("5eb4c59d76fb023d60b0ad27"),
    foods: [
        {
            name: "spicy chicken wings",
            id: "10004",
            price: "13.9",
            pic: "https://cube.elemecdn.com/a/8f/8746525e3c7a01007dc41e89c1561jpeg.jpeg?x-oss-process=image/resize,m_lfit,w_141,h_141/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp",
            num: NumberInt("2")
        }
    ],
    num: "202058103613_0r5qnh5fj",
    time: ISODate("2020-05-08T02:36:13.846Z"),
    storeId: ObjectId("5dd29214151ff50b14524f37"),
    userId: ObjectId("5eb4c35276fb023d60b0ad24"),
    storeName: "Wallace's burger（CCNU Store）",
    storeLogoUrl: "",
    price: 31.8,
    userAddress: "ccnu1",
    userName: "address1",
    userPhone: "14444444444",
    status: NumberInt("1"),
    __v: NumberInt("0")
} ]);
db.getCollection("orders").insert([ {
    _id: ObjectId("5eb510a13c830e24a092b1c6"),
    foods: [
        {
            name: "spicy chicken wings",
            id: "10004",
            price: "13.9",
            pic: "https://cube.elemecdn.com/a/8f/8746525e3c7a01007dc41e89c1561jpeg.jpeg?x-oss-process=image/resize,m_lfit,w_141,h_141/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp",
            num: NumberInt("2")
        }
    ],
    num: "202058155617_q00mtkhd2",
    time: ISODate("2020-05-08T07:56:17.016Z"),
    storeId: ObjectId("5dd29214151ff50b14524f37"),
    userId: ObjectId("5eb5105a3c830e24a092b1c4"),
    storeName: "Wallace's burger（CCNU Store）",
    storeLogoUrl: "",
    price: 31.8,
    userAddress: "XinAn",
    userName: "Qiwei Zhang",
    userPhone: "13153083012",
    status: NumberInt("1"),
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for statistics
// ----------------------------
db.getCollection("statistics").drop();
db.createCollection("statistics");

// ----------------------------
// Documents of statistics
// ----------------------------
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3129878436569cd96727"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T14:24:41.65Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3129878436569cd96728"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T14:24:41.812Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3262877d7b3a98d8235b"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T14:29:54.275Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac33f9da09a10848503d6c"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T14:36:41.099Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac349bda09a10848503d6d"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T14:39:23.684Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac349bda09a10848503d6e"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T14:39:23.953Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3529da09a10848503d6f"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T14:41:45.765Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac352ada09a10848503d70"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T14:41:46.089Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac358cda09a10848503d71"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T14:43:24.425Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac358cda09a10848503d72"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T14:43:24.72Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac37c9da09a10848503d73"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T14:52:57.496Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac38afda09a10848503d74"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T14:56:47.142Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac391fda09a10848503d75"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T14:58:39.57Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac393cda09a10848503d76"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T14:59:08.041Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac39c0da09a10848503d77"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:01:20.331Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3a45da09a10848503d78"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:03:33.237Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3a81da09a10848503d79"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:04:33.959Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3a82da09a10848503d7a"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:04:34.278Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3a82da09a10848503d7b"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:04:34.301Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3a9ada09a10848503d7c"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:04:58.76Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3a9ada09a10848503d7d"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:04:58.838Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3a9ada09a10848503d7e"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:04:58.852Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3aa8da09a10848503d7f"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:05:12.308Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3aa8da09a10848503d80"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:05:12.526Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3aa8da09a10848503d81"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:05:12.572Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3abdda09a10848503d82"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:05:33.135Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3abdda09a10848503d83"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:05:33.337Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3abdda09a10848503d84"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:05:33.435Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3ac6da09a10848503d85"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:05:42.427Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3adeda09a10848503d86"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:06:06.989Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3adfda09a10848503d87"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:06:07.01Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3adfda09a10848503d88"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:06:07.029Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3ae8da09a10848503d89"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:06:16.968Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3ae9da09a10848503d8a"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:06:17.31Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3ae9da09a10848503d8b"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:06:17.384Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3b03da09a10848503d8c"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:06:43.546Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3b03da09a10848503d8d"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:06:43.81Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3b03da09a10848503d8e"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:06:43.855Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3b4fda09a10848503d8f"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:07:59.878Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3b50da09a10848503d90"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:08:00.158Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3b50da09a10848503d91"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:08:00.246Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3b80da09a10848503d92"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:08:48.437Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3b80da09a10848503d93"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:08:48.477Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3b84da09a10848503d94"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:08:52.078Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3becda09a10848503d95"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:10:36.216Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3becda09a10848503d96"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:10:36.24Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3c1eda09a10848503d97"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:11:26.753Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3c1eda09a10848503d98"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:11:26.843Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3ce5da09a10848503d99"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:14:45.805Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3d16da09a10848503d9a"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:15:34.547Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3d26da09a10848503d9b"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:15:50.754Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3d39da09a10848503d9c"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:16:09.804Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3d46da09a10848503d9d"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:16:22.76Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3d64da09a10848503d9f"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:16:52.481Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3dd4da09a10848503da0"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:18:44.725Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3e12da09a10848503da1"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:19:46.801Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eac3e18da09a10848503da2"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-01T15:19:52.065Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eacf0b98111202d189148ee"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-02T04:02:01.473Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb02fa3e354503f6017dbfb"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-04T15:07:15.62Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb03150e354503f6017dbfe"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-04T15:14:24.848Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb031c0e354503f6017dbff"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-04T15:16:16.701Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb0320be354503f6017dc00"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-04T15:17:31.005Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb032bee354503f6017dc01"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-04T15:20:30.886Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb03310e354503f6017dc02"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-04T15:21:52.56Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb0336de354503f6017dc03"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-04T15:23:25.238Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb033cfe354503f6017dc04"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-04T15:25:03.618Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb034bce354503f6017dc07"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-04T15:29:00.739Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb0359fe354503f6017dc09"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-04T15:32:47.747Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb035d3e354503f6017dc0a"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-04T15:33:39.97Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb035f9e354503f6017dc0b"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-04T15:34:17.136Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb03600e354503f6017dc0c"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-04T15:34:24.877Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb0366fe354503f6017dc0d"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-04T15:36:15.381Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb03deb5f9fbe461cac0434"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-04T16:08:11.984Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb03f955f9fbe461cac0436"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-04T16:15:17.446Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb03fb25f9fbe461cac0437"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-04T16:15:46.236Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb040595f9fbe461cac0438"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-04T16:18:33.088Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb040655f9fbe461cac0439"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-04T16:18:45.869Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb040685f9fbe461cac043a"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-04T16:18:48.784Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb040735f9fbe461cac043b"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-04T16:18:59.909Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb0407f5f9fbe461cac043d"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-04T16:19:11.56Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb0408d5f9fbe461cac043e"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-04T16:19:25.596Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb040955f9fbe461cac0440"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-04T16:19:33.235Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb0cb4deb6ed6203895739f"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-05T02:11:25.421Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb0d276eb6ed620389573a1"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-05T02:41:58.915Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb0d28ceb6ed620389573a2"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-05T02:42:20.968Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb0d298eb6ed620389573a3"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-05T02:42:32.574Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb0d2d9eb6ed620389573a4"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-05T02:43:37.103Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb0d2d9eb6ed620389573a5"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-05T02:43:37.219Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb0d2edeb6ed620389573a6"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-05T02:43:57.11Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb0d2edeb6ed620389573a7"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-05T02:43:57.162Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb0d2f2eb6ed620389573a8"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-05T02:44:02.522Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb0d2f2eb6ed620389573a9"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-05T02:44:02.861Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb0d2feeb6ed620389573aa"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-05T02:44:14.506Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb0d2feeb6ed620389573ab"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-05T02:44:14.637Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb0d308eb6ed620389573ac"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-05T02:44:24.312Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb12de7eb6ed620389573ad"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-05T09:12:07.299Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb2c96d5882b4380c433874"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-06T14:27:57.14Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb2c9705882b4380c433875"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-06T14:28:00.694Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb2c98b4f4f8f4d34439b50"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-06T14:28:27.118Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb2c9a64f4f8f4d34439b51"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-06T14:28:54.435Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb2c9a84f4f8f4d34439b52"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-06T14:28:56.941Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb2c9ab4f4f8f4d34439b53"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-06T14:28:59.389Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb2d17272a76e58d057d496"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-06T15:02:10.6Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb2d68e72a76e58d057d497"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-06T15:23:58.166Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb2d72b72a76e58d057d498"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-06T15:26:35.292Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb2d7f872a76e58d057d499"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-06T15:30:00.418Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb2da2272a76e58d057d49a"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-06T15:39:14.037Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb36d0845abc345a00345bd"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T02:06:00.454Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb36e4945abc345a00345be"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T02:11:21.059Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb371f845abc345a00345bf"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T02:27:04.075Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3737645abc345a00345c0"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T02:33:26.825Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb375d945abc345a00345c1"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T02:43:37.9Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3760545abc345a00345c2"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T02:44:21.924Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3786645abc345a00345c3"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T02:54:30.038Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3797245abc345a00345c4"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T02:58:58.944Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb379a445abc345a00345c5"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T02:59:48.353Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb37ada45abc345a00345c6"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T03:04:58.901Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb37add45abc345a00345c7"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T03:05:01.665Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb37fec45abc345a00345c8"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T03:26:36.746Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3806b45abc345a00345c9"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T03:28:43.206Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb380b245abc345a00345ca"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T03:29:54.449Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3811245abc345a00345cb"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T03:31:30.399Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3821945abc345a00345cc"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T03:35:53.601Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3842845abc345a00345cd"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T03:44:40.822Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3845b45abc345a00345ce"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T03:45:31.484Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb384cd45abc345a00345cf"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T03:47:25.794Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb384d345abc345a00345d0"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T03:47:31.164Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb384d645abc345a00345d1"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T03:47:34.083Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3850d45abc345a00345d2"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T03:48:29.568Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3856345abc345a00345d3"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T03:49:55.317Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3856545abc345a00345d4"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T03:49:57.191Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3856b45abc345a00345d5"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T03:50:03.504Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3856b45abc345a00345d6"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T03:50:03.974Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3857145abc345a00345d7"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T03:50:09.426Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3857145abc345a00345d8"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T03:50:09.841Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3857945abc345a00345d9"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T03:50:17.263Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3857945abc345a00345da"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T03:50:17.704Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb385a145abc345a00345db"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T03:50:57.447Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb385a145abc345a00345dc"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T03:50:57.644Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3927a45abc345a00345dd"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T04:45:46.191Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3c0a495e51e41fcde55e1"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T08:02:44.91Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3c53795e51e41fcde55e2"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T08:22:15.304Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3c5bb95e51e41fcde55e3"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T08:24:27.835Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3c5ca95e51e41fcde55e4"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T08:24:42.022Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3c5f595e51e41fcde55e5"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T08:25:25.261Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3c6ea834c3517109a1c0b"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T08:29:30.438Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3c706834c3517109a1c0c"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T08:29:58.082Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3c783834c3517109a1c0e"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T08:32:03.942Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3c82f834c3517109a1c0f"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T08:34:55.466Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3cb96834c3517109a1c12"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T08:49:26.079Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3ce11834c3517109a1c13"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T09:00:01.514Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3cea0834c3517109a1c14"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T09:02:24.859Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3cee8834c3517109a1c15"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T09:03:36.931Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3cf0c834c3517109a1c16"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T09:04:12.305Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3cf4b834c3517109a1c17"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T09:05:15.422Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3cf8f834c3517109a1c18"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T09:06:23.309Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3cfc6834c3517109a1c19"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T09:07:18.711Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3d037834c3517109a1c1a"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T09:09:11.638Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3d09d834c3517109a1c1b"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T09:10:53.176Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3d11b834c3517109a1c1d"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T09:12:59.797Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3d1a5834c3517109a1c1e"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T09:15:17.764Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3d2a1834c3517109a1c1f"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T09:19:29.361Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3d395834c3517109a1c20"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T09:23:33.418Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3d39c834c3517109a1c21"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T09:23:40.208Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb3d3c4834c3517109a1c22"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-07T09:24:20.464Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb4c11d76fb023d60b0ad23"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-08T02:17:01.216Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb4c39a76fb023d60b0ad25"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-08T02:27:38.31Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb4c59e76fb023d60b0ad28"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-08T02:36:14.525Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb4c60e76fb023d60b0ad29"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-08T02:38:06.143Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb509583c830e24a092b1c0"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-08T07:25:12.809Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb50d553c830e24a092b1c1"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-08T07:42:13.19Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb50d6a3c830e24a092b1c2"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-08T07:42:34.273Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb50f1c3c830e24a092b1c3"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-08T07:49:48.706Z"),
    __v: NumberInt("0")
} ]);
db.getCollection("statistics").insert([ {
    _id: ObjectId("5eb510a13c830e24a092b1c7"),
    visitNum: NumberInt("1"),
    time: ISODate("2020-05-08T07:56:17.64Z"),
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for stores
// ----------------------------
db.getCollection("stores").drop();
db.createCollection("stores");

// ----------------------------
// Documents of stores
// ----------------------------
db.getCollection("stores").insert([ {
    _id: ObjectId("5dd29214151ff50b14524f37"),
    "store_grade": NumberInt("5"),
    "store_sales": NumberInt("1"),
    "distribution_cost": NumberInt("4"),
    "startup_cost": NumberInt("10"),
    "store_name": "Wallace's burger（CCNU Store）",
    "store_logo_url": "",
    __v: NumberInt("2"),
    "store_notice": "Welcome",
    "store_categories": [
        {
            _id: ObjectId("5dd7931e9051cf6b74b21f3d"),
            "cat_id": NumberInt("1"),
            "cat_name": "热销",
            "cat_icon": "",
            children: [
                {
                    "food_id": NumberInt("10003"),
                    "food_sales": NumberInt("1"),
                    "food_rating": NumberInt("1"),
                    "food_cat_name": "热销",
                    "food_commend": NumberInt("0"),
                    _id: ObjectId("5dd7931e9051cf6b74b21f3e"),
                    "food_name": "2 bone and meat kebabs",
                    "food_price": 10.6,
                    "food_ingredient": "Main ingredients: chicken",
                    "food_cat_id": NumberInt("1"),
                    "food_pic": "https://cube.elemecdn.com/7/ba/a86f40577e504f6c454171a595dcfjpeg.jpeg?x-oss-process=image/resize,m_lfit,w_141,h_141/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp"
                },
                {
                    "food_id": NumberInt("10004"),
                    "food_sales": NumberInt("0"),
                    "food_rating": NumberInt("1"),
                    "food_cat_name": "热销",
                    "food_commend": NumberInt("0"),
                    _id: ObjectId("5dd7939a9051cf6b74b21f40"),
                    "food_name": "spicy chicken wings",
                    "food_price": 13.9,
                    "food_ingredient": "Main ingredients: chicken",
                    "food_cat_id": NumberInt("1"),
                    "food_pic": "https://cube.elemecdn.com/a/8f/8746525e3c7a01007dc41e89c1561jpeg.jpeg?x-oss-process=image/resize,m_lfit,w_141,h_141/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp"
                }
            ]
        }
    ],
    "store_goods": [
        {
            "food_id": NumberInt("10003"),
            "food_sales": NumberInt("1"),
            "food_rating": NumberInt("1"),
            "food_cat_name": "热销",
            "food_commend": NumberInt("0"),
            _id: ObjectId("5dd7931e9051cf6b74b21f3c"),
            "food_name": "2 bone and meat kebabs",
            "food_price": 10.6,
            "food_ingredient": "Main ingredients: chicken",
            "food_cat_id": NumberInt("1"),
            "food_pic": "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1588355057601&di=38ea51195400a67fc9c4e3ad741d4b29&imgtype=0&src=http%3A%2F%2Fp0.meituan.net%2Fwaimaipoi%2F8b39807621da6a7652bf764ad65ba8f1140125.jpg"
        },
        {
            "food_id": NumberInt("10004"),
            "food_sales": NumberInt("0"),
            "food_rating": NumberInt("1"),
            "food_cat_name": "热销",
            "food_commend": NumberInt("0"),
            _id: ObjectId("5dd7939a9051cf6b74b21f3f"),
            "food_name": "spicy chicken wings",
            "food_price": 13.9,
            "food_ingredient": "Main ingredients: chicken",
            "food_cat_id": NumberInt("1"),
            "food_pic": "https://cube.elemecdn.com/a/8f/8746525e3c7a01007dc41e89c1561jpeg.jpeg?x-oss-process=image/resize,m_lfit,w_141,h_141/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp"
        }
    ],
    "store_pic": "https://cube.elemecdn.com/b/89/10cf2f6dd123a991ce1c25af3e4d9png.png?x-oss-process=image/format,webp/resize,w_750"
} ]);
    _id: ObjectId("5dd292a8b077520c2839aa0b"),
    "store_grade": NumberInt("5"),
    "store_sales": NumberInt("18"),
    "distribution_cost": NumberInt("2"),
    "startup_cost": NumberInt("8"),
    "store_name": "Wuhan Caimingwei",
    "store_logo_url": "https://localhost/9/f6/94d860414ac9e3e76c4a4abb8c213png.png?x-oss-process=image/format,webp/resize,w_130,h_130,m_fixed",
    __v: NumberInt("38"),
    "store_notice": "Welcome",
    "store_categories": [
        {
            _id: ObjectId("5dd7931e9051cf6b74b21f3d"),
            "cat_id": NumberInt("1"),
            "cat_name": "热销",
            "cat_icon": "",
            children: [
                {
                    "food_id": NumberInt("10003"),
                    "food_sales": NumberInt("1"),
                    "food_rating": NumberInt("1"),
                    "food_cat_name": "热销",
                    "food_commend": NumberInt("0"),
                    _id: ObjectId("5dd7931e9051cf6b74b21f3e"),
                    "food_name": "Hot and dry beef noodles",
                    "food_price": 10.6,
                    "food_ingredient": "Main ingredients: chicken",
                    "food_cat_id": NumberInt("1"),
                    "food_pic": "https://cube.elemecdn.com/7/ba/a86f40577e504f6c454171a595dcfjpeg.jpeg?x-oss-process=image/resize,m_lfit,w_141,h_141/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp"
                },
                {
                    "food_id": NumberInt("10004"),
                    "food_sales": NumberInt("0"),
                    "food_rating": NumberInt("1"),
                    "food_cat_name": "热销",
                    "food_commend": NumberInt("0"),
                    _id: ObjectId("5dd7939a9051cf6b74b21f40"),
                    "food_name": "Hot and dry pork noodles",
                    "food_price": 13.9,
                    "food_ingredient": "Main ingredients: chicken",
                    "food_cat_id": NumberInt("1"),
                    "food_pic": "https://cube.elemecdn.com/a/8f/8746525e3c7a01007dc41e89c1561jpeg.jpeg?x-oss-process=image/resize,m_lfit,w_141,h_141/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp"
                }
            ]
        }
    ],
    "store_goods": [
        {
            "food_id": NumberInt("10003"),
            "food_sales": NumberInt("1"),
            "food_rating": NumberInt("1"),
            "food_cat_name": "热销",
            "food_commend": NumberInt("0"),
            _id: ObjectId("5dd7931e9051cf6b74b21f3c"),
            "food_name": "Hot and dry beef noodles",
            "food_price": 10.6,
            "food_ingredient": "Main ingredients: chicken",
            "food_cat_id": NumberInt("1"),
            "food_pic": "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1588355057601&di=38ea51195400a67fc9c4e3ad741d4b29&imgtype=0&src=http%3A%2F%2Fp0.meituan.net%2Fwaimaipoi%2F8b39807621da6a7652bf764ad65ba8f1140125.jpg"
        },
        {
            "food_id": NumberInt("10004"),
            "food_sales": NumberInt("0"),
            "food_rating": NumberInt("1"),
            "food_cat_name": "热销",
            "food_commend": NumberInt("0"),
            _id: ObjectId("5dd7939a9051cf6b74b21f3f"),
            "food_name": "Hot and dry pork noodles",
            "food_price": 13.9,
            "food_ingredient": "Main ingredients: chicken",
            "food_cat_id": NumberInt("1"),
            "food_pic": "https://cube.elemecdn.com/a/8f/8746525e3c7a01007dc41e89c1561jpeg.jpeg?x-oss-process=image/resize,m_lfit,w_141,h_141/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp"
        }
    ],
    "store_pic": "https://cube.elemecdn.com/6/ef/349f743404b8c6dc0f5cc7896ce35png.png?x-oss-process=image/format,webp/resize,w_750",
    password: "7c4a8d09ca3762af61e59520943dc26494f8941b",
    phone: "13153083012",
    orders: [
        {
            foods: [
                {
                    name: "兄弟套餐",
                    id: "10004",
                    price: "26",
                    pic: "https://cube.elemecdn.com/a/11/3660c4fc80469f33fbf6e08e67b92jpeg.jpeg?x-oss-process=image/resize,m_lfit,w_241/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp",
                    num: NumberInt("2")
                }
            ],
            _id: ObjectId("5dfa02cf4a9fa72e9470e6d6"),
            num: "20191218184327_v7n5bfq66",
            time: ISODate("2019-12-18T10:43:27.812Z"),
            storeId: ObjectId("5dd292a8b077520c2839aa0b"),
            storeName: "吉客休闲餐厅",
            storeLogoUrl: "https://cube.elemecdn.com/1/10/94e068597d5b90407fff916adc0ecpng.png?x-oss-process=image/format,webp/resize,w_130,h_130,m_fixed",
            price: NumberInt("54"),
            userAddress: "北京老糊涂666",
            userName: "流量",
            userPhone: "134564231"
        },
        {
            foods: [
                {
                    name: "香辣烤肉拌饭十热狗十饮料",
                    id: "10003",
                    price: "26",
                    pic: "http://pic.51yuansu.com/pic3/cover/01/55/70/594c83ce7e5b3_610.jpg",
                    num: NumberInt("4")
                }
            ],
            _id: ObjectId("5df9e8a3c5f4a72f709a2832"),
            num: "20191218165147_o4oj5sjw6",
            time: ISODate("2019-12-18T08:51:47.733Z"),
            storeId: ObjectId("5dd292a8b077520c2839aa0b"),
            storeName: "吉客休闲餐厅",
            storeLogoUrl: "https://cube.elemecdn.com/1/10/94e068597d5b90407fff916adc0ecpng.png?x-oss-process=image/format,webp/resize,w_130,h_130,m_fixed",
            price: NumberInt("106"),
            userAddress: "北京老糊涂666",
            userName: "流量",
            userPhone: "134564231"
        },
        {
            foods: [
                {
                    name: "香辣烤肉拌饭十热狗十饮料",
                    id: "10003",
                    price: "26",
                    pic: "http://pic.51yuansu.com/pic3/cover/01/55/70/594c83ce7e5b3_610.jpg",
                    num: NumberInt("5")
                }
            ],
            _id: ObjectId("5df0fef09c59252c44b803c0"),
            num: "20191211223632_127507gc6",
            time: ISODate("2019-12-11T14:36:32.874Z"),
            storeId: ObjectId("5dd292a8b077520c2839aa0b"),
            storeName: "吉客休闲餐厅",
            storeLogoUrl: "https://cube.elemecdn.com/1/10/94e068597d5b90407fff916adc0ecpng.png?x-oss-process=image/format,webp/resize,w_130,h_130,m_fixed",
            price: NumberInt("132"),
            userAddress: "天地月一号101",
            userName: "项羽",
            userPhone: "1381359654"
        },
        {
            foods: [
                {
                    name: "香辣烤肉拌饭十热狗十饮料",
                    id: "10003",
                    price: "26",
                    pic: "http://pic.51yuansu.com/pic3/cover/01/55/70/594c83ce7e5b3_610.jpg",
                    num: NumberInt("1")
                }
            ],
            _id: ObjectId("5df0fe979c59252c44b803be"),
            num: "2019121122353_5gasf4r32",
            time: ISODate("2019-12-11T14:35:03.913Z"),
            storeId: ObjectId("5dd292a8b077520c2839aa0b"),
            storeName: "吉客休闲餐厅",
            storeLogoUrl: "https://cube.elemecdn.com/1/10/94e068597d5b90407fff916adc0ecpng.png?x-oss-process=image/format,webp/resize,w_130,h_130,m_fixed",
            price: NumberInt("28"),
            userAddress: "天地月一号101",
            userName: "项羽",
            userPhone: "1381359654"
        },
        {
            foods: [
                {
                    name: "鸡柳石锅拌饭+大鸡腿+饮料",
                    id: "10007",
                    price: "33",
                    pic: "https://cube.elemecdn.com/5/5a/05626491e2d5372595a4e5c6e49b2jpeg.jpeg?x-oss-process=image/resize,m_lfit,w_241/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp",
                    num: NumberInt("7")
                }
            ],
            _id: ObjectId("5df0e484e4b9560fa8bfeb19"),
            num: "20191211204348_hg8xs1duh",
            time: ISODate("2019-12-11T12:43:48.943Z"),
            storeId: ObjectId("5dd292a8b077520c2839aa0b"),
            storeName: "吉客休闲餐厅",
            storeLogoUrl: "https://cube.elemecdn.com/1/10/94e068597d5b90407fff916adc0ecpng.png?x-oss-process=image/format,webp/resize,w_130,h_130,m_fixed",
            price: NumberInt("233"),
            userAddress: "倾国101",
            userName: "林是谁",
            userPhone: "13115754561"
        },
        {
            foods: [
                {
                    name: "全家福",
                    id: "10006",
                    price: "108",
                    pic: "https://cube.elemecdn.com/b/ba/b3613d7bbd2cd24752006942de81bjpeg.jpeg?x-oss-process=image/resize,m_lfit,w_241/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp",
                    num: NumberInt("4")
                }
            ],
            _id: ObjectId("5df0e47be4b9560fa8bfeb17"),
            num: "20191211204339_gg2gcgwqy",
            time: ISODate("2019-12-11T12:43:39.267Z"),
            storeId: ObjectId("5dd292a8b077520c2839aa0b"),
            storeName: "吉客休闲餐厅",
            storeLogoUrl: "https://cube.elemecdn.com/1/10/94e068597d5b90407fff916adc0ecpng.png?x-oss-process=image/format,webp/resize,w_130,h_130,m_fixed",
            price: NumberInt("434"),
            userAddress: "天地月一号101",
            userName: "项羽",
            userPhone: "1381359654"
        },
        {
            foods: [
                {
                    name: "鸡柳石锅拌饭+大鸡腿+饮料",
                    id: "10007",
                    price: "33",
                    pic: "https://cube.elemecdn.com/5/5a/05626491e2d5372595a4e5c6e49b2jpeg.jpeg?x-oss-process=image/resize,m_lfit,w_241/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp",
                    num: NumberInt("3")
                }
            ],
            _id: ObjectId("5df0e474e4b9560fa8bfeb15"),
            num: "20191211204332_pz19rt5a3",
            time: ISODate("2019-12-11T12:43:32.245Z"),
            storeId: ObjectId("5dd292a8b077520c2839aa0b"),
            storeName: "吉客休闲餐厅",
            storeLogoUrl: "https://cube.elemecdn.com/1/10/94e068597d5b90407fff916adc0ecpng.png?x-oss-process=image/format,webp/resize,w_130,h_130,m_fixed",
            price: NumberInt("101"),
            userAddress: "天地月一号101",
            userName: "项羽",
            userPhone: "1381359654"
        },
        {
            foods: [
                {
                    name: "猪排石锅拌饭十热狗十饮料",
                    id: "10005",
                    price: "26",
                    pic: "https://cube.elemecdn.com/9/8d/de20f0611c88ac07cfe8d337a9b3ejpeg.jpeg?x-oss-process=image/resize,m_lfit,w_241/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp",
                    num: NumberInt("2")
                },
                {
                    name: "鸡柳石锅拌饭+大鸡腿+饮料",
                    id: "10007",
                    price: "33",
                    pic: "https://cube.elemecdn.com/5/5a/05626491e2d5372595a4e5c6e49b2jpeg.jpeg?x-oss-process=image/resize,m_lfit,w_241/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp",
                    num: NumberInt("1")
                },
                {
                    name: "全家福",
                    id: "10006",
                    price: "108",
                    pic: "https://cube.elemecdn.com/b/ba/b3613d7bbd2cd24752006942de81bjpeg.jpeg?x-oss-process=image/resize,m_lfit,w_241/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp",
                    num: NumberInt("7")
                }
            ],
            _id: ObjectId("5df0e465e4b9560fa8bfeb13"),
            num: "20191211204317_qwgo4n6ss",
            time: ISODate("2019-12-11T12:43:17.678Z"),
            storeId: ObjectId("5dd292a8b077520c2839aa0b"),
            storeName: "吉客休闲餐厅",
            storeLogoUrl: "https://cube.elemecdn.com/1/10/94e068597d5b90407fff916adc0ecpng.png?x-oss-process=image/format,webp/resize,w_130,h_130,m_fixed",
            price: NumberInt("843"),
            userAddress: "天地月一号101",
            userName: "项羽",
            userPhone: "1381359654"
        },
        {
            foods: [
                {
                    name: "香辣烤肉拌饭十热狗十饮料",
                    id: "10003",
                    price: "26",
                    pic: "http://pic.51yuansu.com/pic3/cover/01/55/70/594c83ce7e5b3_610.jpg",
                    num: NumberInt("7")
                },
                {
                    name: "鸡蛋肠粉",
                    id: "10008",
                    price: "6",
                    pic: "http://pic.51yuansu.com/pic3/cover/01/55/70/594c83ce7e5b3_610.jpg",
                    num: NumberInt("1")
                }
            ],
            _id: ObjectId("5df0e435e4b9560fa8bfeb11"),
            num: "20191211204229_zrxrhdx6s",
            time: ISODate("2019-12-11T12:42:29.196Z"),
            storeId: ObjectId("5dd292a8b077520c2839aa0b"),
            storeName: "吉客休闲餐厅",
            storeLogoUrl: "https://cube.elemecdn.com/1/10/94e068597d5b90407fff916adc0ecpng.png?x-oss-process=image/format,webp/resize,w_130,h_130,m_fixed",
            price: NumberInt("190"),
            userAddress: "上海堡垒999",
            userName: "你好",
            userPhone: "16565745"
        },
        {
            foods: [
                {
                    name: "全家福",
                    id: "10006",
                    price: "108",
                    pic: "https://cube.elemecdn.com/b/ba/b3613d7bbd2cd24752006942de81bjpeg.jpeg?x-oss-process=image/resize,m_lfit,w_241/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp",
                    num: NumberInt("2")
                }
            ],
            _id: ObjectId("5deca8ae2f30fe2c20de714a"),
            num: "2019128153926_ldm8y29jy",
            time: ISODate("2019-12-08T07:39:26.291Z"),
            storeId: ObjectId("5dd292a8b077520c2839aa0b"),
            storeName: "吉客休闲餐厅",
            storeLogoUrl: "https://cube.elemecdn.com/1/10/94e068597d5b90407fff916adc0ecpng.png?x-oss-process=image/format,webp/resize,w_130,h_130,m_fixed",
            price: NumberInt("218"),
            userAddress: "南昌大学宿舍楼10",
            userName: "李天",
            userPhone: "15170729230"
        },
        {
            foods: [
                {
                    name: "鸡柳石锅拌饭+大鸡腿+饮料",
                    id: "10007",
                    price: "33",
                    pic: "https://cube.elemecdn.com/5/5a/05626491e2d5372595a4e5c6e49b2jpeg.jpeg?x-oss-process=image/resize,m_lfit,w_241/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp",
                    num: NumberInt("4")
                }
            ],
            _id: ObjectId("5deca8a32f30fe2c20de7148"),
            num: "2019128153915_1apfz5ozg",
            time: ISODate("2019-12-08T07:39:15.872Z"),
            storeId: ObjectId("5dd292a8b077520c2839aa0b"),
            storeName: "吉客休闲餐厅",
            storeLogoUrl: "https://cube.elemecdn.com/1/10/94e068597d5b90407fff916adc0ecpng.png?x-oss-process=image/format,webp/resize,w_130,h_130,m_fixed",
            price: NumberInt("134"),
            userAddress: "南昌大学宿舍楼10",
            userName: "李天",
            userPhone: "15170729230"
        },
        {
            foods: [
                {
                    name: "鸡蛋肠粉",
                    id: "10008",
                    price: "6",
                    pic: "http://pic.51yuansu.com/pic3/cover/01/55/70/594c83ce7e5b3_610.jpg",
                    num: NumberInt("2")
                }
            ],
            _id: ObjectId("5deca8892f30fe2c20de7146"),
            num: "2019128153849_jpzpc0ape",
            time: ISODate("2019-12-08T07:38:49.404Z"),
            storeId: ObjectId("5dd292a8b077520c2839aa0b"),
            storeName: "吉客休闲餐厅",
            storeLogoUrl: "https://cube.elemecdn.com/1/10/94e068597d5b90407fff916adc0ecpng.png?x-oss-process=image/format,webp/resize,w_130,h_130,m_fixed",
            price: NumberInt("14"),
            userAddress: "南昌444",
            userName: "啦啦啦",
            userPhone: "545152312"
        },
        {
            foods: [
                {
                    name: "香辣烤肉拌饭十热狗十饮料",
                    id: "10003",
                    price: "26",
                    pic: "http://pic.51yuansu.com/pic3/cover/01/55/70/594c83ce7e5b3_610.jpg",
                    num: NumberInt("3")
                },
                {
                    name: "兄弟套餐",
                    id: "10004",
                    price: "26",
                    pic: "https://cube.elemecdn.com/a/11/3660c4fc80469f33fbf6e08e67b92jpeg.jpeg?x-oss-process=image/resize,m_lfit,w_241/watermark,g_se,x_4,y_4,image_YS8xYS82OGRlYzVjYTE0YjU1ZjJlZmFhYmIxMjM4Y2ZkZXBuZy5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yOA%3D%3D/quality,q_90/format,webp",
                    num: NumberInt("4")
                }
            ],
            _id: ObjectId("5dec9d8c2f30fe2c20de7144"),
            num: "2019128145156_053nsl9t3",
            time: ISODate("2019-12-08T06:51:56.598Z"),
            storeId: ObjectId("5dd292a8b077520c2839aa0b"),
            storeName: "吉客休闲餐厅",
            storeLogoUrl: "https://cube.elemecdn.com/1/10/94e068597d5b90407fff916adc0ecpng.png?x-oss-process=image/format,webp/resize,w_130,h_130,m_fixed",
            price: NumberInt("184"),
            userAddress: "南昌444",
            userName: "啦啦啦",
            userPhone: "545152312"
        }
    ]
} ]);
db.getCollection("stores").insert([ {
    _id: ObjectId("5dd292f3b077520c2839aa0c"),
    "store_grade": NumberInt("5"),
    "store_sales": NumberInt("0"),
    "distribution_cost": NumberInt("0"),
    "startup_cost": NumberInt("10"),
    "store_name": "Starbucks coffee",
    "store_logo_url": "https://localhost/d/91/1c9dbfaf3a659f6e74e862d2d9dd2jpeg.jpeg?x-oss-process=image/format,webp/resize,w_130,h_130,m_fixed",
    __v: NumberInt("0"),
    "store_notice": "Welcome to Starbucks",
    "store_pic": "https://cube.elemecdn.com/a/87/6f9c96c806a773daa0de2fc794f8epng.png?x-oss-process=image/format,webp/resize,w_750"
} ]);
db.getCollection("stores").insert([ {
    _id: ObjectId("5dd2931ab077520c2839aa0d"),
    "store_grade": NumberInt("5"),
    "store_sales": NumberInt("0"),
    "distribution_cost": NumberInt("2"),
    "startup_cost": NumberInt("10"),
    "store_name": "Pizza Hut",
    "store_logo_url": "https://localhost/2/7d/8058b4d3b773e3e89176e2521734epng.png?x-oss-process=image/format,webp/resize,w_130,h_130,m_fixed",
    __v: NumberInt("0"),
    "store_notice": "Welcome to the pizza hut"
} ]);
db.getCollection("stores").insert([ {
    _id: ObjectId("5dd2934ab077520c2839aa0e"),
    "store_grade": NumberInt("5"),
    "store_sales": NumberInt("0"),
    "distribution_cost": NumberInt("0"),
    "startup_cost": NumberInt("15"),
    "store_name": "KFC",
    "store_logo_url": "https://localhost/9/f6/94d860414ac9e3e76c4a4abb8c213png.png?x-oss-process=image/format,webp/resize,w_130,h_130,m_fixed",
    __v: NumberInt("0"),
    "store_notice": "Welcome"
} ]);
db.getCollection("stores").insert([ {
    _id: ObjectId("5dd293afb077520c2839aa0f"),
    "store_grade": NumberInt("5"),
    "store_sales": NumberInt("0"),
    "distribution_cost": NumberInt("4"),
    "startup_cost": NumberInt("0"),
    "store_name": "Mcdonald's ",
    "store_logo_url": "",
    __v: NumberInt("0"),
    "store_notice": "Welcome"
} ]);
db.getCollection("stores").insert([ {
    _id: ObjectId("5dd293ccb077520c2839aa10"),
    "store_grade": NumberInt("5"),
    "store_sales": NumberInt("0"),
    "distribution_cost": NumberInt("0"),
    "startup_cost": NumberInt("15"),
    "store_name": "Sha county snacks",
    "store_logo_url": "https://localhost/2/7d/8058b4d3b773e3e89176e2521734epng.png?x-oss-process=image/format,webp/resize,w_130,h_130,m_fixed",
    __v: NumberInt("0"),
    "store_notice": "Welcome"
} ]);
db.getCollection("stores").insert([ {
    _id: ObjectId("5dd293ebb077520c2839aa11"),
    "store_grade": NumberInt("5"),
    "store_sales": NumberInt("0"),
    "distribution_cost": NumberInt("0"),
    "startup_cost": NumberInt("15"),
    "store_name": "Lanzhou stretched noodles",
    "store_logo_url": "",
    __v: NumberInt("0"),
    "store_notice": "Welcome"
} ]);

// ----------------------------
// Collection structure for table1
// ----------------------------
db.getCollection("table1").drop();
db.createCollection("table1");

// ----------------------------
// Collection structure for users
// ----------------------------
db.getCollection("users").drop();
db.createCollection("users");

// ----------------------------
// Documents of users
// ----------------------------
db.getCollection("users").insert([ {
    _id: ObjectId("5eb02fe1e354503f6017dbfc"),
    historyAvatar: [ ],
    username: "zqw",
    password: "7c4a8d09ca3762af61e59520943dc26494f8941b",
    "user_phone": "16666666666",
    "user_address": [
        {
            _id: ObjectId("5eb0cb74eb6ed620389573a0"),
            name: "test",
            phone: "11166666666",
            address: "test",
            detail: "test1"
        },
        {
            _id: ObjectId("5eb033efe354503f6017dc05"),
            name: "Qiwei Zhang",
            phone: "13153083012",
            address: "tttt",
            detail: "111"
        },
        {
            _id: ObjectId("5eb03142e354503f6017dbfd"),
            name: "Qiwei Zhang",
            phone: "13153083012",
            address: "XinAn",
            detail: "ss"
        }
    ],
    "user_order": [ ],
    __v: NumberInt("3")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5eb0343fe354503f6017dc06"),
    historyAvatar: [ ],
    username: "rrr",
    password: "20eabe5d64b0e216796e834f52d61fd0b70332fc",
    "user_phone": "13131313131",
    "user_address": [
        {
            _id: ObjectId("5eb034cde354503f6017dc08"),
            name: "ttttt",
            phone: "13153083012",
            address: "HEze",
            detail: "2222"
        }
    ],
    "user_order": [ ],
    __v: NumberInt("1")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5eb2da9472a76e58d057d49b"),
    historyAvatar: [ ],
    username: "admin",
    password: "7c4a8d09ca3762af61e59520943dc26494f8941b",
    "user_phone": "17777777778",
    "user_address": [ ],
    "user_order": [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5eb3cb71834c3517109a1c10"),
    historyAvatar: [ ],
    username: "user",
    password: "7c4a8d09ca3762af61e59520943dc26494f8941b",
    "user_phone": "15555555555",
    "user_address": [
        {
            _id: ObjectId("5eb3cb92834c3517109a1c11"),
            name: "user1",
            phone: "11111111111",
            address: "ccnu",
            detail: "ccnu"
        }
    ],
    "user_order": [ ],
    __v: NumberInt("1")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5eb4c35276fb023d60b0ad24"),
    historyAvatar: [ ],
    username: "user1",
    password: "7c4a8d09ca3762af61e59520943dc26494f8941b",
    "user_phone": "14444444444",
    "user_address": [
        {
            _id: ObjectId("5eb4c4e776fb023d60b0ad26"),
            name: "address1",
            phone: "14444444444",
            address: "ccnu1",
            detail: "ccnu"
        }
    ],
    "user_order": [ ],
    __v: NumberInt("1")
} ]);
db.getCollection("users").insert([ {
    _id: ObjectId("5eb5105a3c830e24a092b1c4"),
    historyAvatar: [ ],
    username: "zqw1",
    password: "7c4a8d09ca3762af61e59520943dc26494f8941b",
    "user_phone": "13444444444",
    "user_address": [
        {
            _id: ObjectId("5eb510783c830e24a092b1c5"),
            name: "Qiwei Zhang",
            phone: "13153083012",
            address: "XinAn",
            detail: "cnnu"
        }
    ],
    "user_order": [ ],
    __v: NumberInt("1")
} ]);
