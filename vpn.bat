REG ADD HKLM\SYSTEM\CurrentControlSet\Services\PolicyAgent /v AssumeUDPEncapsulationContextOnSendRule /t REG_DWORD /d 0x2 /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Services\RasMan\Parameters /v ProhibitIpSec /t REG_DWORD /d 0x0 /f
powershell.exe Add-VpnConnection -Name "KevinVPN" -ServerAddress "52.15.118.61" -TunnelType "L2tp" -EncryptionLevel "Optional" -AuthenticationMethod CHAP -SplitTunneling -L2tpPsk "KevinQHuang.com" -Force -RememberCredential -PassThru
set /p DUMMY=Hit Enter to continue...