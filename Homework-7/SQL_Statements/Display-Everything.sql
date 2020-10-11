
SELECT * FROM Users
INNER JOIN UserLoot ON Users.userID = UserLoot.UserID


Select skinname from Users
left outer join  UserSkins ON Users.userID = UserSkins.userID
left outer join  Skins ON Skins.skinID = UserSkins.skinID
where users.userid=1