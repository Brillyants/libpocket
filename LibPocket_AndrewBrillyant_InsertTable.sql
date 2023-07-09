USE libpocket;

INSERT INTO tblCategories VALUES ('C001', 'Education');
INSERT INTO tblCategories VALUES ('C002', 'Entertainment');
INSERT INTO tblCategories VALUES ('C003', 'Journal');

INSERT INTO tblAuthor VALUES ('AU001', 'Kane Ashari');
INSERT INTO tblAuthor VALUES ('AU002', 'Husein Ahmad');
INSERT INTO tblAuthor VALUES ('AU003', 'Tere Liye');
INSERT INTO tblAuthor VALUES ('AU004', 'Joko Anwar');
INSERT INTO tblAuthor VALUES ('AU005', 'Anas Saphira');
INSERT INTO tblAuthor VALUES ('AU006', 'Hana Hira');
INSERT INTO tblAuthor VALUES ('AU007', 'Gandhi Bandi');
INSERT INTO tblAuthor VALUES ('AU008', 'Andrea Hirata');
INSERT INTO tblAuthor VALUES ('AU009', 'Ahmad Tohari');
INSERT INTO tblAuthor VALUES ('AU010', 'Pramoedya Ananta Toer');

INSERT INTO tblPublisher VALUES ('PB001', 'Gramedia Books');
INSERT INTO tblPublisher VALUES ('PB002', 'Erlangga');
INSERT INTO tblPublisher VALUES ('PB003', 'Mizan Pustaka');
INSERT INTO tblPublisher VALUES ('PB004', 'Republika');
INSERT INTO tblPublisher VALUES ('PB005', 'Bentang Pustaka');
INSERT INTO tblPublisher VALUES ('PB006', 'Elexmedia Komputindo');

INSERT INTO tblClass VALUES ('CL001', '7A');
INSERT INTO tblClass VALUES ('CL002', '7B');
INSERT INTO tblClass VALUES ('CL003', '7C');
INSERT INTO tblClass VALUES ('CL004', '8A');
INSERT INTO tblClass VALUES ('CL005', '8B');
INSERT INTO tblClass VALUES ('CL006', '8C');
INSERT INTO tblClass VALUES ('CL007', '9A');
INSERT INTO tblClass VALUES ('CL008', '9B');
INSERT INTO tblClass VALUES ('CL009', '9C');
INSERT INTO tblClass VALUES ('CL010', '10A');
INSERT INTO tblClass VALUES ('CL011', '10B');
INSERT INTO tblClass VALUES ('CL012', '10C');
INSERT INTO tblClass VALUES ('CL013', '11A');
INSERT INTO tblClass VALUES ('CL014', '11B');
INSERT INTO tblClass VALUES ('CL015', '11C');
INSERT INTO tblClass VALUES ('CL016', '12A');
INSERT INTO tblClass VALUES ('CL017', '12B');
INSERT INTO tblClass VALUES ('CL018', '12C');

INSERT INTO tblMember VALUES('M001', 'Andrew Brillyant', 'andrewbrillyant', 'andrew@gmail.com', 'CL013', 'Jalan Mawar no 12', 'http://localhost/perpustakaan/user/avatar/andrew.png', 'password123', '11/21/2021');
INSERT INTO tblMember VALUES('M002', 'Katherine Allen Lius', 'katherineallen', 'katherine@gmail.com', 'CL012', 'Jalan Melati no 13', 'http://localhost/perpustakaan/user/avatar/katherine.png', 'password124', '9/12/2021');
INSERT INTO tblMember VALUES('M003', 'Kevin', 'kevin', 'kevin@gmail.com', 'CL011', 'Jalan Perak no 19', 'http://localhost/perpustakaan/user/avatar/kevin.png', 'password125', '5/20/2021');
INSERT INTO tblMember VALUES('M004', 'Reinhard', 'reinhard', 'reinhard@gmail.com', 'CL002', 'Jalan Kencana no 21', 'http://localhost/perpustakaan/user/avatar/reinhard.png', 'password126', '1/11/2021');
INSERT INTO tblMember VALUES('M005', 'Theresia Cindana', 'theresiacindana', 'theresia@gmail.com', 'CL006', 'Jalan Palem no 11', 'http://localhost/perpustakaan/user/avatar/theresia.png', 'password127', '3/7/2021');
INSERT INTO tblMember VALUES('M006', 'Tralya Dharmada', 'tralyadharmada', 'tralya@gmail.com', 'CL010', 'Jalan Permata no 52', 'http://localhost/perpustakaan/user/avatar/tralya.png', 'password128', '11/22/2021');
INSERT INTO tblMember VALUES('M007', 'Lia Leigh', 'lialeigh', 'lia@gmail.com', 'CL013', 'Jalan Lestari no 77', 'http://localhost/perpustakaan/user/avatar/lia.png', 'password129', '12/12/2021');
INSERT INTO tblMember VALUES('M008', 'Elijah Stamp', 'elijahstamp', 'elijah@gmail.com', 'CL017', 'Jalan Priuk no 8', 'http://localhost/perpustakaan/user/avatar/elijah.png', 'password130', '3/28/2021');
INSERT INTO tblMember VALUES('M009', 'Meredith Ingram', 'meredithingram', 'meredith@gmail.com', 'CL009', 'Jalan Anggrek no 9', 'http://localhost/perpustakaan/user/avatar/meredith.png', 'password131', '8/17/2021');
INSERT INTO tblMember VALUES('M010', 'Naima Ortega', 'naimaortega', 'naima@gmail.com', 'CL012', 'Jalan Jingga no 1', 'http://localhost/perpustakaan/user/avatar/naima.png', 'password132', '10/30/2021');

INSERT INTO tblAdmin VALUES ('A001', 'Kalem Cooper', 'kalemcooper', 'kalem@gmail.com', 'abc123def');
INSERT INTO tblAdmin VALUES ('A002', 'Valentino', 'valentino', 'valentino@gmail.com', 'abc456def');
INSERT INTO tblAdmin VALUES ('A003', 'Salma Halim', 'salmahalim', 'salma@gmail.com', 'abc789def');
INSERT INTO tblAdmin VALUES ('A004', 'Sandra Mandiri', 'sandramandiri', 'sandra@gmail.com', 'def123ghi');
INSERT INTO tblAdmin VALUES ('A005', 'James Kelvin', 'jameskelvin', 'james@gmail.com', 'def456ghi');
INSERT INTO tblAdmin VALUES ('A006', 'Jason Christian', 'jasonchristian', 'jason@gmail.com', 'def789ghi');
INSERT INTO tblAdmin VALUES ('A007', 'Ratna Adira', 'ratnaadira', 'ratna@gmail.com', 'ghi123jkl');
INSERT INTO tblAdmin VALUES ('A008', 'Edi Wijaya', 'ediwijaya', 'edi@gmail.com', 'ghi456jkl');
INSERT INTO tblAdmin VALUES ('A009', 'Meliska Adam', 'meliskaadam', 'meliska@gmail.com', 'ghi789jkl');
INSERT INTO tblAdmin VALUES ('A010', 'Priscilla Mena', 'priscilamena', 'priscila@gmail.com', 'mno123pqr');

INSERT INTO tblBook VALUES ('B001', 'AU001', 'PB001', 'C001', 'The Maths', 'http://localhost/perpustakaan/book/cover/themaths.png', '10/10/2018');
INSERT INTO tblBook VALUES ('B002', 'AU002', 'PB002', 'C001', 'Biology for Life','http://localhost/perpustakaan/book/cover/biologyforlife.png',  '11/20/2017');
INSERT INTO tblBook VALUES ('B003', 'AU003', 'PB003', 'C002', 'Love Story', 'http://localhost/perpustakaan/book/cover/lovestory.png', '10/8/2018');
INSERT INTO tblBook VALUES ('B004', 'AU004', 'PB004', 'C002', 'Cerita SMA', 'http://localhost/perpustakaan/book/cover/ceritasma.png', '8/5/2018');
INSERT INTO tblBook VALUES ('B005', 'AU005', 'PB001', 'C003', 'Jurnal Manajemen Teknologi', 'http://localhost/perpustakaan/book/cover/jurnalmanajementeknologi.png', '9/7/2018');
INSERT INTO tblBook VALUES ('B006', 'AU006', 'PB005', 'C003', 'Jurnal Matrix', 'http://localhost/perpustakaan/book/cover/jurnalmatrix.png', '10/9/2018');
INSERT INTO tblBook VALUES ('B007', 'AU007', 'PB006', 'C001', 'The Life of Snake', 'http://localhost/perpustakaan/book/cover/thelifeofsnake.png', '9/10/2019');
INSERT INTO tblBook VALUES ('B008', 'AU008', 'PB002', 'C002', 'Laskar Pelangi', 'http://localhost/perpustakaan/book/cover/laskarpelangi.png', '8/10/2018');
INSERT INTO tblBook VALUES ('B009', 'AU009', 'PB002', 'C002', 'Ronggeng Dukuh Paruk', 'http://localhost/perpustakaan/book/cover/ronggengdukuhparuh.png', '9/12/2017');
INSERT INTO tblBook VALUES ('B010', 'AU010', 'PB006', 'C001', 'Membangun Kelas', 'http://localhost/perpustakaan/book/cover/membangunkelas.png', '10/12/2018');

INSERT INTO tblBookLoansHeader VALUES ('BL001', 'B003', 'M005', 'A002');
INSERT INTO tblBookLoansHeader VALUES ('BL002', 'B003', 'M007', 'A001');
INSERT INTO tblBookLoansHeader VALUES ('BL003', 'B003', 'M010', 'A005');
INSERT INTO tblBookLoansHeader VALUES ('BL004', 'B003', 'M001', 'A007');
INSERT INTO tblBookLoansHeader VALUES ('BL005', 'B007', 'M001', 'A003');
INSERT INTO tblBookLoansHeader VALUES ('BL006', 'B007', 'M003', 'A006');
INSERT INTO tblBookLoansHeader VALUES ('BL007', 'B007', 'M004', 'A010');
INSERT INTO tblBookLoansHeader VALUES ('BL008', 'B007', 'M009', 'A009');

INSERT INTO tblBookLoansDetail VALUES ('BL001', '9/20/2021', 7, 1, 1, '9/27/2021');
INSERT INTO tblBookLoansDetail VALUES ('BL002', '10/15/2021', 7, 1, 1, '10/22/2021');
INSERT INTO tblBookLoansDetail VALUES ('BL003', '11/1/2021', 7, 1, 1, '11/8/2021');
INSERT INTO tblBookLoansDetail VALUES ('BL004', '11/18/2021', 7, 1, 1, '11/27/2021');
INSERT INTO tblBookLoansDetail VALUES ('BL005', '10/1/2021', 7, 1, 1, '10/8/2021');
INSERT INTO tblBookLoansDetail VALUES ('BL006', '10/10/2021', 7, 1, 1, '10/17/2021');
INSERT INTO tblBookLoansDetail VALUES ('BL007', '11/4/2021', 7, 1, 1, '11/11/2021');
INSERT INTO tblBookLoansDetail VALUES ('BL008', '11/16/2021', 7, 1, 1, '11/27/2021');

INSERT INTO tblPenalty VALUES ('BL004', '10000', 0);
INSERT INTO tblPenalty VALUES ('BL008', '20000', 0);