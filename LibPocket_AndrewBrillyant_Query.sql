USE libpocket;

-- Query

/* 1. Jika ingin menampilkan judul, penerbit dan kategori dari buku
yang berjudul ‘Laskar Pelangi’ dan informasi diambil dari tiga tabel yang berbeda.
*/

select c.Title ,a.PublisherName, b.CategoryName
from tblBook c join tblPublisher a on c.PublisherID = a.PublisherID
join tblCategories b on b.CategoryID = c.CategoryID
where c.Title = 'Laskar Pelangi'

/* 2. Jika ingin menampilkan AuthorID, judul buku, dan tanggal registrasi buku
ketika masuk ke perpustakaan jika nama penulis dari buku adalah “Tere Liye”.
*/

select a.AuthorID,  a.Title, a.BookRegisteredDate
from tblBook a
join tblAuthor b on b.AuthorID = a.AuthorID
Where b.AuthorName = 'Tere Liye'

/* 3. Jika ingin menampilkan judul buku yang dipinjam, nama peminjam/member,
kelas member, tanggal peminjaman dan kode peminjamanan, jika tanggal buku diambil
untuk dipinjam adalah: 2021-10-10
*/

select a.MemberName, b.ClassName, c.BookLoansID, d.DateTaken, e.Title
from tblMember a join tblClass b on a.ClassID = b.ClassID
join tblBookLoansHeader c on c.MemberID = a.MemberID
join tblBookLoansDetail d on d.BookLoansID = c.BookLoansID
join tblBook e on c.BookID = e.BookID
where d.DateTaken = '2021-10-10' 

/* 4. Jika ingin membuat view untuk menampilkan DateTaken (dengan format ‘dd mon yyyy’),
AdminName, dan MemberName dimana admin yang melayani bernama ‘Kalem Cooper’, lalu
tampilkan view tersebut.
*/

CREATE VIEW ViewDateKalemCooper AS
SELECT CONVERT(VARCHAR, a.DateTaken, 13) AS DateTaken, b.AdminName, c.MemberName
FROM tblBookLoansDetail as a, tblAdmin as b, tblMember as c, tblBookLoansHeader as d
WHERE d.BookLoansID = a.BookLoansID AND c.MemberID = d.MemberID AND b.AdminName = 'Kalem Cooper'

SELECT * FROM ViewDateKalemCooper

/* 5. Jika ingin menampilkan BookLoansID, BookID, Title DateID yang peminjamannya
terjadi di antara 4 November 2021 hingga 17 November 2021
*/

SELECT a.BookLoansID, b.BookID, c.title, a.DateTaken
FROM tblBookLoansDetail  a JOIN tblBookLoansHeader b on a.BookLoansID = b.BookLoansID
join tblBook c on c.BookID = b.BookID
WHERE MONTH(a.DateTaken) = '11' AND DAY(a.DateTaken) BETWEEN '4' and '17'

/* 6. Jika ingin menampilkan BookID, Title, CategoryName, dan LoansCount
(diperoleh dari jumlah peminjaman BookID pada BookLoans)
*/

SELECT a.BookID, b.Title, COUNT(a.BookID) as LoansCount
FROM tblBookLoansHeader as a, tblBook as b, tblCategories as c  
WHERE a.BookID = b.BookID AND b.CategoryID = c.CategoryID
GROUP BY a.BookID, b.Title;

/* 7. Jika ingin menampilkan MemberID, MemberName, TotalPenalty dimana
member tersebut belum membayar hutang denda keterlambatan pengembalian buku.
*/

SELECT a.MemberID, a.MemberName, c.TotalPenalty, c.IsPaid
FROM tblMember as a, tblBookLoansHeader as b, tblPenalty as c
WHERE a.MemberID = b.MemberID AND b.BookLoansID = c.BookLoansID AND c.IsPaid = 0

/* 8. Jika ingin menampilkan MemberName, Title, dan IsReturned dimana
member tersebut sudah mengembalikan buku yang dipinjam.
*/

SELECT a.MemberName, b.Title, d.IsReturned
FROM tblMember as a, tblBook as b, tblBookLoansHeader as c, tblBookLoansDetail as d
WHERE a.MemberID = c.MemberID AND b.BookID = c.BookID AND c.BookLoansID = d.BookLoansID
AND d.IsReturned = 1

/* 9. Jika ingin menampilkan BookID, Title, dan PublisherName dimana
publisher adalah “Erlangga”.
*/

SELECT BookID, Title, PublisherName
FROM tblBook as a, tblPublisher as b
WHERE a.PublisherID = b.PublisherID AND b.PublisherName = 'Erlangga'

/* 10. Jika ingin menampilkan BookID, Title dengan category ‘Education’
*/

SELECT BookID, Title, CategoryName
FROM tblBook as a, tblCategories as b 
WHERE a.CategoryID = b.CategoryID AND b.CategoryName = 'Education'

/* 11. Jika ingin menampilkan MemberName, Title yang meminjam
buku berjudul ‘The Life of Snake’ 
*/

SELECT MemberName, Title
FROM tblMember as a, tblBookLoansHeader as b, tblBook as c
WHERE a.MemberID = b.MemberID AND b.BookID = c.BookID AND c.Title = 'The Life of Snake'

/* 12. Jika ingin menampilkan Member ID, MemberName, Book Title, dan Total
Penalty di mana totalpenalty > 20000
*/

SELECT c.MemberID, a.MemberName, b.Title, d.TotalPenalty
FROM tblMember a JOIN tblBookLoansHeader c on a.memberID = c.memberID
Join  tblBook b on b.BookID = c.BookID
join tblPenalty d on d.BookLoansID = c.BookLoansID
WHERE TotalPenalty > '10000';

/* 13. Jika ingin menampilkan AdminName, Title, dan Date
Taken di mana nama admin di awali dengan huruf J
*/

SELECT a.AdminName, c.Title, d.DateTaken
FROM tblAdmin a join tblBookLoansHeader b on a.AdminID = b.AdminID
join tblBookLoansDetail d on d.BookLoansID = b.BookLoansID
join tblBook c on c.BookID = b.BookID
WHERE a.AdminName LIKE '%J%'

/* 14. Jika ingin membuat index pada primary key MemberID
*/

CREATE INDEX idx_Member on tblMember (MemberID)
SELECT * FROM tblMember WHERE MemberID = 'M001'

/* 15. Jika ingin membuat cursor untuk mengambil data Admin
*/

declare Admin cursor
for select AdminID, AdminName, AdminUsername, AdminEmail from tblAdmin

Open Admin

declare @AdminID char(5)
declare @AdminName varchar(100)
declare @AdminUsername varchar(100)
declare @AdminEmail varchar(100)

fetch next from Admin into @AdminID, @AdminName, @AdminUsername, @AdminEmail
print 'AdminID   '+'AdminName   '+'AdminUsername   '+'AdminEmail   '

while @@fetch_status = 0
begin
print @AdminID+'   '+@AdminName +'   '+@AdminUsername+'   '+@AdminEmail+'   '
fetch next from Admin into @AdminID, @AdminName, @AdminUsername, @AdminEmail
end

--Menutup Cursor
close Admin


/* 16. Jika ingin membuat procedure untuk mengambil data Member
*/

CREATE PROCEDURE getMember
AS
SELECT * FROM tblMember
GO;

EXEC getMember

/* 17. Jika ingin menampilkan nama member, judul buku, tanggal registrasi member
(dengan format ‘yyyy.mm.dd’) dimana kategori buku yang dipinjam bukan 'education'.
*/

SELECT a.MemberName, c.Title, CONVERT(VARCHAR(11), a.MemberRegisteredDate, 102) as MemberRegisteredDate
FROM tblMember as a, tblBookLoansHeader as b, tblBook as c, tblCategories as d
WHERE EXISTS (SELECT CategoryName FROM tblCategories WHERE
a.MemberID = b.MemberID AND c.BookID = b.BookID AND c.CategoryID = d.CategoryID AND
d.CategoryName IN (SELECT CategoryName FROM tblCategories WHERE CategoryName != 'Education'))

/* 17. Jika ingin membuat trigger yang dapat memasukkan histori peminjaman buku ke
tabel TblBookLoansHeader yang lainnya'.
*/

CREATE TABLE tblBookLoansHeader2 (
    BookLoansID char(5),
    BookID char(5),
    MemberID char(5),
    AdminID char(5),
	PRIMARY KEY (BookLoansID),
	FOREIGN KEY (BookID) REFERENCES tblBook(BookID),
	FOREIGN KEY (MemberID) REFERENCES tblMember(MemberID),
	FOREIGN KEY (AdminID) REFERENCES tblAdmin(AdminID)
);

CREATE TRIGGER triggerBookLoans
ON tblBookLoansHeader
FOR INSERT
AS
DECLARE @BookLoansID char(5), @BookID char(5), @MemberID char(5), @AdminID char(5)
SELECT @BookLoansID = BookLoansID, @BookID = BookID, @MemberID = MemberID, @AdminID = AdminID FROM inserted
PRINT 'Record : BookLoansID = ' + @BookLoansID + ', Book ID = ' + @BookID + ', Member ID = ' + @MemberID + ', Admin ID = ' + @AdminID
INSERT INTO tblBookLoansHeader2 VALUES (@BookLoansID, @BookID, @MemberID, @AdminID)

INSERT INTO tblBookLoansHeader VALUES('BL009', 'B001', 'M001', 'A010')
INSERT INTO tblBookLoansHeader VALUES('BL010', 'B004', 'M003', 'A002')

SELECT * FROM tblBookLoansHeader
SELECT * FROM tblBookLoansHeader2


