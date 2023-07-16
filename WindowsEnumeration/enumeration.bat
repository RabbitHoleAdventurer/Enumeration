echo: >> enum.txt
echo: >> enum.txt
echo: >> enum.txt
echo: >> enum.txt
echo: >> enum.txt
echo: >> enum.txt

echo "START OF A NEW RUN" >> enum.txt
echo %date% %time% >> enum.txt
echo: >> enum.txt
echo: >> enum.txt

echo "#### Domain Users Info #### " >> enum.txt
net user /domain >> enum.txt
echo: >> enum.txt
echo: >> enum.txt

echo "#### Domain Group Info #### " >> enum.txt
net group /domain >> enum.txt
echo: >> enum.txt
echo: >> enum.txt

echo "#### Domain Administrators #### " >> enum.txt
net group "Domain Admins" /domain >> enum.txt
echo: >> enum.txt
echo: >> enum.txt

echo "#### Enterprise Administrators #### " >> enum.txt
net group "Enterprise Admins" /domain >> enum.txt
echo: >> enum.txt
echo: >> enum.txt

echo "#### Domain Info #### " >> enum.txt
echo %USERDOMAIN% >> enum.txt
echo %USERDNSDOMAIN% >> enum.txt
echo: >> enum.txt
echo: >> enum.txt

echo "#### Services Running #### " >> enum.txt
net start >> enum.txt
echo: >> enum.txt
echo: >> enum.txt

echo "#### Password Policy #### " >> enum.txt
net accounts >> enum.txt
echo: >> enum.txt
echo: >> enum.txt

echo "#### List Workstations #### " >> enum.txt
net group "Domain Computers" /domain >> enum.txt
echo: >> enum.txt
echo: >> enum.txt

echo "#### List Domain Controllers in Domain #### " >> enum.txt
net group "Domain Controllers" /domain >> enum.txt
echo: >> enum.txt
echo: >> enum.txt

echo "#### List Applications #### " >> enum.txt
wmic product get description,installdate,installlocation,installstate,vendor,version >> enum.txt
echo: >> enum.txt
echo: >> enum.txt

echo "#### System patch level #### " >> enum.txt
systeminfo >> enum.txt
echo: >> enum.txt
echo: >> enum.txt
