INSERT INTO Person(FullName,Age,Email) VALUES ('Fizuli Nerimanli',25,'fizuli@mail.ru')
INSERT INTO Person(FullName,Age,Email) VALUES ('Gultac Baxiszade',17,'gultac@mail.ru')
INSERT INTO Person(FullName,Age,Email) VALUES ('Mircefer Rzayev',15,'Mircefer@mail.ru')
INSERT INTO Person(FullName,Age,Email) VALUES ('Naila Khalfaguliyeva',20,'naila@mail.ru')



INSERT INTO TelegramAccount (Login,Password,PersonId) VALUES ('fizi','123456',1)
INSERT INTO TelegramAccount (Login,Password,PersonId) VALUES ('gulbax','456789',2)
INSERT INTO TelegramAccount (Login,Password,PersonId) VALUES ('mirirza','852354',3)
INSERT INTO TelegramAccount (Login,Password,PersonId) VALUES ('fizi','123456',4)
INSERT INTO TelegramAccount (Login,Password,PersonId) VALUES ('fizi','123456',NULL)


INSERT INTO [Group] (Name) Values ('ArchiveCsharpGroup')
INSERT INTO [Group] (Name) Values ('CsharpGroup05')

INSERT INTO AccountInGroup(AcoountId,GroupId) VALUES(1,2)
INSERT INTO AccountInGroup(AcoountId,GroupId) VALUES(1,1)
INSERT INTO AccountInGroup(AcoountId,GroupId) VALUES(5,2)
INSERT INTO AccountInGroup(AcoountId,GroupId) VALUES(6,1)
INSERT INTO AccountInGroup(AcoountId,GroupId) VALUES(7,1)


INSERT INTO Message(AcountSender,AcountRecipent,[Text]) VALUES (1,7,'Hi how are you?')
INSERT INTO Message(AcountSender,AcountRecipent,[Text]) VALUES (7,1,'Hi,I am fine and you ?')
INSERT INTO Message(AcountSender,AcountRecipent,[Text]) VALUES (6,5,'SALAM')
INSERT INTO Message(AcountSender,AcountRecipent,[Text]) VALUES (5,6,'ALEYKUM Salam')
SELECT *
FROM Person

SELECT *
FROM TelegramAccount


SELECT *
FROM [Group]

select *
from AccountInGroup


select Person.*,Login,Password
from  Person,TelegramAccount
WHERE TelegramAccount.PersonId = Person.Id 


SELECT Message.Text,TelegramAccount.[Login]
FROM Message,TelegramAccount
WHERE Message.AcountSender = TelegramAccount.Id and Message.AcountRecipent = TelegramAccount.Id

select Message.Text,TelegramAccount.Login
from Message,TelegramAccount
WHERE Message.AcountRecipent = 7 AND TelegramAccount.Id = 7


select Message.Text,TelegramAccount.Login
from Message,TelegramAccount
WHERE Message.AcountRecipent = 1 AND TelegramAccount.Id = 1

SELECT Message.Text
FROM Message
INNER JOIN TelegramAccount ON TelegramAccount.Id = Message.AcountSender  AS T
inner join TelegramAccount ON TelegramAccount.Id =Message.AcountRecipent AS Z

SELECT *
FROM TelegramAccount

SELECT *
FROM Message
RIGHT JOIN TelegramAccount ON TelegramAccount.Id = Message.AcountRecipent

SELECT *
FROM Message
INNER JOIN TelegramAccount ON TelegramAccount.Id = Message.AcountSender


--(
--    SELECT Message.AcountSender AS MessageId, TelegramAccount.Id AS TelegramAccountId , TelegramAccount.Login as nm , Message.Text as txt
--    FROM Message, TelegramAccount
--    WHERE Message.AcountRecipent = TelegramAccount.Id AND TelegramAccount.Id = TelegramAccount.Id
--	) AS main
