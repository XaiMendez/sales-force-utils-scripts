User u = [SELECT Id, IsActive FROM User WHERE username LIKE '%guestadmin%'];
u.isActive = False;
update u;
System.debug(u);
