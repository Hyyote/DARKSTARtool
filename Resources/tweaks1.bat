ECHO Network tweaks, takes time...
NETSH winsock reset
NETSH interface teredo set state disabled
NETSH interface 6to4 set state disabled
NETSH int isatap set state disable
NETSH int ip set global neighborcachelimit=4096
NETSH int ip set global taskoffload=disabled
NETSH int ip set global loopbackworkercount = %NUMBER_OF_PROCESSORS%
NETSH int tcp set global autotuninglevel=disable
NETSH int tcp set global chimney=disabled
NETSH int tcp set global dca=enabled
NETSH int tcp set global ecncapability=disabled
NETSH int tcp set global netdma=enabled
NETSH int tcp set global nonsackrttresiliency=disabled
NETSH int tcp set global rsc=disabled
NETSH int tcp set global rss=enabled
NETSH int tcp set global timestamps=disabled
NETSH int tcp set heuristics disabled
NETSH int tcp set security mpp=disabled
NETSH int tcp set security profiles=disabled
NETSH int tcp set global initialRto=3000
NETSH int tcp set global maxsynretransmissions=2
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*EncapsulatedPacketTaskOffloadNvgre" /t REG_SZ /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*EncapsulatedPacketTaskOffloadVxlan" /t REG_SZ /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*EncapsulatedPacketTaskOffload" /t REG_SZ /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*IPChecksumOffloadIPv4" /t REG_SZ /d "3" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*LsoV1IPv4" /t REG_SZ /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*LsoV2IPv4" /t REG_SZ /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*LsoV2IPv6" /t REG_SZ /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*TCPChecksumOffloadIPv4" /t REG_SZ /d "3" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*TCPChecksumOffloadIPv6" /t REG_SZ /d "3" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*UDPChecksumOffloadIPv4" /t REG_SZ /d "3" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*UDPChecksumOffloadIPv6" /t REG_SZ /d "3" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*IPsecOffloadV1IPv4" /t REG_SZ /d "3" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*IPsecOffloadV2" /t REG_SZ /d "3" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*IPsecOffloadV2IPv4" /t REG_SZ /d "3" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*TCPConnectionOffloadIPv4" /t REG_SZ /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*TCPConnectionOffloadIPv6" /t REG_SZ /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*TCPUDPChecksumOffloadIPv4" /t REG_SZ /d "3" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*TCPUDPChecksumOffloadIPv6" /t REG_SZ /d "3" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*UsoIPv4" /t REG_SZ /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*UsoIPv6" /t REG_SZ /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*VMQ" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "VMQSupported" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*RscIPv4" /t REG_SZ /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*RscIPv6" /t REG_SZ /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*UdpRsc" /t REG_SZ /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "ForceRscEnabled" /t REG_SZ /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*PMARPOffload" /t REG_SZ /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*PMNSOffload" /t REG_SZ /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*PMWiFiRekeyOffload" /t REG_SZ /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "EnableAdaptiveQueuing" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "StoreBadPackets" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "DynamicLTR" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "DropHighlyFragmentedPacket" /t REG_SZ /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "EnableCoalesce" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*PacketDirect" /t REG_SZ /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "AllowFlowControlFrames" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*StoreBadPackets" /t REG_SZ /d "0" /f
REG ADD "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableICMPRedirect" /t REG_DWORD /d "1" /f
REG ADD "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUDiscovery" /t REG_DWORD /d "1" /f
REG ADD "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "0" /f
REG ADD "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters" /v "GlobalMaxTcpWindowSize" /t REG_DWORD /d "5840" /f
REG ADD "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d "5840" /f
REG ADD "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPerServer" /t REG_DWORD /d "0" /f
REG ADD "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d "65534" /f
REG ADD "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "32" /f
REG ADD "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUBHDetect" /t REG_DWORD /d "0" /f
REG ADD "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "0" /f
REG ADD "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "64" /f
REG ADD "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "0" /f
REG ADD "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t REG_DWORD /d "2" /f
REG ADD "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "UseDelayedAcceptance" /t REG_DWORD /d "0" /f
REG ADD "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "MaxSockAddrLength" /t REG_DWORD /d "16" /f
REG ADD "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "MinSockAddrLength" /t REG_DWORD /d "16" /f
REG ADD "HKLM\Software\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
REG ADD "HKLM\Software\Policies\Microsoft\Windows\Psched" /v "MaxOutstandingSends" /t REG_DWORD /d "1" /f
REG ADD "HKLM\Software\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d "0" /f
REG ADD "HKLM\Software\Policies\Microsoft\Windows\Psched" /v "TimerResolution" /t REG_DWORD /d "1" /f
REG ADD "HKLM\Software\WOW6432Node\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPER1_0SERVER" /v "explorer.exe" /t REG_DWORD /d "10" /f
REG ADD "HKLM\Software\WOW6432Node\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPER1_0SERVER" /v "iexplore.exe" /t REG_DWORD /d "10" /f
REG ADD "HKLM\Software\WOW6432Node\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPERSERVER" /v "explorer.exe" /t REG_DWORD /d "10" /f
REG ADD "HKLM\Software\WOW6432Node\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPERSERVER" /v "iexplore.exe" /t REG_DWORD /d "10" /f
REG ADD "HKLM\System\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "6" /f
REG ADD "HKLM\System\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "5" /f
REG ADD "HKLM\System\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "4" /f
REG ADD "HKLM\System\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "7" /f
REG ADD "HKLM\System\CurrentControlSet\Services\AFD\Parameters" /v "DefaultReceiveWindow" /t REG_DWORD /d "16384" /f
REG ADD "HKLM\System\CurrentControlSet\Services\AFD\Parameters" /v "DefaultSendWindow" /t REG_DWORD /d "16384" /f
REG ADD "HKLM\System\CurrentControlSet\Services\AFD\Parameters" /v "DisableRawSecurity" /t REG_DWORD /d "1" /f
REG ADD "HKLM\System\CurrentControlSet\Services\AFD\Parameters" /v "DynamicSendBufferDisable" /t REG_DWORD /d "0" /f
REG ADD "HKLM\System\CurrentControlSet\Services\AFD\Parameters" /v "FastCopyReceiveThreshold" /t REG_DWORD /d "16384" /f
REG ADD "HKLM\System\CurrentControlSet\Services\AFD\Parameters" /v "FastSendDatagramThreshold" /t REG_DWORD /d "16384" /f
REG ADD "HKLM\System\CurrentControlSet\Services\AFD\Parameters" /v "IgnorePushBitOnReceives" /t REG_DWORD /d "1" /f
REG ADD "HKLM\System\CurrentControlSet\Services\AFD\Parameters" /v "NonBlockingSendSpecialBuffering" /t REG_DWORD /d "1" /f
REG ADD "HKLM\System\CurrentControlSet\Services\Tcpip6\Parameters" /v "DisabledComponents" /t REG_DWORD /d "255" /f
for /f %%i in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do REG ADD "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v TcpAckFrequency /t REG_DWORD /d 1 /f
for /f %%i in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do REG ADD "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v TcpDelAckTicks /t REG_DWORD /d 0 /f
for /f %%i in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do REG ADD "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v TCPNoDelay /t REG_DWORD /d 1 /f

:: Adapter
for /f %%r in ('reg query "HKLM\SYSTEM\ControlSet001\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}" /f "PCI\VEN" /d /s^|Findstr HKEY') do (
REG ADD "%%r" /v "*EEE" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "*FlowControl" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "*InterruptModeration" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "*JumboPacket" /t REG_SZ /d "1415" /f
REG ADD "%%r" /v "*LsoV1IPv4" /t REG_SZ /d "1" /f
REG ADD "%%r" /v "*LsoV2IPv4" /t REG_SZ /d "1" /f
REG ADD "%%r" /v "*LsoV2IPv6" /t REG_SZ /d "1" /f
REG ADD "%%r" /v "*ModernStandbyWoLMagicPacket" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "*NumRssQueues" /t REG_SZ /d "1" /f
REG ADD "%%r" /v "*PMARPOffload" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "*PMNSOffload" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "*PriorityVLANTag" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "*ReceiveBuffers" /t REG_SZ /d "4096" /f
REG ADD "%%r" /v "*RSS" /t REG_SZ /d "1" /f
REG ADD "%%r" /v "*RssBaseProcNumber" /t REG_SZ /d "7" /f
REG ADD "%%r" /v "*RssMaxProcNumber" /t REG_SZ /d "1" /f
REG ADD "%%r" /v "*SpeedDuplex" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "*TCPChecksumOffloadIPv4" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "*TCPChecksumOffloadIPv6" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "*TransmitBuffers" /t REG_SZ /d "4096" /f
REG ADD "%%r" /v "*WakeOnMagicPacket" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "*WakeOnPattern" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "AdvancedEEE" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "AutoDisableGigabit" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "EEELinkAdvertisement" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "EnableGreenEthernet" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "EnablePME" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "EnableTss" /t REG_SZ /d "1" /f
REG ADD "%%r" /v "GigaLite" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "ITR" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "LogLinkStateEvent" /t REG_SZ /d "51" /f
REG ADD "%%r" /v "MasterSlave" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "PowerSavingMode" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "ReduceSpeedOnPowerDown" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "S5WakeOnLan" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "TxIntDelay" /t REG_SZ /d "5" /f
REG ADD "%%r" /v "ULPMode" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "WaitAutoNegComplete" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "WakeOnLink" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "WakeOnSlot" /t REG_SZ /d "0" /f
REG ADD "%%r" /v "WolShutdownLinkSpeed" /t REG_SZ /d "2" /f
)

:: Disable Intel adapter power savings
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*SelectiveSuspend" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "DMACoalescing" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*DeviceSleepOnDisconnect" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*NicAutoPowerSaver" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "EnableModernStandby" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "EnablePowerManagement" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "ForceWakeFromMagicPacketOnModernStandby" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "WakeFromS5" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "WakeOn" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "LinkNegotiationProcess" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "WaitForValidPhyIDRead" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "SleepWhileWaiting" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "EnableETW" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "OBFFEnabled" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "I218DisablePLLShut" /t REG_SZ /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "I218DisablePLLShutGiga" /t REG_SZ /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "I219DisableK1Off" /t REG_SZ /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "DisableIntelRST" /t REG_SZ /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "ForceLtrValue" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "EnableDisconnectedStandby" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "EnableWakeOnManagmentOnTCO" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "EnablePHYFlexibleSpeed" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "EnablePHYWakeUp" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "EnableD0PHYFlexibleSpeed" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "EnableSavePowerNow" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "AutoPowerSaveModeEnabled" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "SipsEnabled" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "WakeOnFastStartup" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*EnableDynamicPowerGating" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "EnableD3ColdInS0" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "*SSIdleTimeout" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "SSIdleTimeoutMS" /t REG_SZ /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "LatencyToleranceReporting" /t REG_SZ /d "0" /f


:: Core 2 Affinity
for /f %%n in ('wmic path win32_networkadapter get PNPDeviceID ^| findstr /L "VEN_"') do (
REG ADD "HKLM\SYSTEM\ControlSet001\Enum\%%n\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /t REG_BINARY /d "04" /f
REG ADD "HKLM\SYSTEM\ControlSet001\Enum\%%n\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "4" /f
REG ADD "HKLM\SYSTEM\ControlSet001\Enum\%%n\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MessageNumberLimit" /t REG_DWORD /d "256" /f
)

POWERSHELL Set-NetTCPSetting -SettingName internet -ScalingHeuristics disabled -ErrorAction SilentlyContinue
POWERSHELL Set-NetTCPSetting -SettingName internet -MinRto 300 -ErrorAction SilentlyContinue
POWERSHELL Disable-NetAdapterEncapsulatedPacketTaskOffload -Name "*" -ErrorAction SilentlyContinue
POWERSHELL Disable-NetAdapterIPsecOffload -Name "*" -ErrorAction SilentlyContinue
POWERSHELL Disable-NetAdapterChecksumOffload -Name "*" -ErrorAction SilentlyContinue
POWERSHELL Disable-NetAdapterLso -Name "*" -ErrorAction SilentlyContinue
POWERSHELL Disable-NetAdapterRsc -Name "*" -ErrorAction SilentlyContinue
POWERSHELL Disable-NetAdapterIPsecOffload -Name "*" -ErrorAction SilentlyContinue
POWERSHELL Disable-NetAdapterPowerManagement -Name "*" -ErrorAction SilentlyContinue

:: Adapter bindings
POWERSHELL Disable-NetAdapterBinding -Name "*" -ComponentID ms_lldp -ErrorAction SilentlyContinue
:: Link-Layer Topology Discovery Mapper I/O Driver
POWERSHELL Disable-NetAdapterBinding -Name "*" -ComponentID ms_lltdio -ErrorAction SilentlyContinue
:: Client for Microsoft Networks
POWERSHELL Disable-NetAdapterBinding -Name "*" -ComponentID ms_msclient -ErrorAction SilentlyContinue
:: Microsoft LLDP Protocol Driver
POWERSHELL Disable-NetAdapterBinding -Name "*" -ComponentID ms_rspndr -ErrorAction SilentlyContinue
:: File and Printer Sharing for Microsoft Networks
POWERSHELL Disable-NetAdapterBinding -Name "*" -ComponentID ms_server -ErrorAction SilentlyContinue
:: Microsoft Network Adapter Multiplexor Protocol
POWERSHELL Disable-NetAdapterBinding -Name "*" -ComponentID ms_implat -ErrorAction SilentlyContinue

:: QoS Packet Scheduler
POWERSHELL Disable-NetAdapterQos -Name "*" -ErrorAction SilentlyContinue
POWERSHELL Disable-NetAdapterBinding -Name "*" -ComponentID ms_pacer -ErrorAction SilentlyContinue

:: Bindings that are not common
POWERSHELL Disable-NetAdapterBinding -Name "*" -ComponentID ms_pppoe -ErrorAction SilentlyContinue
POWERSHELL Disable-NetAdapterBinding -Name "*" -ComponentID ms_rdma_ndk -ErrorAction SilentlyContinue
POWERSHELL Disable-NetAdapterBinding -Name "*" -ComponentID ms_ndisuio -ErrorAction SilentlyContinue
POWERSHELL Disable-NetAdapterBinding -Name "*" -ComponentID ms_wfplwf_upper -ErrorAction SilentlyContinue
POWERSHELL Disable-NetAdapterBinding -Name "*" -ComponentID ms_wfplwf_lower -ErrorAction SilentlyContinue
POWERSHELL Disable-NetAdapterBinding -Name "*" -ComponentID ms_netbt -ErrorAction SilentlyContinue
POWERSHELL Disable-NetAdapterBinding -Name "*" -ComponentID ms_netbios -ErrorAction SilentlyContinue

:: Restarting Adapter
POWERSHELL Restart-NetAdapter -Name "Ethernet" -ErrorAction SilentlyContinue

ECHO Disabling Themes...
REG ADD "HKLM\System\CurrentControlSet\Services\Themes" /v "Start" /t REG_DWORD /d "4" /f

ECHO Disabling Drivers...
:: Preventing Errors
REG ADD "HKLM\System\CurrentControlSet\Services\Dhcp" /v "DependOnService" /t REG_MULTI_SZ /d "NSI\0Afd" /f
REG ADD "HKLM\System\CurrentControlSet\Services\hidserv" /v "DependOnService" /t REG_MULTI_SZ /d "" /f
REG ADD "HKLM\System\CurrentControlSet\Services\fvevol" /v "ErrorControl" /t REG_DWORD /d "0" /f
REG ADD "HKLM\System\CurrentControlSet\Services\LanmanServer" /v "Start" /t REG_DWORD /d "4" /f
REG ADD "HKLM\System\CurrentControlSet\Control\Class\{4d36e96c-e325-11ce-bfc1-08002be10318}" /v "UpperFilters" /t REG_MULTI_SZ /d "" /f
REG ADD "HKLM\System\CurrentControlSet\Control\Class\{4d36e967-e325-11ce-bfc1-08002be10318}" /v "LowerFilters" /t REG_MULTI_SZ /d "" /f
REG ADD "HKLM\System\CurrentControlSet\Control\Class\{4d36e967-e325-11ce-bfc1-08002be10318}" /v "LowerFilters" /t REG_MULTI_SZ /d "" /f
REG ADD "HKLM\System\CurrentControlSet\Control\Class\{6bdd1fc6-810f-11d0-bec7-08002be2092f}" /v "UpperFilters" /t REG_MULTI_SZ /d "" /f
REG ADD "HKLM\System\CurrentControlSet\Control\Class\{71a27cdd-812a-11d0-bec7-08002be2092f}" /v "LowerFilters" /t REG_MULTI_SZ /d "" /f

:: ACPI Devices driver
REG ADD "HKLM\System\CurrentControlSet\Services\AcpiDev" /v "Start" /t REG_DWORD /d "4" /f
:: Charge Arbitration Driver
REG ADD "HKLM\System\CurrentControlSet\Services\CAD" /v "Start" /t REG_DWORD /d "4" /f
:: Windows Cloud Files Filter Driver
REG ADD "HKLM\System\CurrentControlSet\Services\CldFlt" /v "Start" /t REG_DWORD /d "4" /f
:: Windows sandboxing and encryption filter
REG ADD "HKLM\System\CurrentControlSet\Services\FileCrypt" /v "Start" /t REG_DWORD /d "4" /f
:: GPU Energy Driver
REG ADD "HKLM\System\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f
:: WAN Miniport (PPTP)
REG ADD "HKLM\System\CurrentControlSet\Services\PptpMiniport" /v "Start" /t REG_DWORD /d "4" /f
:: Remote Application Programming Interface (RAPI)
REG ADD "HKLM\System\CurrentControlSet\Services\RapiMgr" /v "Start" /t REG_DWORD /d "4" /f
:: WAN Miniport (IKEv2)
REG ADD "HKLM\System\CurrentControlSet\Services\RasAgileVpn" /v "Start" /t REG_DWORD /d "4" /f
:: WAN Miniport (L2TP)
REG ADD "HKLM\System\CurrentControlSet\Services\Rasl2tp" /v "Start" /t REG_DWORD /d "4" /f
:: WAN Miniport (SSTP)
REG ADD "HKLM\System\CurrentControlSet\Services\RasSstp" /v "Start" /t REG_DWORD /d "4" /f
:: Remote Access IP ARP Driver
REG ADD "HKLM\System\CurrentControlSet\Services\Wanarp" /v "Start" /t REG_DWORD /d "4" /f
:: Remote Access IPv6 ARP Driver
REG ADD "HKLM\System\CurrentControlSet\Services\wanarpv6" /v "Start" /t REG_DWORD /d "4" /f
:: Related to windows defender
REG ADD "HKLM\System\CurrentControlSet\Services\Wdnsfltr" /v "Start" /t REG_DWORD /d "4" /f
:: CTF Loader
REG ADD "HKLM\System\CurrentControlSet\Services\WcesComm" /v "Start" /t REG_DWORD /d "4" /f
:: Windows Container Isolation
REG ADD "HKLM\System\CurrentControlSet\Services\Wcifs" /v "Start" /t REG_DWORD /d "4" /f
:: Windows Container Name Virtualization
REG ADD "HKLM\System\CurrentControlSet\Services\Wcnfs" /v "Start" /t REG_DWORD /d "4" /f
:: Windows Trusted Execution Environment Class Extension
REG ADD "HKLM\System\CurrentControlSet\Services\WindowsTrustedRT" /v "Start" /t REG_DWORD /d "4" /f
:: Microsoft Windows Trusted Runtime Secure Service
REG ADD "HKLM\System\CurrentControlSet\Services\WindowsTrustedRTProxy" /v "Start" /t REG_DWORD /d "4" /f

:: Background Activity Moderator Driver (W10Default=1)
REG ADD "HKLM\System\CurrentControlSet\Services\bam" /v "Start" /t REG_DWORD /d "4" /f
:: CNG Hardware Assist algorithm provider (W10Default=4) (W8Default=Empty)
REG ADD "HKLM\System\CurrentControlSet\Services\cnghwassist" /v "Start" /t REG_DWORD /d "4" /f
:: Disk I/O Rate Filter Driver (W10Default=0)
REG ADD "HKLM\System\CurrentControlSet\Services\iorate" /v "Start" /t REG_DWORD /d "4" /f
:: Security Events Component Minifilter (W10Default=0)
REG ADD "HKLM\System\CurrentControlSet\Services\mssecflt" /v "Start" /t REG_DWORD /d "4" /f
:: Tunnel Miniport Adapter Driver (W10Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\tunnel" /v "Start" /t REG_DWORD /d "4" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\tunnel" /v "ErrorControl" /t REG_DWORD /d "1" /f
:: Virtual WiFi Filter Driver (W10Default=1)
REG ADD "HKLM\System\CurrentControlSet\Services\vwififlt" /v "Start" /t REG_DWORD /d "4" /f
:: ACPI Processor Aggregator Driver (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\acpipagr" /v "Start" /t REG_DWORD /d "4" /f
:: ACPI Power Meter Driver (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\AcpiPmi" /v "Start" /t REG_DWORD /d "4" /f
:: ACPI Wake Alarm Driver (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\Acpitime" /v "Start" /t REG_DWORD /d "4" /f
:: Most useless driver to exist (W8Default=1)
REG ADD "HKLM\System\CurrentControlSet\Services\Beep" /v "Start" /t REG_DWORD /d "4" /f
:: NT Lan Manager Datagram Receiver Driver (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\bowser" /v "Start" /t REG_DWORD /d "4" /f
:: CD/DVD File System Reader (W8Default=4)
REG ADD "HKLM\System\CurrentControlSet\Services\cdfs" /v "Start" /t REG_DWORD /d "4" /f
:: CD-ROM Driver / Cannot use programs like rufus (W8Default=1)
REG ADD "HKLM\System\CurrentControlSet\Services\cdrom" /v "Start" /t REG_DWORD /d "4" /f
:: Common Log / General-purpose logging service (W8Default=0)
REG ADD "HKLM\System\CurrentControlSet\Services\CLFS" /v "Start" /t REG_DWORD /d "4" /f
:: (Compbatt for W7) (For laptops) - Microsoft ACPI Control Method Battery Driver (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\CmBatt" /v "Start" /t REG_DWORD /d "4" /f
:: Composite Bus Enumerator Driver (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\CompositeBus" /v "Start" /t REG_DWORD /d "4" /f
:: Console Driver (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\condrv" /v "Start" /t REG_DWORD /d "4" /f
:: Offline Files Driver (W8Default=1)
REG ADD "HKLM\System\CurrentControlSet\Services\CSC" /v "Start" /t REG_DWORD /d "4" /f
:: Desktop Activity Moderator Driver (W8Default=1)
REG ADD "HKLM\System\CurrentControlSet\Services\dam" /v "Start" /t REG_DWORD /d "4" /f
:: DFS Namespace Client Driver (W8Default=1)
REG ADD "HKLM\System\CurrentControlSet\Services\dfsc" /v "Start" /t REG_DWORD /d "4" /f
:: Enhanced Storage Filter Driver (W8Default=0)
REG ADD "HKLM\System\CurrentControlSet\Services\EhStorClass" /v "Start" /t REG_DWORD /d "4" /f
:: FAT12/16/32 File System Driver (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\fastfat" /v "Start" /t REG_DWORD /d "4" /f
:: File Information FS MiniFilter (W8Default=0)
REG ADD "HKLM\System\CurrentControlSet\Services\FileInfo" /v "Start" /t REG_DWORD /d "4" /f
:: BitLocker Drive Encryption Filter Driver (W8Default=0)
REG ADD "HKLM\System\CurrentControlSet\Services\fvevol" /v "Start" /t REG_DWORD /d "4" /f
:: Kernel Debug Network Miniport NDIS 6.20 (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\kdnic" /v "Start" /t REG_DWORD /d "4" /f
:: Kernel Security Support Provider Interface Packages (W8Default=0)
REG ADD "HKLM\System\CurrentControlSet\Services\KSecPkg" /v "Start" /t REG_DWORD /d "4" /f
:: Link-Layer Topology Discovery Mapper I/O Driver (W8Default=2)
REG ADD "HKLM\System\CurrentControlSet\Services\lltdio" /v "Start" /t REG_DWORD /d "4" /f
:: UAC File Virtualization (W8Default=2)
REG ADD "HKLM\System\CurrentControlSet\Services\luafv" /v "Start" /t REG_DWORD /d "4" /f
:: Modem Device Driver (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\Modem" /v "Start" /t REG_DWORD /d "4" /f
:: The Networking-MPSSVC-Svc component is part of Windows Firewall (W8Default=2)
REG ADD "HKLM\System\CurrentControlSet\Services\MpsSvc" /v "Start" /t REG_DWORD /d "4" /f
:: Windows Defender Firewall Authorization Driver (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\mpsdrv" /v "Start" /t REG_DWORD /d "4" /f
:: SMB MiniRedirector Wrapper and Engine (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\mrxsmb" /v "Start" /t REG_DWORD /d "4" /f
:: SMB 1.x MiniRedirector (W8Default=2)
REG ADD "HKLM\System\CurrentControlSet\Services\Mrxsmb10" /v "Start" /t REG_DWORD /d "4" /f
:: SMB 2.0 MiniRedirector (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\Mrxsmb20" /v "Start" /t REG_DWORD /d "4" /f
:: Disabling breaks laptop keyboards and PS2 keyboards (W8Default=0)
REG ADD "HKLM\System\CurrentControlSet\Services\msisadrv" /v "Start" /t REG_DWORD /d "4" /f
:: Link-Layer Discovery Protocol (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\MsLldp" /v "Start" /t REG_DWORD /d "4" /f
:: System Management BIOS Driver (W8Default=1)
REG ADD "HKLM\System\CurrentControlSet\Services\mssmbios" /v "Start" /t REG_DWORD /d "4" /f
:: NDIS Capture (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\NdisCap" /v "Start" /t REG_DWORD /d "4" /f
:: Remote Access NDIS TAPI Driver (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\NdisTapi" /v "Start" /t REG_DWORD /d "4" /f
:: Virtual Network Adapter Enumerator (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\NdisVirtualBus" /v "Start" /t REG_DWORD /d "4" /f
:: Remote Access NDIS WAN Driver (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\NdisWan" /v "Start" /t REG_DWORD /d "4" /f
:: NDIS Proxy Driver  (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\Ndproxy" /v "Start" /t REG_DWORD /d "4" /f
:: Windows Network Data Usage Monitoring Driver (W8Default=2)
REG ADD "HKLM\System\CurrentControlSet\Services\Ndu" /v "Start" /t REG_DWORD /d "4" /f
:: NetBIOS interface driver (W8Default=1) 
REG ADD "HKLM\System\CurrentControlSet\Services\NetBIOS" /v "Start" /t REG_DWORD /d "4" /f
:: Implements NetBios over TCP/IP (W8Default=1)
REG ADD "HKLM\System\CurrentControlSet\Services\NetBT" /v "Start" /t REG_DWORD /d "4" /f
:: Named pipe service trigger provider (W8Default=1)
REG ADD "HKLM\System\CurrentControlSet\Services\Npsvctrig" /v "Start" /t REG_DWORD /d "4" /f
:: Protected Environment Authentication and Authorization Export Driver (W8Default=2)
REG ADD "HKLM\System\CurrentControlSet\Services\PEAUTH" /v "Start" /t REG_DWORD /d "4" /f
:: QoS Packet Scheduler (W8Default=1)
REG ADD "HKLM\System\CurrentControlSet\Services\Psched" /v "Start" /t REG_DWORD /d "4" /f
:: QWAVE enhances AV streaming performance and reliability by ensuring network QoS for AV apps (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\QWAVEdrv" /v "Start" /t REG_DWORD /d "4" /f
:: Remote Access Auto Connection Driver (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\RasAcd" /v "Start" /t REG_DWORD /d "4" /f
:: Remote Access PPPOE Driver (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\RasPppoe" /v "Start" /t REG_DWORD /d "4" /f
:: Redirected Buffering Sub System (W8Default=1)
REG ADD "HKLM\System\CurrentControlSet\Services\rdbss" /v "Start" /t REG_DWORD /d "4" /f
:: Remote Desktop Device Redirector Bus Driver (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\rdpbus" /v "Start" /t REG_DWORD /d "4" /f
:: Usually already stripped in custom isos (W8Default=0)
REG ADD "HKLM\System\CurrentControlSet\Services\rdyboost" /v "Start" /t REG_DWORD /d "4" /f
:: Link-Layer Topology Discovery Responder (W8Default=2)
REG ADD "HKLM\System\CurrentControlSet\Services\rspndr" /v "Start" /t REG_DWORD /d "4" /f
:: Serial Mouse Driver / Needed for ps2 mice (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\sermouse" /v "Start" /t REG_DWORD /d "4" /f
:: Storage Spaces Driver (W8Default=0)
REG ADD "HKLM\System\CurrentControlSet\Services\spaceport" /v "Start" /t REG_DWORD /d "4" /f
:: Server SMB 2.xxx Driver (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\srv2" /v "Start" /t REG_DWORD /d "4" /f
:: Server network driver (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\Srvnet" /v "Start" /t REG_DWORD /d "4" /f
:: Central repository of Telephony data (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\TapiSrv" /v "Start" /t REG_DWORD /d "4" /f
:: IPv6 Protocol Driver (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\Tcpip6" /v "Start" /t REG_DWORD /d "4" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip6" /v "ErrorControl" /t REG_DWORD /d "1" /f
:: TCP/IP registry compatibility driver (W8Default=2)
REG ADD "HKLM\System\CurrentControlSet\Services\tcpipreg" /v "Start" /t REG_DWORD /d "4" /f
:: TDI translation driver (W8Default=1)
REG ADD "HKLM\System\CurrentControlSet\Services\tdx" /v "Start" /t REG_DWORD /d "4" /f
:: Trusted Platform Module (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\TPM" /v "Start" /t REG_DWORD /d "4" /f
:: Reads/Writes UDF 1.02,1.5,2.0x,2.5 disc formats, usually found on C/DVD discs (W8Default=4)
REG ADD "HKLM\System\CurrentControlSet\Services\udfs" /v "Start" /t REG_DWORD /d "4" /f
:: Can be disabled on UEFI. Bricks some systems (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\UEFI" /v "Start" /t REG_DWORD /d "4" /f
:: UMBus Enumerator Driver (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\umbus" /v "Start" /t REG_DWORD /d "4" /f
:: Virtual Drive Root Enumerator file (W8Default=0)
REG ADD "HKLM\System\CurrentControlSet\Services\vdrvroot" /v "Start" /t REG_DWORD /d "4" /f
:: Hyper-V Virtualization Infrastructure Driver (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\Vid" /v "Start" /t REG_DWORD /d "4" /f
:: Volume Manager Driver (W8Default=0)
REG ADD "HKLM\System\CurrentControlSet\Services\Volmgrx" /v "Start" /t REG_DWORD /d "4" /f
:: Virtual Wireless Bus Driver (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\vwifibus" /v "Start" /t REG_DWORD /d "4" /f
:: Related to windows defender (W8Default=0)
REG ADD "HKLM\System\CurrentControlSet\Services\Wdboot" /v "Start" /t REG_DWORD /d "4" /f
:: Related to windows defender (W8Default=0)
REG ADD "HKLM\System\CurrentControlSet\Services\WdFilter" /v "Start" /t REG_DWORD /d "4" /f
:: Related to windows defender (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\WdNisDrv" /v "Start" /t REG_DWORD /d "4" /f
:: Windows defender (W8Default=2)
REG ADD "HKLM\System\CurrentControlSet\Services\WinDefend" /v "Start" /t REG_DWORD /d "4" /f
:: Microsoft Windows Management Interface for ACPI (W8Default=3)
REG ADD "HKLM\System\CurrentControlSet\Services\WmiAcpi" /v "Start" /t REG_DWORD /d "4" /f
:: Winsock IFS Driver (W8Default=4)
REG ADD "HKLM\System\CurrentControlSet\Services\ws2ifsl" /v "Start" /t REG_DWORD /d "4" /f
:: This can be disabled, but it breaks some functionality of the kernel. Null is required for piping thus for some programs to work, like wget and wsusoffline (W8Default=1)
REG ADD "HKLM\System\CurrentControlSet\Services\Null" /v "Start" /t REG_DWORD /d "1" /f

:: Disable Core Parking
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "Attributes" /t Reg_DWORD /d "2" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t Reg_DWORD /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t Reg_DWORD /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318584" /v "Attributes" /t Reg_DWORD /d "2" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318584" /v "ValueMax" /t Reg_DWORD /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318584" /v "ValueMin" /t Reg_DWORD /d "0" /f

:: Mouse and Keyboard tweaks
REG ADD "HKCU\Control Panel\Keyboard" /v "TypematicDelay" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "ConnectMultiplePorts" /t Reg_DWORD /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "MaximumPortsServiced" /t Reg_DWORD /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "SendOutputToAllPorts" /t Reg_DWORD /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "WppRecorder_UseTimeStamp" /t Reg_DWORD /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "ConnectMultiplePorts" /t Reg_DWORD /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MaximumPortsServiced" /t Reg_DWORD /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "SendOutputToAllPorts" /t Reg_DWORD /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "WppRecorder_UseTimeStamp" /t Reg_DWORD /d "0" /f