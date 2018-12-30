-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th3 06, 2018 lúc 06:35 PM
-- Phiên bản máy phục vụ: 5.7.18-0ubuntu0.16.04.1
-- Phiên bản PHP: 7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_machine_web_controller`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `3D_printer_5_head`
--

CREATE TABLE `3D_printer_5_head` (
  `id` int(50) NOT NULL,
  `label` varchar(200) NOT NULL,
  `info` varchar(15000) NOT NULL,
  `code` varchar(100) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `3D_printer_5_head`
--

INSERT INTO `3D_printer_5_head` (`id`, `label`, `info`, `code`, `status`) VALUES
(1, 'Default', '', '4-11111111111000100000000000000000000000000000000000000000000000000000000000000000', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `3D_printer_Big_head`
--

CREATE TABLE `3D_printer_Big_head` (
  `id` int(50) NOT NULL,
  `label` varchar(200) NOT NULL,
  `info` varchar(15000) NOT NULL,
  `code` varchar(100) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `3D_printer_Big_head`
--

INSERT INTO `3D_printer_Big_head` (`id`, `label`, `info`, `code`, `status`) VALUES
(1, 'Default', '', '5-00000000110000000000000000000000000000000000000000000000000000000000000000000000', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `boards`
--

CREATE TABLE `boards` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `info` varchar(15000) NOT NULL,
  `pinid` varchar(11) NOT NULL,
  `controller` varchar(150) NOT NULL DEFAULT 'Controller'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `boards`
--

INSERT INTO `boards` (`id`, `name`, `info`, `pinid`, `controller`) VALUES
(12, 'Laser_CO2', 'note', '1', 'AWC708C'),
(13, 'CNC_Milling_3Axis', 'note', '2', 'Mach3 6 Axis'),
(25, 'Laser_marking', 'note', '3', 'Mach3 6 Axis'),
(26, '3D_printer_5_head', 'note', '4', 'Mach3 6 Axis'),
(27, '3D_printer_Big_head', 'note', '5', 'Mach3 6 Axis'),
(28, 'CNC_Milling_5_Axis', 'note', '6', 'Mach3 6 Axis'),
(29, 'Pin7', 'note', '7', 'Controller'),
(30, 'Pin8', 'note', '8', 'Controller');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `CNC_Milling_3Axis`
--

CREATE TABLE `CNC_Milling_3Axis` (
  `id` int(50) NOT NULL,
  `label` varchar(200) NOT NULL,
  `info` varchar(15000) NOT NULL,
  `code` varchar(100) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `CNC_Milling_3Axis`
--

INSERT INTO `CNC_Milling_3Axis` (`id`, `label`, `info`, `code`, `status`) VALUES
(3, 'Default', 'asdasdas', '2-00000000010011100000000000000000000000000000000000000000000000000000000000000000', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `CNC_Milling_5_Axis`
--

CREATE TABLE `CNC_Milling_5_Axis` (
  `id` int(50) NOT NULL,
  `label` varchar(200) NOT NULL,
  `info` varchar(15000) NOT NULL,
  `code` varchar(100) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `CNC_Milling_5_Axis`
--

INSERT INTO `CNC_Milling_5_Axis` (`id`, `label`, `info`, `code`, `status`) VALUES
(1, 'Default', '', '6-10000011000000011110000000000000000000000000000000000000000000000000000000000000', 1),
(2, 'New Function', '', '0-00000000000000000000000000000000000000000000000000000000000000000000000000000000', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Laser_CO2`
--

CREATE TABLE `Laser_CO2` (
  `id` int(50) NOT NULL,
  `label` varchar(200) NOT NULL,
  `info` varchar(15000) NOT NULL,
  `code` varchar(100) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `Laser_CO2`
--

INSERT INTO `Laser_CO2` (`id`, `label`, `info`, `code`, `status`) VALUES
(1, 'Default', '', '1-11110111111100000000000000000000000000000000000000000000000000000000000000000000', 1),
(5, 'New Function', '', '0-00000000000000000000000000000000000000000000000000000000000000000000000000000000', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Laser_marking`
--

CREATE TABLE `Laser_marking` (
  `id` int(50) NOT NULL,
  `label` varchar(200) NOT NULL,
  `info` varchar(15000) NOT NULL,
  `code` varchar(100) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `Laser_marking`
--

INSERT INTO `Laser_marking` (`id`, `label`, `info`, `code`, `status`) VALUES
(2, 'Default', '', '3-10001000000000000000000000000000000000000000000000000000000000000000000000000000', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `matrixledname`
--

CREATE TABLE `matrixledname` (
  `id_column` int(20) NOT NULL,
  `num_of_led` int(20) NOT NULL DEFAULT '80',
  `led_name` varchar(15000) NOT NULL DEFAULT 'led1<splittag>led2<splittag>led3<splittag>led4<splittag>led5<splittag>led6<splittag>led7<splittag>led8<splittag>led9<splittag>led10<splittag>led11<splittag>led12<splittag>led13<splittag>led14<splittag>led15<splittag>led16<splittag>led17<splittag>led18<splittag>led19<splittag>led20<splittag>led21<splittag>led22<splittag>led23<splittag>led24<splittag>led25<splittag>led26<splittag>led27<splittag>led28<splittag>led29<splittag>led30<splittag>led31<splittag>led32<splittag>led33<splittag>led34<splittag>led35<splittag>led36<splittag>led37<splittag>led38<splittag>led39<splittag>led40<splittag>led41<splittag>led42<splittag>led43<splittag>led44<splittag>led45<splittag>led46<splittag>led47<splittag>led48<splittag>led49<splittag>led50<splittag>led51<splittag>led52<splittag>led53<splittag>led54<splittag>led55<splittag>led56<splittag>led57<splittag>led58<splittag>led59<splittag>led60<splittag>led61<splittag>led62<splittag>led63<splittag>led64<splittag>led65<splittag>led66<splittag>led67<splittag>led68<splittag>led69<splittag>led70<splittag>led71<splittag>led72<splittag>led73<splittag>led74<splittag>led75<splittag>led76<splittag>led77<splittag>led78<splittag>led79<splittag>led80',
  `IO` varchar(15000) NOT NULL DEFAULT 'io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io',
  `signame` varchar(15000) NOT NULL DEFAULT 'signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame',
  `msgs` varchar(15000) NOT NULL DEFAULT 'msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs',
  `notes` text NOT NULL,
  `ver` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `matrixledname`
--

INSERT INTO `matrixledname` (`id_column`, `num_of_led`, `led_name`, `IO`, `signame`, `msgs`, `notes`, `ver`) VALUES
(1, 80, 'Col1_Led1<splittag>Col1_Led2<splittag>Col1_Led3<splittag>Col1_Led4<splittag>Col1_Led5<splittag>Col1_Led6<splittag>Col1_Led7<splittag>Col1_Led8<splittag>Col1_Led9<splittag>Col1_Led10<splittag>Col1_Led11<splittag>Col1_Led12<splittag>Col1_Led13<splittag>Col1_Led14<splittag>Col1_Led15<splittag>Col1_Led16<splittag>Col1_Led17<splittag>Col1_Led18<splittag>Col1_Led19<splittag>Col1_Led20<splittag>Col1_Led21<splittag>Col1_Led22<splittag>Col1_Led23<splittag>Col1_Led24<splittag>Col1_Led25<splittag>Col1_Led26<splittag>Col1_Led27<splittag>Col1_Led28<splittag>Col1_Led29<splittag>Col1_Led30<splittag>Col1_Led31<splittag>Col1_Led32<splittag>Col1_Led33<splittag>Col1_Led34<splittag>Col1_Led35<splittag>Col1_Led36<splittag>Col1_Led37<splittag>Col1_Led38<splittag>Col1_Led39<splittag>Col1_Led40<splittag>Col1_Led41<splittag>Col1_Led42<splittag>Col1_Led43<splittag>Col1_Led44<splittag>Col1_Led45<splittag>Col1_Led46<splittag>Col1_Led47<splittag>Col1_Led48<splittag>Col1_Led49<splittag>Col1_Led50<splittag>Col1_Led51<splittag>Col1_Led52<splittag>Col1_Led53<splittag>Col1_Led54<splittag>Col1_Led55<splittag>Col1_Led56<splittag>Col1_Led57<splittag>Col1_Led58<splittag>Col1_Led59<splittag>Col1_Led60<splittag>Col1_Led61<splittag>Col1_Led62<splittag>Col1_Led63<splittag>Col1_Led64<splittag>Col1_Led65<splittag>Col1_Led66<splittag>Col1_Led67<splittag>Col1_Led68<splittag>Col1_Led69<splittag>Col1_Led70<splittag>Col1_Led71<splittag>Col1_Led72<splittag>Col1_Led73<splittag>Col1_Led74<splittag>Col1_Led75<splittag>Col1_Led76<splittag>Col1_Led77<splittag>Col1_Led78<splittag>Col1_Led79<splittag>Col1_Led80', '<splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag>', 'X_En<splittag>X_Step<splittag>X_Dir<splittag>X_Home<splittag>X_Max<splittag>X_Min<splittag>Y_En<splittag>Y_Step<splittag>Y_Dir<splittag>Y_Home<splittag>Y_Max<splittag>Y_Min<splittag>Z1_En<splittag>Z1_Step<splittag>Z1_Dir<splittag>Z1_Home<splittag>Z1_Max<splittag>Z1_Min<splittag>Z2_En<splittag>Z2_Step<splittag>Z2_Dir<splittag>Z2_Home<splittag>Z2_Max<splittag>Z2_Min<splittag>A1_En<splittag>A1_Step<splittag>A1_Dir<splittag>A1_Home<splittag>A1_Max<splittag>A1_Min<splittag>A2_En<splittag>A2_Step<splittag>A2_Dir<splittag>A2_Home<splittag>A2_Max<splittag>A2_Min<splittag>B_En<splittag>B_Step<splittag>B_Dir<splittag>B_Home<splittag>B_Max<splittag>B_Min<splittag>C_En<splittag>C_Step<splittag>C_Dir<splittag>C_Home<splittag>C_Max<splittag>C_Min<splittag>PWM<splittag>X1<splittag>X2<splittag>GND<splittag>Z_Probe<splittag>E_Stop<splittag>Air<splittag>Chiller<splittag>Water_pump<splittag>Vaccum_Clearning<splittag>Alarm_Light<splittag>Vaccum_Table<splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag>', '<splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag>', '<splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag>', '<splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag>'),
(2, 80, 'Col2_Led1<splittag>Col2_Led2<splittag>Col2_Led3<splittag>Col2_Led4<splittag>Col2_Led5<splittag>Col2_Led6<splittag>Col2_Led7<splittag>Col2_Led8<splittag>Col2_Led9<splittag>Col2_Led10<splittag>Col2_Led11<splittag>Col2_Led12<splittag>Col2_Led13<splittag>Col2_Led14<splittag>Col2_Led15<splittag>Col2_Led16<splittag>Col2_Led17<splittag>Col2_Led18<splittag>Col2_Led19<splittag>Col2_Led20<splittag>Col2_Led21<splittag>Col2_Led22<splittag>Col2_Led23<splittag>Col2_Led24<splittag>Col2_Led25<splittag>Col2_Led26<splittag>Col2_Led27<splittag>Col2_Led28<splittag>Col2_Led29<splittag>Col2_Led30<splittag>Col2_Led31<splittag>Col2_Led32<splittag>Col2_Led33<splittag>Col2_Led34<splittag>Col2_Led35<splittag>Col2_Led36<splittag>Col2_Led37<splittag>Col2_Led38<splittag>Col2_Led39<splittag>Col2_Led40<splittag>Col2_Led41<splittag>Col2_Led42<splittag>Col2_Led43<splittag>Col2_Led44<splittag>Col2_Led45<splittag>Col2_Led46<splittag>Col2_Led47<splittag>Col2_Led48<splittag>Col2_Led49<splittag>Col2_Led50<splittag>Col2_Led51<splittag>Col2_Led52<splittag>Col2_Led53<splittag>Col2_Led54<splittag>Col2_Led55<splittag>Col2_Led56<splittag>Col2_Led57<splittag>Col2_Led58<splittag>Col2_Led59<splittag>Col2_Led60<splittag>Col2_Led61<splittag>Col2_Led62<splittag>Col2_Led63<splittag>Col2_Led64<splittag>Col2_Led65<splittag>Col2_Led66<splittag>Col2_Led67<splittag>Col2_Led68<splittag>Col2_Led69<splittag>Col2_Led70<splittag>Col2_Led71<splittag>Col2_Led72<splittag>Col2_Led73<splittag>Col2_Led74<splittag>Col2_Led75<splittag>Col2_Led76<splittag>Col2_Led77<splittag>Col2_Led78<splittag>Col2_Led79<splittag>Col2_Led80', '<splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag>', 'X_En<splittag>X_Step<splittag>X_Dir<splittag>X_Home<splittag>X_Max<splittag>X_Min<splittag>Y_En<splittag>Y_Step<splittag>Y_Dir<splittag>Y_Home<splittag>Y_Max<splittag>Y_Min<splittag>Z1_En<splittag>Z1_Step<splittag>Z1_Dir<splittag>Z1_Home<splittag>Z1_Max<splittag>Z1_Min<splittag>Z2_En<splittag>Z2_Step<splittag>Z2_Dir<splittag>Z2_Home<splittag>Z2_Max<splittag>Z2_Min<splittag>A1_En<splittag>A1_Step<splittag>A1_Dir<splittag>A1_Home<splittag>A1_Max<splittag>A1_Min<splittag>A2_En<splittag>A2_Step<splittag>A2_Dir<splittag>A2_Home<splittag>A2_Max<splittag>A2_Min<splittag>B_En<splittag>B_Step<splittag>B_Dir<splittag>B_Home<splittag>B_Max<splittag>B_Min<splittag>C_En<splittag>C_Step<splittag>C_Dir<splittag>C_Home<splittag>C_Max<splittag>C_Min<splittag>PWM<splittag>X1<splittag>X2<splittag>GND<splittag>Z_Probe<splittag>E_Stop<splittag>Air<splittag>Chiller<splittag>Water_pump<splittag>Vaccum_Clearning<splittag>Alarm_Light<splittag>Vaccum_Table<splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag>', '<splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag>', '<splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag>', '<splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag><splittag>'),
(3, 80, 'Col3_Led1<splittag>Col3_Led2<splittag>Col3_Led3<splittag>Col3_Led4<splittag>Col3_Led5<splittag>Col3_Led6<splittag>Col3_Led7<splittag>Col3_Led8<splittag>Col3_Led9<splittag>Col3_Led10<splittag>Col3_Led11<splittag>Col3_Led12<splittag>Col3_Led13<splittag>Col3_Led14<splittag>Col3_Led15<splittag>Col3_Led16<splittag>Col3_Led17<splittag>Col3_Led18<splittag>Col3_Led19<splittag>Col3_Led20<splittag>Col3_Led21<splittag>Col3_Led22<splittag>Col3_Led23<splittag>Col3_Led24<splittag>Col3_Led25<splittag>Col3_Led26<splittag>Col3_Led27<splittag>Col3_Led28<splittag>Col3_Led29<splittag>Col3_Led30<splittag>Col3_Led31<splittag>Col3_Led32<splittag>Col3_Led33<splittag>Col3_Led34<splittag>Col3_Led35<splittag>Col3_Led36<splittag>Col3_Led37<splittag>Col3_Led38<splittag>Col3_Led39<splittag>Col3_Led40<splittag>Col3_Led41<splittag>Col3_Led42<splittag>Col3_Led43<splittag>Col3_Led44<splittag>Col3_Led45<splittag>Col3_Led46<splittag>Col3_Led47<splittag>Col3_Led48<splittag>Col3_Led49<splittag>Col3_Led50<splittag>Col3_Led51<splittag>Col3_Led52<splittag>Col3_Led53<splittag>Col3_Led54<splittag>Col3_Led55<splittag>Col3_Led56<splittag>Col3_Led57<splittag>Col3_Led58<splittag>Col3_Led59<splittag>Col3_Led60<splittag>Col3_Led61<splittag>Col3_Led62<splittag>Col3_Led63<splittag>Col3_Led64<splittag>Col3_Led65<splittag>Col3_Led66<splittag>Col3_Led67<splittag>Col3_Led68<splittag>Col3_Led69<splittag>Col3_Led70<splittag>Col3_Led71<splittag>Col3_Led72<splittag>Col3_Led73<splittag>Col3_Led74<splittag>Col3_Led75<splittag>Col3_Led76<splittag>Col3_Led77<splittag>Col3_Led78<splittag>Col3_Led79<splittag>Col3_Led80', 'io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io', 'signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame', 'msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs', 'note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note', 'ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver'),
(4, 80, 'Col4_Led1<splittag>Col4_Led2<splittag>Col4_Led3<splittag>Col4_Led4<splittag>Col4_Led5<splittag>Col4_Led6<splittag>Col4_Led7<splittag>Col4_Led8<splittag>Col4_Led9<splittag>Col4_Led10<splittag>Col4_Led11<splittag>Col4_Led12<splittag>Col4_Led13<splittag>Col4_Led14<splittag>Col4_Led15<splittag>Col4_Led16<splittag>Col4_Led17<splittag>Col4_Led18<splittag>Col4_Led19<splittag>Col4_Led20<splittag>Col4_Led21<splittag>Col4_Led22<splittag>Col4_Led23<splittag>Col4_Led24<splittag>Col4_Led25<splittag>Col4_Led26<splittag>Col4_Led27<splittag>Col4_Led28<splittag>Col4_Led29<splittag>Col4_Led30<splittag>Col4_Led31<splittag>Col4_Led32<splittag>Col4_Led33<splittag>Col4_Led34<splittag>Col4_Led35<splittag>Col4_Led36<splittag>Col4_Led37<splittag>Col4_Led38<splittag>Col4_Led39<splittag>Col4_Led40<splittag>Col4_Led41<splittag>Col4_Led42<splittag>Col4_Led43<splittag>Col4_Led44<splittag>Col4_Led45<splittag>Col4_Led46<splittag>Col4_Led47<splittag>Col4_Led48<splittag>Col4_Led49<splittag>Col4_Led50<splittag>Col4_Led51<splittag>Col4_Led52<splittag>Col4_Led53<splittag>Col4_Led54<splittag>Col4_Led55<splittag>Col4_Led56<splittag>Col4_Led57<splittag>Col4_Led58<splittag>Col4_Led59<splittag>Col4_Led60<splittag>Col4_Led61<splittag>Col4_Led62<splittag>Col4_Led63<splittag>Col4_Led64<splittag>Col4_Led65<splittag>Col4_Led66<splittag>Col4_Led67<splittag>Col4_Led68<splittag>Col4_Led69<splittag>Col4_Led70<splittag>Col4_Led71<splittag>Col4_Led72<splittag>Col4_Led73<splittag>Col4_Led74<splittag>Col4_Led75<splittag>Col4_Led76<splittag>Col4_Led77<splittag>Col4_Led78<splittag>Col4_Led79<splittag>Col4_Led80', 'io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io', 'signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame', 'msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs', 'note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note', 'ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver'),
(5, 80, 'Col5_Led1<splittag>Col5_Led2<splittag>Col5_Led3<splittag>Col5_Led4<splittag>Col5_Led5<splittag>Col5_Led6<splittag>Col5_Led7<splittag>Col5_Led8<splittag>Col5_Led9<splittag>Col5_Led10<splittag>Col5_Led11<splittag>Col5_Led12<splittag>Col5_Led13<splittag>Col5_Led14<splittag>Col5_Led15<splittag>Col5_Led16<splittag>Col5_Led17<splittag>Col5_Led18<splittag>Col5_Led19<splittag>Col5_Led20<splittag>Col5_Led21<splittag>Col5_Led22<splittag>Col5_Led23<splittag>Col5_Led24<splittag>Col5_Led25<splittag>Col5_Led26<splittag>Col5_Led27<splittag>Col5_Led28<splittag>Col5_Led29<splittag>Col5_Led30<splittag>Col5_Led31<splittag>Col5_Led32<splittag>Col5_Led33<splittag>Col5_Led34<splittag>Col5_Led35<splittag>Col5_Led36<splittag>Col5_Led37<splittag>Col5_Led38<splittag>Col5_Led39<splittag>Col5_Led40<splittag>Col5_Led41<splittag>Col5_Led42<splittag>Col5_Led43<splittag>Col5_Led44<splittag>Col5_Led45<splittag>Col5_Led46<splittag>Col5_Led47<splittag>Col5_Led48<splittag>Col5_Led49<splittag>Col5_Led50<splittag>Col5_Led51<splittag>Col5_Led52<splittag>Col5_Led53<splittag>Col5_Led54<splittag>Col5_Led55<splittag>Col5_Led56<splittag>Col5_Led57<splittag>Col5_Led58<splittag>Col5_Led59<splittag>Col5_Led60<splittag>Col5_Led61<splittag>Col5_Led62<splittag>Col5_Led63<splittag>Col5_Led64<splittag>Col5_Led65<splittag>Col5_Led66<splittag>Col5_Led67<splittag>Col5_Led68<splittag>Col5_Led69<splittag>Col5_Led70<splittag>Col5_Led71<splittag>Col5_Led72<splittag>Col5_Led73<splittag>Col5_Led74<splittag>Col5_Led75<splittag>Col5_Led76<splittag>Col5_Led77<splittag>Col5_Led78<splittag>Col5_Led79<splittag>Col5_Led80', 'io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io', 'signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame', 'msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs', 'note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note', 'ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver'),
(6, 80, 'Col6_Led1<splittag>Col6_Led2<splittag>Col6_Led3<splittag>Col6_Led4<splittag>Col6_Led5<splittag>Col6_Led6<splittag>Col6_Led7<splittag>Col6_Led8<splittag>Col6_Led9<splittag>Col6_Led10<splittag>Col6_Led11<splittag>Col6_Led12<splittag>Col6_Led13<splittag>Col6_Led14<splittag>Col6_Led15<splittag>Col6_Led16<splittag>Col6_Led17<splittag>Col6_Led18<splittag>Col6_Led19<splittag>Col6_Led20<splittag>Col6_Led21<splittag>Col6_Led22<splittag>Col6_Led23<splittag>Col6_Led24<splittag>Col6_Led25<splittag>Col6_Led26<splittag>Col6_Led27<splittag>Col6_Led28<splittag>Col6_Led29<splittag>Col6_Led30<splittag>Col6_Led31<splittag>Col6_Led32<splittag>Col6_Led33<splittag>Col6_Led34<splittag>Col6_Led35<splittag>Col6_Led36<splittag>Col6_Led37<splittag>Col6_Led38<splittag>Col6_Led39<splittag>Col6_Led40<splittag>Col6_Led41<splittag>Col6_Led42<splittag>Col6_Led43<splittag>Col6_Led44<splittag>Col6_Led45<splittag>Col6_Led46<splittag>Col6_Led47<splittag>Col6_Led48<splittag>Col6_Led49<splittag>Col6_Led50<splittag>Col6_Led51<splittag>Col6_Led52<splittag>Col6_Led53<splittag>Col6_Led54<splittag>Col6_Led55<splittag>Col6_Led56<splittag>Col6_Led57<splittag>Col6_Led58<splittag>Col6_Led59<splittag>Col6_Led60<splittag>Col6_Led61<splittag>Col6_Led62<splittag>Col6_Led63<splittag>Col6_Led64<splittag>Col6_Led65<splittag>Col6_Led66<splittag>Col6_Led67<splittag>Col6_Led68<splittag>Col6_Led69<splittag>Col6_Led70<splittag>Col6_Led71<splittag>Col6_Led72<splittag>Col6_Led73<splittag>Col6_Led74<splittag>Col6_Led75<splittag>Col6_Led76<splittag>Col6_Led77<splittag>Col6_Led78<splittag>Col6_Led79<splittag>Col6_Led80', 'io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io', 'signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame', 'msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs', 'note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note', 'ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver'),
(7, 80, 'Col7_Led1<splittag>Col7_Led2<splittag>Col7_Led3<splittag>Col7_Led4<splittag>Col7_Led5<splittag>Col7_Led6<splittag>Col7_Led7<splittag>Col7_Led8<splittag>Col7_Led9<splittag>Col7_Led10<splittag>Col7_Led11<splittag>Col7_Led12<splittag>Col7_Led13<splittag>Col7_Led14<splittag>Col7_Led15<splittag>Col7_Led16<splittag>Col7_Led17<splittag>Col7_Led18<splittag>Col7_Led19<splittag>Col7_Led20<splittag>Col7_Led21<splittag>Col7_Led22<splittag>Col7_Led23<splittag>Col7_Led24<splittag>Col7_Led25<splittag>Col7_Led26<splittag>Col7_Led27<splittag>Col7_Led28<splittag>Col7_Led29<splittag>Col7_Led30<splittag>Col7_Led31<splittag>Col7_Led32<splittag>Col7_Led33<splittag>Col7_Led34<splittag>Col7_Led35<splittag>Col7_Led36<splittag>Col7_Led37<splittag>Col7_Led38<splittag>Col7_Led39<splittag>Col7_Led40<splittag>Col7_Led41<splittag>Col7_Led42<splittag>Col7_Led43<splittag>Col7_Led44<splittag>Col7_Led45<splittag>Col7_Led46<splittag>Col7_Led47<splittag>Col7_Led48<splittag>Col7_Led49<splittag>Col7_Led50<splittag>Col7_Led51<splittag>Col7_Led52<splittag>Col7_Led53<splittag>Col7_Led54<splittag>Col7_Led55<splittag>Col7_Led56<splittag>Col7_Led57<splittag>Col7_Led58<splittag>Col7_Led59<splittag>Col7_Led60<splittag>Col7_Led61<splittag>Col7_Led62<splittag>Col7_Led63<splittag>Col7_Led64<splittag>Col7_Led65<splittag>Col7_Led66<splittag>Col7_Led67<splittag>Col7_Led68<splittag>Col7_Led69<splittag>Col7_Led70<splittag>Col7_Led71<splittag>Col7_Led72<splittag>Col7_Led73<splittag>Col7_Led74<splittag>Col7_Led75<splittag>Col7_Led76<splittag>Col7_Led77<splittag>Col7_Led78<splittag>Col7_Led79<splittag>Col7_Led80', 'io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io', 'signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame', 'msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs', 'note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note', 'ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver');
INSERT INTO `matrixledname` (`id_column`, `num_of_led`, `led_name`, `IO`, `signame`, `msgs`, `notes`, `ver`) VALUES
(8, 80, 'Col8_Led1<splittag>Col8_Led2<splittag>Col8_Led3<splittag>Col8_Led4<splittag>Col8_Led5<splittag>Col8_Led6<splittag>Col8_Led7<splittag>Col8_Led8<splittag>Col8_Led9<splittag>Col8_Led10<splittag>Col8_Led11<splittag>Col8_Led12<splittag>Col8_Led13<splittag>Col8_Led14<splittag>Col8_Led15<splittag>Col8_Led16<splittag>Col8_Led17<splittag>Col8_Led18<splittag>Col8_Led19<splittag>Col8_Led20<splittag>Col8_Led21<splittag>Col8_Led22<splittag>Col8_Led23<splittag>Col8_Led24<splittag>Col8_Led25<splittag>Col8_Led26<splittag>Col8_Led27<splittag>Col8_Led28<splittag>Col8_Led29<splittag>Col8_Led30<splittag>Col8_Led31<splittag>Col8_Led32<splittag>Col8_Led33<splittag>Col8_Led34<splittag>Col8_Led35<splittag>Col8_Led36<splittag>Col8_Led37<splittag>Col8_Led38<splittag>Col8_Led39<splittag>Col8_Led40<splittag>Col8_Led41<splittag>Col8_Led42<splittag>Col8_Led43<splittag>Col8_Led44<splittag>Col8_Led45<splittag>Col8_Led46<splittag>Col8_Led47<splittag>Col8_Led48<splittag>Col8_Led49<splittag>Col8_Led50<splittag>Col8_Led51<splittag>Col8_Led52<splittag>Col8_Led53<splittag>Col8_Led54<splittag>Col8_Led55<splittag>Col8_Led56<splittag>Col8_Led57<splittag>Col8_Led58<splittag>Col8_Led59<splittag>Col8_Led60<splittag>Col8_Led61<splittag>Col8_Led62<splittag>Col8_Led63<splittag>Col8_Led64<splittag>Col8_Led65<splittag>Col8_Led66<splittag>Col8_Led67<splittag>Col8_Led68<splittag>Col8_Led69<splittag>Col8_Led70<splittag>Col8_Led71<splittag>Col8_Led72<splittag>Col8_Led73<splittag>Col8_Led74<splittag>Col8_Led75<splittag>Col8_Led76<splittag>Col8_Led77<splittag>Col8_Led78<splittag>Col8_Led79<splittag>Col8_Led80', 'io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io<splittag>io', 'signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame<splittag>signame', 'msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs<splittag>msgs', 'note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note<splittag>note', 'ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver<splittag>ver');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Pin7`
--

CREATE TABLE `Pin7` (
  `id` int(50) NOT NULL,
  `label` varchar(200) NOT NULL,
  `info` varchar(15000) NOT NULL,
  `code` varchar(100) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `Pin7`
--

INSERT INTO `Pin7` (`id`, `label`, `info`, `code`, `status`) VALUES
(1, 'Default', '', '7-10000000000000000000000000000000000000000000000000000000000000000000000000000000', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Pin8`
--

CREATE TABLE `Pin8` (
  `id` int(50) NOT NULL,
  `label` varchar(200) NOT NULL,
  `info` varchar(15000) NOT NULL,
  `code` varchar(100) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `Pin8`
--

INSERT INTO `Pin8` (`id`, `label`, `info`, `code`, `status`) VALUES
(1, 'Default', '', '8-00000000000000000000000000000000000000000000000000000000000000000000000000000000', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Sample`
--

CREATE TABLE `Sample` (
  `id` int(50) NOT NULL,
  `label` varchar(200) NOT NULL,
  `info` varchar(15000) NOT NULL,
  `code` varchar(100) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `3D_printer_5_head`
--
ALTER TABLE `3D_printer_5_head`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `3D_printer_Big_head`
--
ALTER TABLE `3D_printer_Big_head`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `boards`
--
ALTER TABLE `boards`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `CNC_Milling_3Axis`
--
ALTER TABLE `CNC_Milling_3Axis`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `CNC_Milling_5_Axis`
--
ALTER TABLE `CNC_Milling_5_Axis`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `Laser_CO2`
--
ALTER TABLE `Laser_CO2`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `Laser_marking`
--
ALTER TABLE `Laser_marking`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `matrixledname`
--
ALTER TABLE `matrixledname`
  ADD PRIMARY KEY (`id_column`);

--
-- Chỉ mục cho bảng `Pin7`
--
ALTER TABLE `Pin7`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `Pin8`
--
ALTER TABLE `Pin8`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `Sample`
--
ALTER TABLE `Sample`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `3D_printer_5_head`
--
ALTER TABLE `3D_printer_5_head`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `3D_printer_Big_head`
--
ALTER TABLE `3D_printer_Big_head`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `boards`
--
ALTER TABLE `boards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT cho bảng `CNC_Milling_3Axis`
--
ALTER TABLE `CNC_Milling_3Axis`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `CNC_Milling_5_Axis`
--
ALTER TABLE `CNC_Milling_5_Axis`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `Laser_CO2`
--
ALTER TABLE `Laser_CO2`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT cho bảng `Laser_marking`
--
ALTER TABLE `Laser_marking`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `matrixledname`
--
ALTER TABLE `matrixledname`
  MODIFY `id_column` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `Pin7`
--
ALTER TABLE `Pin7`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `Pin8`
--
ALTER TABLE `Pin8`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `Sample`
--
ALTER TABLE `Sample`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
