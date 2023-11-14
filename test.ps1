wmic UserAccount where name='User' set Passwordexpires=true

net user "User" /logonpasswordchg:yes
