-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 21, 2016 at 11:45 AM
-- Server version: 5.5.45-cll-lve
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sankalan_chakra_DB_2016`
--

-- --------------------------------------------------------

--
-- Table structure for table `hint`
--

CREATE TABLE IF NOT EXISTS `hint` (
  `ques_id` int(11) NOT NULL,
  `hint_number` int(11) NOT NULL,
  `data` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ques_id`,`hint_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hint`
--

INSERT INTO `hint` (`ques_id`, `hint_number`, `data`) VALUES
(1, 1, 'SSd2ZSBnb3QgdGhlIF9fX19f'),
(1, 2, 'SSdtIGEgbW90dG8='),
(1, 3, 'SSdtIGEgcmVjZW50IGNhbXBhaWdu'),
(2, 1, 'V2hhdCBpcyBjb21tb24gYmV0d2VlbiB1cw=='),
(2, 2, 'SGFwcHkgTmV3IFllYXIgMjAxNg=='),
(2, 3, 'MzAgbWludXRlcyBvciBQYXlUTQ=='),
(3, 1, 'Ri4uZi4uZi4uZm9jdXMgb24gdGhlIGIuLmIuLmJpcmQ='),
(3, 2, 'SXQncyBhIGJvb2s='),
(3, 3, 'V2hhdCdzIGluIGEgbmFtZT8gV2Ugc2F5ICJZb3UgZ28gdG8gbmV4dCBsZXZlbCIu'),
(4, 1, 'SXQncyBhbiBFbmlnbWE='),
(4, 2, 'U1lTVEVNUyBPRiBMT0dJQyBCQVNFRCBPTiBPUkRJTkFMUw=='),
(4, 3, 'UGF5IEF0dGVudGlvbiEhIQ=='),
(4, 4, 'SSdtIG9yZGVyaW5nIHlvdSB0byBicmVhayB0aGUgZW5pZ21hIQ=='),
(4, 5, 'SSB3YXMgdGhlIGhlYWQgb2YgdGhlIGRpdmlzaW9u'),
(5, 1, 'V29yZHMgbWF0dGVy'),
(5, 2, 'QmF6aW5nYQ=='),
(5, 3, 'UzA1RTIx'),
(6, 1, 'TWF5IHRoZSBiZXN0IGFydGlzdCB3aW4='),
(6, 2, 'SSBsb3ZlIG15IEluZGlh'),
(6, 3, 'SSB3YXMgdGhlIGZpcnN0IHRvIHdpbg=='),
(7, 1, 'Rm9jdXMgb24gdGhlIGNvbG9yIHRvbw=='),
(7, 2, 'TXkgZ2FtaW5nIGNvbnNvbGUgaXMgbm90IHdvcmtpbmcgOiggOico'),
(7, 3, 'V2UndmUgZ290IHRvIHRlbGwgU3RldmUsIGhlcmUncyB3aGF0IHdlIGhhdmUgdG8gZG8uLi4='),
(8, 1, 'd29ybGQgaXMgYSBNYXJ2ZWw='),
(8, 2, 'dGhlIE9yaWdpbnMgb2YgdGhlIExhc3QgU3RhbmQgaXMgRmlyc3QgQ2xhc3M='),
(8, 3, 'V2VhcG9uIDEx'),
(9, 1, 'SSBoYXZlIE1BTlkgYWNjb21wbGlzaG1lbnRz'),
(9, 2, 'd2F5MnNtcywgZnVsbG9uc21zLi4uLg=='),
(9, 3, 'IllvdSdyZSBmaXJlZCEi'),
(10, 1, 'd2hhdCdzIGRpZmZlcmVudCBpbiB0aGUgc3VpdA=='),
(10, 2, 'bWFkZSBpbiBteSBob25vdXIuLi4='),
(10, 3, 'SSB3aWxsIGJlIHRoZSB0YWxsZXN0IGluIHRoZSB3b3JsZA=='),
(11, 1, 'QXJyYW5nZSBpbiBvcmRlcg=='),
(11, 2, 'c3dpZnQuLi4gaHVycnkuLi4gYmUgZmFzdA=='),
(11, 3, 'SSBpbnZlbnRlZCBhIGxvdCBvZiB0aGluZ3M='),
(11, 4, 'QmlsbGlvbiBkb2xsYXIgbWlzdGFrZQ=='),
(12, 1, 'ZGlzY3JldGUgaW5zdGVhZCBvZiBjb250aW51b3VzIGNvZGU='),
(12, 2, 'eW91ciBkb2N1bWVudHMgYW55dGltZSwgYW55d2hlcmU='),
(12, 3, 'SSBwcm92aWRlIGFuZCBtYWludGFpbg=='),
(13, 1, 'TW9zdCBwb3B1bGFyIHNpdGNvbQ=='),
(13, 2, 'QSBsb3QgY2FuIGhhcHBlbiBvdmVyIGNvZmZlZQ=='),
(13, 3, 'SXQgY2FtZSBpbnRvIHJlYWxpdHk='),
(13, 4, 'T24gbXkgMjB0aCBhbm5pdmVyc2FyeQ=='),
(13, 5, 'SSB3YXMgbWFkZSB0aGlzIGRheSwgZmluZCB3aGVyZSBJIGFt'),
(14, 1, 'Y2hha3Jhdnl1aChkb3Qpc2Fua2FsYW5kdWNzKGRvdClpbg=='),
(14, 2, 'dGhlIGJlc3Qgd2lsbCBnZXQgdGhlIGF3YXJk'),
(14, 3, 'aGVyZWJ5IGFubm91bmNlZC4uLg=='),
(14, 4, 'Qm91cm52aXRhIFF1aXogX19fX19fX18='),
(14, 5, 'TGV0cyBzdGFydCBjb21wZXRpbmcgbm93'),
(15, 1, 'V2UgYXJlIHRocmVlLg=='),
(15, 2, 'TG9vayBFVkVSWVdIRVJFIHBvc3NpYmxl'),
(15, 3, 'SSB3YXMgYSBoYWxmLg=='),
(16, 1, 'MipjaGFyYWN0ZXIgKyAyKm1hdGVyaWFs'),
(16, 2, 'SSBmbHkgaGlnaA=='),
(16, 3, 'U2xhbUR1bmsh'),
(17, 1, 'TW9kZWwgUw=='),
(17, 2, 'SGlnaCBmcmVxdWVuY3kgQUMgY29pbA=='),
(17, 3, 'UmVhbCBzdWNjZXNzIGlzIGhvdyB5b3UgYXJlIHJlbWVtYmVyZWQgYWZ0ZXIgZGVhdGgu'),
(17, 4, 'YW5kIHRoZSBfX19fIGdvZXMgdG8='),
(17, 5, 'RnJvbSBMZW9uIFQuIFJvc2VuYmVyZyB0byAyMDE1'),
(18, 1, 'SmFtZXMgR29zbGluZyA6IEphdmE='),
(18, 2, 'V2hhdCBnb2VzIHRocm91Z2ggdGhlIGRvb3IgYnV0IG5ldmVyIGdvZXMgaW4gb3Igb3V0'),
(18, 3, 'UmF2aSBBc2h3aW4gaXMgYSBfX19fX19f'),
(18, 4, 'SSBvcGVuIGRvb3IgbG9ja3M='),
(18, 5, 'V2hvIHdhcyBJIGluaXRpYWxseT8='),
(19, 1, 'Um9iaW4gOiBCYXRtYW4gOjogRG9ua2V5IDogU2hyZWs='),
(19, 2, 'IlRoZSBGaW5hbCBQcm9ibGVtIg=='),
(19, 3, 'TGVvbmFyZG8gV0lMSEVMTSBEaUNhcHJpbywgS2VpcmEgQ0hSSVNUSU5BIEtuaWdodGxleQ=='),
(19, 4, 'SSBuZXZlciBsaWtlZCBpdCwgc28gSSBrZWVwIGl0IGhpZGRlbg=='),
(20, 1, 'V2Ugc2hhcmUgYSBjb21tb24gYm9uZA=='),
(20, 2, 'Rmlyc3QgdG8gcmVhY2ggaG9tZQ=='),
(20, 3, 'V2FudCB0aGUgYW5zd2VyPyBMb29rIGZvciBtZSBpbiBhIG11c2V1bSE='),
(21, 1, 'aWYgcCB0aGVuIHE7'),
(21, 2, 'KHZhbHVlPT00MikgaXMgc2ltaWxhciB0byAoNDI9PXZhbHVlKQ=='),
(21, 3, 'IlBBVElFTkNFIFlPVSBNVVNUIEhBVkUgbXkgeW91bmcgcGFkYXdhbiI='),
(22, 1, 'RmluZCBzb21ldGhpbmcgcmVsYXRpdmUgaW4gdGhlIGZpcnN0IHR3byBwaWNz'),
(22, 2, 'VVM4MjQ5OTQz'),
(22, 3, 'VGhlIG9uZSBhbmQgb25seSBtZWV0aW5n'),
(22, 4, 'U29jaWFsIE5ldHdvcmsgKyBUUkFJICsgTWVldGluZw=='),
(22, 5, 'VG9vayBwbGFjZSBpbiBOZXcgRGVsaGku'),
(23, 1, 'WW91IGhhdmUgdG8gaGF2ZSBhIHNpeHRoc2Vuc2U='),
(23, 2, 'V2UgYXJlIHRoZSBmdXR1cmUgb2YgSW5kaWE='),
(23, 3, 'V2UgcmVwcmVzZW50IHlvdXIgcmVjZW50IGNhbXBhaWdu'),
(24, 1, 'UGljayBvbmUgd29yZCBmcm9tIGVhY2g='),
(24, 2, 'IkhleSwgeW91IHZlcnkgZ29vZCEgU2VlIHlvdSBuZXh0IHRpbWUhIg=='),
(24, 3, 'WW91IGFsd2F5cyBoYXZlIHRvIHBheSwgaW4gY2FzaCBvciBpbiBLSU5ELg=='),
(24, 4, 'T3duZXIgb2YgdGhlIHByb3BlcnR5IHNvIHdobyBhbSBJPw=='),
(24, 5, 'SSBhbSBhIGxvcmQhIA=='),
(25, 1, 'RW5kIG9mIHRoZSB3b3JsZCBhcyB5b3Uga25vdyBpdA=='),
(25, 2, 'RXJyb3Igb2YgdGhlIG1pbGxlbm5pdW0='),
(25, 3, 'S2FidXRhciBqYSBqYSBqYSwgQ29tcHV0ZXIgYWEgYWEgYWE='),
(26, 1, 'I2Jvb3RvdXQ='),
(26, 2, 'RG9uJ3QgZm9jdXMgb24gU3VubnkgRGVvbA=='),
(26, 3, 'a2FhbiBtYXJvZCBwYW5pIGR1bmdhIG1haW4ga29pIHBhaXNlIG5haGkgbHVuZ2E='),
(27, 1, 'TW9zdCByZXNwZWN0ZWQgY2hhaS13YWxh'),
(27, 2, 'IkhlbGxvPyIgIkhlbGxvLiIgIllvdSd2ZSBuZXZlciBjYWxsZWQgbWUgYmVmb3JlISI='),
(27, 3, 'Y2lubmFtb24sIGNsb3ZlLCBjYXJkYW1vbQ=='),
(28, 1, 'SW1hZ2Ugc3BlYWtzIG1vcmUgdGhhbiB5b3UgY2FuIHNlZQ=='),
(28, 2, 'VW5pdGVkIFRocm91Z2ggT2NlYW5z'),
(28, 3, 'TGV0J3MgcGxheSBoaWRlIGFuZCBzZWVr'),
(29, 1, 'SSB0aG91Z2h0IGFuZCB0aG91Z2h0IGJ1dCBjb3VsZCBub3Qgc2F5ICJ3b3JkIiBpbiBHcmVlay4='),
(29, 2, 'R3JhZmlrZW4gdW5kIExvZ2lr'),
(29, 3, 'SGksIEkgYW0gQ2FzcGVsIE1jcGhhZGRlbg=='),
(30, 1, 'R2FuaXRhcGFkYSBLYWxha3JpeWFwYWRh'),
(30, 2, 'VXAgaW4gdGhlIHNwYWNlLCB0YWtpbmcgcGljdHVyZXMgb2YgeW91LCBJIGNhbiBzZWUgeW91IGJ1dCB5b3UgY2FuJ3Qgc2VlIG1lLg=='),
(30, 3, 'UnVzc2lhbnMgd2luIHJhY2UgaW4gc3BhY2U='),
(30, 4, 'V293LCBuZXZlciBzZWVuIHRoYXQgYmVmb3JlLi4uZXNwZWNpYWxseSBpbiB0aGVzZSB0aW1lcyEh'),
(30, 5, 'SSB3YXMgbGF1bmNoZWQgZHVyaW5nLi4u'),
(31, 1, 'SXTigJlzIHRpbWUgdG8gbWVldCB5b3VyIG1ha2Vy'),
(31, 2, 'SSB3b3VsZCBsaWtlIHRvIHRoYW5rIG15IGZhbWlseSwgd2hvIGFsd2F5cyBiZWxpZXZlZCBpbiBtZS4uIE15IGZyaWVuZHPigKbigKbigKY='),
(31, 3, 'SSB3b3JrZWQgbXkgZW50aXJlIGxpZmUgdG8gYWNoaWV2ZSB0aGlz'),
(31, 4, 'UGlvbmVlciBpbiB3aXJlbGVzcyBjb21tdW5pY2F0aW9u'),
(31, 5, 'SWYgIkFsZnJlZCBOb2JlbDpOb2JlbCBQcml6ZSIgdGhlbj8='),
(31, 6, 'VGhleSBob25vdXJlZCBtZSBhcyBJIHdhcyBzbyBpbm5vdmF0aXZlIQ=='),
(32, 1, 'b3BlbiB0aGUgR2F0ZXMgb2YgeW91ciBoZWFydHM='),
(32, 2, 'SSBoYXZlIHRocmVlIGV5ZXMsIHlldCBjYW4ndCBzZWUuIEV2ZXJ5IHRpbWUgSSBibGluaywgSSBnaXZlIHlvdSBjb21tYW5kcy4gWW91IGRvIGFzIHlvdSBhcmUgdG9sZCwgd2l0aCB5b3VyIGZlZXQgYW5kIGhhbmRz'),
(32, 3, 'V2hhdCBjb3VsZCBJIGhhdmUgZG9uZSB3aXRob3V0IHlvdXIgYWlk'),
(33, 1, 'V2hhdCBpcyBjb21tb24gYmV0d2VlbiB1cw=='),
(33, 2, 'Rm9yIG1lbiBtYXkgY29tZSBhbmQgbWVuIG1heSBnbywgYnV0IEkgZ28gb24gZm9yZXZlcg=='),
(33, 3, 'UmVmbGVjdGlvbiBvZiBzb3VuZA=='),
(34, 1, '4oCcTGV0IG1lIHNlY3VyZSBteSBpbmZvcm1hdGlvbi7igJ0gICAgICAgICAgIOKAnExpa2UgdGhhdCBjYW4gc3RvcCBtZSEgTXVhaC1oYS1oYeKAnQ=='),
(34, 2, '4oCcWW91IGp1c3QgY29tbWl0dGVkIGEgZm91bCEhIeKAnSAgICAgICAgIOKAnFlvIGJpYXRjaCEgTm93IHlvdSBjYW7igJl0IHNjb3JlIeKAnSA='),
(34, 3, '4oCcSSBqdXN0IGhhdmUgdG8gZ28gdG8gdGhlIGxpbmUgYW5kIGhpdCB0aGVtIGFuZCBtYWtlIHRoZW0gcGF5LCBhbmQgSSB3aWxsLCBJJ20gbm90IHdvcnJpZWQu4oCdIEkgY2FsbCBteXNlbGYgd2hhdD8='),
(34, 4, 'S2VlcCBjYWxtIGFuZCBpbnRlcnZpZXch'),
(34, 5, 'SSBhbSBhIG1hc3Rlci4='),
(35, 1, 'U2VlIHRoZSBpbWFnZSBhcyBjcnVzdCB0byBjb3Jl'),
(35, 2, 'TXkgQ29tcGFueSB3b3JrZWQgb24gYSBsb3Qgb2YgcHJvamVjdHM='),
(35, 3, '4oCcSGF2ZSB5b3UgZXZlciBzZWVuIGEgbW91c2UgZWF0aW5nIGFuIGFwcGxlP+KAnSDigJxObyEgVGhhdOKAmWQgYmUgYSBmaXJzdC4u4oCd'),
(35, 4, 'SmFtZXMgQm9uZCBvciAwMDcuLi4uLg=='),
(35, 5, 'UG9ydGFibGUgUENz'),
(36, 1, 'Y2hob3RhIHBhY2tldCBiYWRhIGRoYW1ha2E='),
(36, 2, 'Ym9va3MgaGF2ZSBhbGwgdGhlIGRldGFpbHMsIG1vdmllcyBkb27igJl0'),
(36, 3, 'Y2hhYWhlIGtvaSBtdWpoZSBqdW5nbGVlIGthaGU='),
(37, 1, 'Q29uY2VudHJhdGUgb24gdGhlIHdvcmRz'),
(37, 2, 'V2hvIHNob3VsZCB2b3RlIGZvciB1cz8='),
(37, 3, 'SSBhbSBmZWVsaW5nIG5vc3RhbGdpYw=='),
(37, 4, 'TW9oaXQgTmFnYXIgOiAyMDE2'),
(38, 1, 'TXkgaW52ZW50aW9uIG1hZGUgdGhlIG9sZCBtZW4gc2Vl'),
(38, 2, 'VHJpbSBhbmQgcGFzdGU='),
(38, 3, 'VG9tIGNvdWxkIG5ldmVyIGNhdGNoIG1l'),
(38, 4, 'QW4gaWRlYSBjYW4gY2hhbmdlIHlvdXIgbGlmZQ=='),
(38, 5, 'UGljayBhIHdvcmQgZnJvbSBlYWNo'),
(38, 6, 'QSB3aGVlbCB0aGF0IGRvZXNuJ3QgaGVscCB0byBkcml2ZSB5b3VyIGNhcg=='),
(38, 7, 'SGVscHMgeW91IHRvIHNjcm9sbCBhcm91bmQ='),
(39, 1, '4oCcUGFwYSEgUGFwYSEgV2hlcmUgYXJlIHdlIGdvaW5nIGZvciB0aGUgZmFpcj/igJ0='),
(39, 2, 'UnVsZXIgb2YgdGhhdCBwbGFjZQ=='),
(39, 3, 'T3VyIGdpZnQgdG8geW91'),
(39, 4, 'TWFpbiB0aGFrIGdheWEgbWFpbiBnaGFyIGphIHJhaGEgaG9vbg=='),
(39, 5, 'SSBmbG9hdCBvbiB3YXRlcg=='),
(40, 1, 'bWVsb2R5IGl0bmkgY2hvY29sYXR5IGt5dSBoYWk='),
(40, 2, 'Zm9jdXMgb24gdGhlIHZvaWNl'),
(40, 3, 'd293LCBJIGFtIHJlYWwgbm93'),
(40, 4, 'TWF5IEkgdGFrZSB5b3VyIG9yZGVyPw=='),
(40, 5, 'VGhlIHBsYWNlIHdoZXJlIEkgdXNlZCB0byBsaXZlIHR1cm5lZCBpbnRvIHJlYWxpdHkh'),
(40, 6, 'SSBsb3ZlIGNhbmR5IHNvIG11Y2ggSSB3aWxsIHNlbGwgaXQu'),
(40, 7, 'QmFtYm9vIG1hbiBvZiB0aGUgZ2FtZQ=='),
(40, 8, 'T3duZXIgb2YgdGhlIHJlYWwgc2hvcCBuYW1lZCBhZnRlciB0aGlzIGd1eeKAmXMgaG9tZXRvd24gaW4gdGhlIGdhbWU='),
(41, 1, 'SSBhbSBmaXJlZCEgV2hhdCBhbSBJIGdvaW5nIHRvIGRvIG5vdz8gOuKAmSg='),
(41, 2, 'VGhhbmsgeW91IGZvciB2b3RpbmcgbWUu'),
(41, 3, 'cGhldyBmaW5hbGx5IGEgdG9vbCwgd2UgY2FuIHNvcnQgdGhlIGNhbmRpZGF0ZXMgZWFzaWx5'),
(41, 4, 'UHJvZHVjdCBvZiB0aGUgeWVhcg=='),
(42, 1, 'SGFwcHkgVmFsZW50aW5lcyBEYXk='),
(42, 2, 'VGhhdCBtb21lbnQgd2hlbiB5b3UgcmVhbGl6ZSBKb2tlciBoYXMgYSBnaXJsZnJpZW5kIGFuZCB5b3UgZG9u4oCZdCEgMzop'),
(42, 3, 'VHdpbmtsZSB0d2lua2xlIGxpdHRsZSBzdGFyLCBJIHdhcyBhIHNjaG9vbGdpcmwgd2hlbiBJIGtpbGxlZCBteSBwYXJpdmFhcg=='),
(42, 4, 'QWx0ZXJuYXRlIHVuaXZlcnNl'),
(43, 1, 'SWYgeW91IHdlcmUgYSBnYW1lciwgeW91IHdvdWxkbuKAmXQgbmVlZCB0aGlzIGhpbnQu'),
(43, 2, 'QmVzdCB0aW1lIHRvIHBsYXkgZGFyayByb29tLg=='),
(43, 3, 'SXQgd2VudCBhbGwgb3V0IG9mIGNvbnRyb2w='),
(43, 4, 'T29wcyEgU29ycnkhIE1ZIGJhZC4='),
(43, 5, 'SSB3YXMgdGhlIGJvc3Mu'),
(44, 1, 'SSBzcHJlYWQgYXQgbXkgd2lsbC4gWW91IGNhbuKAmXQgc3RvcCBtZS4gSGFoYWhhIQ=='),
(44, 2, 'SSB3YXMgdGhlIG1vdGhlciBvZiBhbGwu'),
(44, 3, 'QXBwbGUgZmFuYmFzZSBpcyB0cnVlIGhlcmUgdG9v'),
(45, 1, 'TG9jYXRlIHRoZSBjb3VudHJ5Lg=='),
(45, 2, '4oCcS2VlcCBFeHBsb3JpbmfigJ0='),
(45, 3, 'TWVhbndoaWxlLCBpbiBJbmRpYSwgUkVDRU5UTFnigKbigKY='),
(45, 4, 'V2hlcmXigJlzIHRoZSBwYXJ0eSB0b25pZ2h0Pw=='),
(46, 1, 'TXkgc3dlZXQgc2lzdGVy4oCmLg=='),
(46, 2, 'QSB0aG91c2FuZCB5ZWFycyBsYXRlciwgbWFua2luZCBwZXJpc2hlZC4gRHVtYmZvdW5kZWQsIHRoZXkgc3Rvb2QgaW4gZnJvbnQgb2YgR29kLiBBc2hhbWVkIGF0IHRoZSBwcm9ub3VuIHRoZXknZCB1c2VkIGFsbCBhbG9uZy4gU2hlIHNtaWxlZCBiYWNrLg=='),
(46, 3, 'S3Jpc2huYSBhbmQgZ29waXlhYW7igKYu'),
(47, 1, 'SSBtYXkgbm90IHNwZWFrIHRocm91Z2ggd29yZHMgYnV0IEkgc3Bva2UgdGhyb3VnaCB0aGUgYWQu'),
(47, 2, 'Q2hhbmdlIGlzIGFsd2F5cyBiZXR0ZXIu'),
(47, 3, 'VGhhbmsgeW91IGZvciB0aGUgcmVwbGFjZW1lbnQu'),
(48, 1, 'RGFya2VzdCBkYXlzIG9mIEluZGlhbiBkZW1vY3JhY3k='),
(48, 2, 'U3RvcCB0aGUgY29uZnVzaW9uLiBMaW5rIGF1ZGl0b3J5IHdpdGggdGhlIHZpc2lvbi4='),
(48, 3, 'V2hhdCB5b3UgZG9u4oCZdCBrbm93IHdvdWxkIG1ha2UgYSBncmVhdCBib29rLg=='),
(48, 4, 'SG93IGNhbiB5b3UgcHJpbnQgd2l0aG91dCBhIHByaW50ZXI/'),
(48, 5, 'V2hvc2UgbXkgZmlyc3QgcHVibGlzaGVyPw=='),
(49, 1, 'SSBjYW4ndCBoZWFyIHlvdS4gSSBhbSBzdHVjayBpbiBqYW0u'),
(49, 2, 'V2hhdCBoYXMgZmVldCBidXQgbm8gbGVncz8='),
(49, 3, 'SG93IGZhcj8/IEp1c3Qgc29tZSBLSUxPTUVUUkVTLi4u'),
(49, 4, 'SSBuZWVkIGFuIGFwcGxlLiBUaGUgZnJ1aXQ/IE5vLCB0aGUgcGhvbmUu'),
(49, 5, 'V2VsY29tZSB0byBQbGF5IFN0b3JlLg=='),
(49, 6, 'SW4gYSBtZWV0aW5nLCBBdCB0aGUgZ3ltLCBTbGVlcGluZywgVXJnZW50IGNhbGxzIG9ubHk='),
(50, 1, 'Q29tcGxldGVkIHRoZSBjcm9zc3dvcmQsIGh1aD8gRmluZCBhIG1hZ2ljIGtleXdvcmQu'),
(50, 2, 'SGF2ZW4ndCBmb3VuZCBhbnl0aGluZyB5ZXQ/IFdoYXQgaXMgY29tbW9uIGJldHdlZW4gbG93ZXIgdHJpYW5nbGUgYW5kIHVwcGVyIHRyaWFuZ2xlPw=='),
(50, 3, 'WW91IGhhdmUgcGxheWVkIG9uIG91ciBzaXRlIGZvciBzbyBsb25nLi5idXQgaGF2ZSB5b3UgZXZlciBJTlNQRUNURUQgaXQgdG8gbW92ZSBmdXJ0aGVyPz8=');

-- --------------------------------------------------------

--
-- Table structure for table `levelcleartime`
--

CREATE TABLE IF NOT EXISTS `levelcleartime` (
  `level` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `time_micro` double NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `levelcleartime`
--

INSERT INTO `levelcleartime` (`level`, `time`, `time_micro`, `user_id`) VALUES
(1, '2016-02-17 00:01:16', 1455647476.84, 975004172547145),
(2, '2016-02-17 00:21:10', 1455648670.85, 921442244643658),
(3, '2016-02-17 00:31:10', 1455649270.49, 975004172547145),
(4, '2016-02-17 02:35:52', 1455656752.64, 1211121048917717),
(5, '2016-02-17 02:49:26', 1455657566.05, 785356408235980),
(6, '2016-02-17 03:28:46', 1455659926.48, 975004172547145),
(7, '2016-02-17 04:15:59', 1455662759.04, 785356408235980),
(8, '2016-02-17 05:02:36', 1455665556.8, 785356408235980),
(9, '2016-02-17 05:35:04', 1455667504.45, 1022055384521734),
(10, '2016-02-17 06:06:44', 1455669404.28, 785356408235980),
(11, '2016-02-17 14:06:22', 1455698182.55, 785356408235980),
(12, '2016-02-17 14:58:52', 1455701332.59, 1022055384521734),
(13, '2016-02-17 16:42:48', 1455707568.46, 1022055384521734),
(14, '2016-02-17 20:35:12', 1455721512.26, 1073033826053510),
(15, '2016-02-17 21:15:47', 1455723947.7, 501329306738206),
(16, '2016-02-17 22:35:25', 1455728725.2, 913408015440754),
(17, '2016-02-18 00:45:51', 1455736551.65, 10201130553983670),
(18, '2016-02-18 00:55:14', 1455737114.4, 785356408235980),
(19, '2016-02-18 11:47:21', 1455776241.82, 501329306738206),
(20, '2016-02-18 12:20:01', 1455778201.48, 10201130553983670),
(21, '2016-02-18 12:50:01', 1455780001.62, 785356408235980),
(22, '2016-02-18 12:58:41', 1455780521.65, 785356408235980),
(23, '2016-02-18 15:35:30', 1455789930.47, 975004172547145),
(24, '2016-02-18 19:12:43', 1455802963.23, 501329306738206),
(25, '2016-02-18 20:34:32', 1455807872.7, 10201130553983670),
(26, '2016-02-18 21:04:34', 1455809674.9, 494334934101870),
(27, '2016-02-18 22:15:48', 1455813948.22, 1030527183673200),
(28, '2016-02-19 00:06:34', 1455820594.67, 10201130553983670),
(29, '2016-02-19 00:45:25', 1455822925.87, 457529004436550),
(30, '2016-02-19 11:49:59', 1455862799.95, 10201130553983670),
(31, '2016-02-19 21:46:23', 1455898583.29, 970486596379515),
(32, '2016-02-19 22:42:36', 1455901956.38, 876209089163458),
(33, '2016-02-19 23:51:31', 1455906091.5, 876209089163458),
(34, '2016-02-20 01:13:22', 1455911002.88, 10207769827111349),
(35, '2016-02-20 11:48:01', 1455949081.78, 10207769827111349),
(36, '2016-02-20 13:10:26', 1455954026.22, 501329306738206),
(37, '2016-02-20 13:38:35', 1455955715.5, 933153143406956),
(38, '2016-02-20 17:12:23', 1455968543.43, 749803611786748),
(39, '2016-02-20 21:24:02', 1455983642.82, 1031032510269399),
(40, '2016-02-21 00:50:26', 1455996026.67, 785356408235980),
(41, '2016-02-21 03:23:56', 1456005236.89, 785356408235980),
(42, '2016-02-21 14:03:21', 1456043601.61, 1062511613806456),
(43, '2016-02-21 15:28:17', 1456048697.07, 785356408235980),
(44, '2016-02-21 15:57:37', 1456050457.95, 1031032510269399),
(45, '2016-02-21 17:12:34', 1456054954.52, 785356408235980),
(46, '2016-02-21 18:02:53', 1456057973.47, 1425276787487379),
(47, '2016-02-21 18:31:44', 1456059704.11, 856690291109940),
(48, '2016-02-21 19:21:48', 1456062708.63, 970486596379515),
(49, '2016-02-21 20:21:35', 1456066295, 970486596379515),
(50, '2016-02-21 22:45:10', 1456074910.36, 10207769827111349);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `data` varchar(200) NOT NULL,
  `type` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `answer`, `data`, `type`) VALUES
(1, '59c64c747f9aa597e1567770421d1865', '/img/bvdkj.png', 'image'),
(2, 'ffde2dc0a2ae4a9be1de19e8de8a3675', '/audio/kjdfb.mp3', 'audio'),
(3, '1f65f18952eaf3c8aedeb7f7e2ea6cda', '/img/jhg.png', 'image'),
(4, '43cc2ab3fba3edf2227752c89d0af2d5', '/img/7ljk.png', 'image'),
(5, '1e98be0fa587a339665b6e74778dad16', '"Since time itself began at the moment of the Big Bang, it was an event that could not have been caused or created by anyone or anything."', 'text'),
(6, '84e9e12f226b6b253879a908e2c6169b', '/img/fbfdb.gif', 'image'),
(7, 'cc9ba72c701354bb72be0da1d2e9565b', '/img/dfbfdv.png', 'image'),
(8, 'bb716ba1b74cbf448fd04c20c9a44f8b', '/img/fbb.png', 'image'),
(9, '94a3e4b8fd74a8e98552d9b1cdd9b7e7', '/video/dfkj.mp4', 'video'),
(10, '94867e48717d13538289efaf7eda46f8', '/img/jfgfv.png', 'image'),
(11, 'b5700560c359a43839c8c29d29e31730', '/img/qwerr.gif', 'image'),
(12, '5bc18d19b965bfb41f10d8a2897838c9', '/img/piojt.png', 'image'),
(13, '7d636a71311b879ec0e3cd3e4cecdf33', '/audio/lkblk.mp3', 'audio'),
(14, '0fb54fe4a29284df3ebd16b1f1a58da3', '/img/flyuf.png', 'image'),
(15, '5ae18e9fea534efb18057c7bb4b0659d', '/img/hgd.png', 'image'),
(16, '5a6c45f8be715829a237a05ac36dadf3', '/img/gs.png', 'image'),
(17, '64680876959035c7743ffb292a354d8f', '"If something is important enough, even if the odds are against you, you should still do it"', 'text'),
(18, 'b6c114420a2d3219644ef582f16df247', '/img/hjcykc.png', 'image'),
(19, '907efa9911a98c4643a686b52534585a', '/img/po.png', 'image'),
(20, '3d8bff9d0d0e117301740d24c1db0ba8', '/img/plkm.png', 'image'),
(21, '78d5167ff84ccbb91fd6211cedb45667', '"If(fun is the chakravyuh or smart are the organizers) then ??"', 'text'),
(22, '0c45865fb1208f2b7dce946b7dcf6c4f', '/img/azxc.png', 'image'),
(23, 'f6cedae5af8077c186d86050078724e8', '/img/iuf.png', 'image'),
(24, 'fcfabdb510e1a2b6c8663470694c3ca3', '/img/pdhf.png', 'image'),
(25, '7d29c7b754b8ff8b1c5719aaaa3c361b', '/img/lallu.png', 'image'),
(26, 'b58144eb673e93ecce168a1e2addbd6c', '/video/xjh.mp4', 'video'),
(27, 'a3eb9c32c6c7e9d979ef5d49e05a7ccb', '/img/ivkn.png', 'image'),
(28, '1d9cefadfd2a15d78f54a7405a61a087', '/img/fgxj.png', 'image'),
(29, '71144850f4fb4cc55fc0ee6935badddf', 'I have four legs and a tail, I have no teeth, I can swim and dive underwater, I carry my house around with me.', 'text'),
(30, '202531884f474ae718feb3aef6fa3c5b', '/img/lkjh.png', 'image'),
(31, '788bc429edfb3c7116fdee6bf110120b', '/audio/uhuh.mp3', 'audio'),
(32, '03cad7fcd6c3b3866c9fc9ed6e95c8e8', '/img/ccij.png', 'image'),
(33, 'ef3e19d248a4fd23ccf809835cc1c143', 'https://www.youtube.com/watch?v=-HJodK56EsU', 'text'),
(34, '82f0be2d0b27343a5c0e840ff2738eae', '/img/asas.png', 'image'),
(35, '51159dd668b1c7be6ad9eef1effd63c9', '/img/pl[.png', 'image'),
(36, 'f5529aabf2dd74b1bba1e31cc4e9169e', '/img/56tyg.png', 'image'),
(37, '3d863b367aa379f71c7afc0c9cdca41d', '/video/2ed.mp4', 'video'),
(38, '928ceb6434c5f5c099e96742924dbf66', '/img/08hh.png', 'image'),
(39, '70b4112c1221f76027e55625d8c2d985', '/img/76vgj.png', 'image'),
(40, '55960d816645a50f5342e6f1fcb7fb10', '/audio/4gjh.mp3', 'audio'),
(41, '39a6be466d3bef1753dc1ad5260e8529', '/video/3jnj.mp4', 'video'),
(42, 'e5452658100a4b3b1b38f50be35b225c', '/img/098nh.png', 'image'),
(43, '08d5ef14025f2e7397f04b528d8bac59', '/video/5kg.mp4', 'video'),
(44, 'ca972b32142bfaa3cc7ba0dcaf8e8677', '/img/2nj.png', 'image'),
(45, '14139154d22063b0855366da3b2828ee', '/video/5fjkk.mp4', 'video'),
(46, '49a501f4471ef38aa1cf1cec62754d81', '/img/4ppp.png', 'image'),
(47, 'ce092c45b0b4ce7713c6274b330ab3e3', '/audio/6dxdx.mp3', 'audio'),
(48, 'f0bcb882f7dd988af76a9abfbe569c7a', '/video/0jlj.mp4', 'video'),
(49, '15186ea0f4bf1909666d2d6041555866', '/video/0koko.mp4', 'video'),
(50, 'd6615aeac1752bfc4ae2a5e07287f9f1', '/img/67bmjb.png', 'image');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `picture_url` varchar(400) NOT NULL,
  `blocked` bit(1) NOT NULL DEFAULT b'0',
  `level` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `level_update_time` datetime NOT NULL,
  `level_update_time_micro` double NOT NULL,
  `last_hint_time` datetime NOT NULL,
  `next_hint` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `picture_url`, `blocked`, `level`, `points`, `level_update_time`, `level_update_time_micro`, `last_hint_time`, `next_hint`) VALUES
(2699061193462, 'Yogesh Patil', 'ye_patil@yahoo.com', 'https%3A%2F%2Ffbcdn-profile-a.akamaihd.net%2Fhprofile-ak-xal1%2Fv%2Ft1.0-1%2Fc8.0.50.50%2Fp50x50%2F10359403_2526895129418_6532368325717079666_n.jpg%3Foh%3De5f23333214ea048da4d2e94fbd0b2c6%26oe%3D57711DBA%26__gda__%3D1466409448_830ab9486c62764d94d645d0de73250d', b'0', 51, 429, '2016-02-21 23:05:35', 1456076135.76, '2016-02-21 23:05:35', 1),

-- --------------------------------------------------------

--
-- Table structure for table `userattempt`
--

CREATE TABLE IF NOT EXISTS `userattempt` (
  `user_id` bigint(20) NOT NULL,
  `level` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `last_five_attempts` varchar(200) NOT NULL,
  PRIMARY KEY (`user_id`,`level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userattempt`
--

INSERT INTO `userattempt` (`user_id`, `level`, `count`, `last_five_attempts`) VALUES
(2699061193462, 1, 1, 'chakravyuh'),
(2699061193462, 2, 18, 'babulsupriyo||babulsupriyabaral||babulsupriyabaral||mukundpur-shivvihar||mukundpurshivvihar'),

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
