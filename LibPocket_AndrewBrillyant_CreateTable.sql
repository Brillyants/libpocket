USE libpocket;

CREATE TABLE tblCategories (
    CategoryID char(5),
    CategoryName varchar(50),
	PRIMARY KEY (CategoryID)
);

CREATE TABLE tblAuthor (
	AuthorID char(5),
	AuthorName varchar(50),
	PRIMARY KEY (AuthorID)
);

CREATE TABLE tblPublisher (
	PublisherID char(5),
	PublisherName varchar(50),
	PRIMARY KEY (PublisherID)
);

CREATE TABLE tblClass (
	ClassID char(5),
	ClassName varchar(5),
	PRIMARY KEY (ClassID)
);

CREATE TABLE tblMember (
    MemberID char(5),
    MemberName varchar(50),
	MemberUsername varchar(100),
	MemberEmail varchar(100),
	ClassID char(5),
	MemberAddress varchar(150),
	AvatarUrl varchar(100),
	MemberPassword varchar(50),
	MemberRegisteredDate date,
	PRIMARY KEY (MemberID),
	FOREIGN KEY (ClassID) REFERENCES tblClass(ClassID)
);

CREATE TABLE tblAdmin (
    AdminID char(5),
    AdminName varchar(50),
	AdminUsername varchar(100),
	AdminEmail varchar(100),
	AdminPassword varchar(50),
	PRIMARY KEY (AdminID)
);

CREATE TABLE tblBook (
    BookID char(5),
	AuthorID char(5),
	PublisherID char(5),
	CategoryID char(5),
	Title varchar(50),
	CoverUrl varchar(100),
	BookRegisteredDate date,
	PRIMARY KEY (BookID),
	FOREIGN KEY (AuthorID) REFERENCES tblAuthor(AuthorID),
	FOREIGN KEY (PublisherID) REFERENCES tblPublisher(PublisherID),
	FOREIGN KEY (CategoryID) REFERENCES tblCategories(CategoryID)
);

CREATE TABLE tblBookLoansHeader (
    BookLoansID char(5),
    BookID char(5),
    MemberID char(5),
    AdminID char(5),
	PRIMARY KEY (BookLoansID),
	FOREIGN KEY (BookID) REFERENCES tblBook(BookID),
	FOREIGN KEY (MemberID) REFERENCES tblMember(MemberID),
	FOREIGN KEY (AdminID) REFERENCES tblAdmin(AdminID)
);

CREATE TABLE tblBookLoansDetail (
    BookLoansID char(5),
	DateTaken date,
	Days int,
	IsReturned bit,
	ApprovalStatus bit,
	DateReturn date,
	PRIMARY KEY (BookLoansID),
	FOREIGN KEY (BookLoansID) REFERENCES tblBookLoansHeader(BookLoansID)
);

CREATE TABLE tblPenalty (
    BookLoansID char(5),
	TotalPenalty int,
	IsPaid bit,
	PRIMARY KEY (BookLoansID),
    FOREIGN KEY (BookLoansID) REFERENCES tblBookLoansHeader(BookLoansID)
);

