# This is pretty self explanatory so if you dont understand what this does you shouldnt even be looking at the code in the first place lmao
    secedit /export /cfg c:\secpol.cfg
    (gc C:\secpol.cfg).replace("PasswordComplexity = 1", "PasswordComplexity = 0") | Out-File C:\secpol.cfg
    secedit /configure /db c:\windows\security\local.sdb /cfg c:\secpol.cfg /areas SECURITYPOLICY
    rm -force c:\secpol.cfg -confirm:$false