#Get AD User Info
Get-ADUser -Identity [USER] -Properties CanonicalName, SID, Enabled, LastLogonDate, Created, LockedOut, LastBadPasswordAttempt
