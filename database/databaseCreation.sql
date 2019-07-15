
CREATE TABLE IF NOT EXISTS User (
  Id INTEGER PRIMARY KEY AUTOINCREMENT,
  UserName varchar(64) UNIQUE,
  FirstName varchar(64) NOT NULL,
  LastName varchar(64) NOT NULL,
  TimeStamp datetime DEFAULT CURRENT_TIMESTAMP,
  Signature varchar(128),
  SoftDelete BOOLEAN DEFAULT 0,
  IsAdmin BOOLEAN NOT NULL DEFAULT 0
 );


INSERT INTO User (UserName, FirstName, LastName, TimeStamp, Signature, SoftDelete, IsAdmin) VALUES
('user1@user.com', 'UserOneFirstName', 'UserOneLastName', '2019-07-11 14:46:55', "", '0', '0'),
('user2@user.com', 'UserTwoFirstName', 'UserTwoLastName', '2019-07-11 14:46:55', "", '0', '0'),
('user3@user.com', 'UserThreeFirstName', 'UserThreeLastName', '2019-07-11 14:46:55', "", '0', '0'),
('admin1@admin.com', 'AdminOneFirstName', 'AdminOneLastName', '2019-07-11 14:46:55', "", '0', '1'),
('admin2@admin.com', 'AdminTwoLastName', 'AdminTwoLastName', '2019-07-11 14:46:55', "", '0', '1');


CREATE TABLE IF NOT EXISTS Award (
  Id 	INTEGER PRIMARY KEY AUTOINCREMENT,
  TypeOfAward 	varchar(64) NOT NULL,
  NameOfAwardee varchar(64) NOT NULL,
  EmailAddress 	varchar(64) NOT NULL,
  DateTimeAward datetime 	NOT NULL,
  Department 	varchar(64) NOT NULL,
  UserName 		varchar(64) NOT NULL,
  SoftDelete 	BOOLEAN 	DEFAULT 0,
  FOREIGN KEY(username) REFERENCES user(username)
);

  
INSERT INTO Award (TypeOfAward, NameOfAwardee, EmailAddress, DateTimeAward, Department, UserName, SoftDelete) VALUES
('EmployeeOfMonth', 'Bob Smith', '', '2019-07-01 17:47:56', 'Sales', 'user1@user.com', 0),
('EmployeeOfWeek', 'Jane Doe', 'jane@doe.com', '2019-07-11 17:47:52', 'Engineering', 'user2@user.com', 0);
  
