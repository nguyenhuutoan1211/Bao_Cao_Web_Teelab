-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 01, 2024 lúc 03:35 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_teelab`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Áo Thun', '2024-04-27 04:15:02', '2024-04-27 04:15:02'),
(2, 'Baby Tee', '2024-04-27 04:15:02', '2024-04-27 04:15:02'),
(3, 'Áo Polo', '2024-04-27 04:15:50', '2024-04-27 04:15:50'),
(4, 'Áo Sơ Mi', '2024-04-27 04:15:50', '2024-04-27 04:15:50'),
(5, 'Áo Khoác', '2024-04-27 04:16:15', '2024-04-27 04:16:15'),
(6, 'Hoodie', '2024-04-27 04:16:15', '2024-04-27 04:16:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `payment` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `payment`, `status`, `name`, `address`, `phone`, `total`, `UserId`, `createdAt`, `updatedAt`) VALUES
(2, 'Thanh toán khi nhận hàng', 0, 'Phan Tiến Huy', 'Hà Nội', '0986538387', 195000, 1, '2024-04-28 15:01:25', '2024-04-28 15:01:25'),
(3, 'Thanh toán khi nhận hàng', 0, 'Nguyễn Hữu Toàn', 'Hà Nội', '0986538387', 0, 1, '2024-04-30 03:23:58', '2024-04-30 03:23:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_products`
--

CREATE TABLE `order_products` (
  `id` int(11) NOT NULL,
  `OrderId` int(11) DEFAULT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_products`
--

INSERT INTO `order_products` (`id`, `OrderId`, `ProductId`, `size`, `quantity`, `createdAt`, `updatedAt`) VALUES
(3, 2, 1, 'M', 1, '2024-04-28 15:01:25', '2024-04-28 15:01:25'),
(4, 3, 1, 'M', NULL, '2024-04-30 03:23:58', '2024-04-30 03:23:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `description` text DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `description`, `quantity`, `CategoryId`, `createdAt`, `updatedAt`) VALUES
(1, 'Áo Thun Teelab Local Brand Unisex Palm club Tshirt TS251', '/images/products/aothun1.png', 195000, 'Thông tin sản phẩm:\r\n- Chất liệu: Cotton\r\n- Form: Oversize\r\n- Màu sắc: Wash\r\n- Thiết kế: In lụa \r\n', 10, 1, '2024-04-27 08:49:59', '2024-04-28 14:38:49'),
(2, 'Áo Babytee Local Brand Teelab Studio Baby Sheep Cute BT013', '/images/products/babytee1.png', 160000, 'Thông tin sản phẩm:\r\n- Chất liệu: Cotton\r\n- Form: Oversize\r\n- Màu sắc: Kem\r\n- Thiết kế: In Trame', 10, 2, '2024-04-27 08:52:52', '2024-04-27 08:52:52'),
(3, 'Áo Polo Teelab Local Brand Unisex Football Vintage Polo Shirt AP053', '/images/products/polo1.png', 195000, 'Thông tin sản phẩm:\r\n- Chất liệu: Vải thể thao\r\n- Form: Oversize\r\n- Màu sắc: Đen/Hồng\r\n- Thiết kế: In lụa', 10, 3, '2024-04-27 08:54:24', '2024-04-27 08:54:24'),
(4, 'Áo Sơ Mi Ngắn Tay Teelab Local Brand Unisex Studio Waffle Shirt SS050', '/images/products/somi1.png', 195000, 'Thông tin sản phẩm:\r\n- Chất liệu: Vải waffle\r\n- Form: Oversize\r\n- Màu sắc: Đen/Kem\r\n- Thiết kế: Thêu satin', 10, 4, '2024-04-27 08:56:23', '2024-04-27 08:56:23'),
(5, 'Áo Khoác Gió Teelab Local Brand Unisex Contrast Line Zip-up Jacket AK102', '/images/products/aokhoac1.png', 299000, 'Thông tin sản phẩm:\r\n- Chất liệu: Gió dù\r\n- Form: Oversize\r\n- Màu sắc: Đen/Xám\r\n- Thiết kế: In lụa', 10, 5, '2024-04-27 08:58:04', '2024-04-27 08:58:04'),
(6, 'Áo Hoodie Teelab Local Brand Unisex \" Mom’s favorite kido \" Hoodie HD081', '/images/products/hoodie1.png', 349000, 'Thông tin sản phẩm:\r\n- Chất liệu: Nỉ bông\r\n- Form: Oversize\r\n- Màu sắc: Xám Melane/Đen\r\n- Thiết kế: In phồng', 10, 6, '2024-04-27 08:59:05', '2024-04-27 08:59:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rates`
--

CREATE TABLE `rates` (
  `id` int(11) NOT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  `OrderId` int(11) DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20230908053145-create-user.js'),
('20230908054238-create-role.js'),
('20230909134515-create-product.js'),
('20230909135346-create-category.js'),
('20230915134636-create-order.js'),
('20230915141039-create-order-product.js'),
('20230922131308-create-rate.js'),
('20230924141132-create-order.js');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `RoleId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `phone`, `RoleId`, `createdAt`, `updatedAt`) VALUES
(1, 'Phan Tiến Huy', 'huyphan1232002@gmail.com', 'phantienhuy', '$2b$10$31Oi3trt5JK5luQTSprmzuePiVipDC5MHTdeHUwK2Ettpsy16qipq', '0986538387', 2, '2024-04-27 07:56:15', '2024-04-27 07:56:15'),
(2, 'Admin', 'admin@gmail.com', 'admin', '$2b$10$16EE6URi28n0.eor1n.jAOVMroP.VxKavp.3SnBOmdmWvTpcroliu', '0375164533', 1, '2024-04-28 13:49:00', '2024-04-28 13:49:00'),
(3, 'Nguyễn Hữu Toàn', 'khanhmao2002@gmail.com', 'nguyenhuutoan', '$2b$10$q8o1kRN.Rb8XF0E7qAVKru8Tf1ABEgzok.x/cDa3O3JftO0kDDIem', '0375164536', 2, '2024-04-30 03:17:49', '2024-04-30 03:17:49'),
(4, 'Nguyễn Hữu Toàn', 'khanhmao20022@gmail.com', 'nguyenhuutoann', '$2b$10$ZpHPY2urHP4eci9L5Vbp0.mhj85KDIGKYru0Jl/ezc/bSwCEz4VLy', '0375164537', 2, '2024-04-30 03:21:16', '2024-04-30 03:21:16');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `rates`
--
ALTER TABLE `rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
