:: Power settings
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "AwayModeEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Class1InitialUnparkCount" /t REG_DWORD /d "100" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableDynamicProcessorBoost" /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PerfCalculateActualUtilization" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SleepReliabilityDetailedDiagnostics" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Class2InitialUnparkCount" /t REG_DWORD /d "100" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationDisabled" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "QosManagesIdleProcessors" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableVsyncLatencyUpdate" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableSensorWatchdog" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceIdleResiliency" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f >NUL 2>&1

:: Disable Spectre and Meltdown
REG ADD "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f >NUL 2>&1
REG ADD "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f >NUL 2>&1
REN C:\Windows\System32\mcupdate_GenuineIntel.dll mcupdate_GenuineIntel.dlll >NUL 2>&1

:: Resource Management settings
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\HardCap0" /v "CapPercentage" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\HardCap0" /v "SchedulingType" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\Paused" /v "CapPercentage" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\Paused" /v "SchedulingType" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFull" /v "CapPercentage" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFull" /v "SchedulingType" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFullAboveNormal" /v "CapPercentage" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFullAboveNormal" /v "PriorityClass" /t REG_DWORD /d "32" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFullAboveNormal" /v "SchedulingType" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapLow" /v "CapPercentage" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapLow" /v "SchedulingType" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapLowBackgroundBegin" /v "CapPercentage" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapLowBackgroundBegin" /v "PriorityClass" /t REG_DWORD /d "32" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapLowBackgroundBegin" /v "SchedulingType" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\UnmanagedAboveNormal" /v "CapPercentage" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\UnmanagedAboveNormal" /v "PriorityClass" /t REG_DWORD /d "32" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\UnmanagedAboveNormal" /v "SchedulingType" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Processor" /v "Capabilities" /t REG_DWORD /d "517734" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\IO\NoCap" /v "IOBandwidth" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v "IoEnableSessionZeroAccessCheck" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\BackgroundDefault" /v "IsLowPriority" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\Frozen" /v "IsLowPriority" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\FrozenDNCS" /v "IsLowPriority" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\FrozenDNK" /v "IsLowPriority" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\FrozenPPLE" /v "IsLowPriority" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\Paused" /v "IsLowPriority" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\PausedDNK" /v "IsLowPriority" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\Pausing" /v "IsLowPriority" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\PrelaunchForeground" /v "IsLowPriority" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\ThrottleGPUInterference" /v "IsLowPriority" /t REG_DWORD /d "0" /f >NUL 2>&1

:: Kernel settings
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcWatchdogProfileOffset /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v ObUnsecureGlobalNames /t REG_MULTI_SZ /d "netfxcustomperfcounters.1.0\0SharedPerfIPCBlock\0Cor_Private_IPCBlock\0Cor_Public_IPCBlock_\0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v SeTokenSingletonAttributesConfig /t REG_DWORD /d 3 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v GlobalTimerResolutionRequests /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v obcaseinsensitive /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v MitigationOptions /t REG_BINARY /d 22222222222222222002000000200000 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v MitigationAuditOptions /t REG_BINARY /d 20000020202022220000000000000000 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v EAFModules /t REG_SZ /d " " /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v EnablePerCpuClockTickScheduling /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v EnableTickAccumulationFromAccountingPeriods /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v TimerCheckFlags /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v ReadyTimeTicks /t REG_DWORD /d 6 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v ScanLatencyTicks /t REG_DWORD /d 20 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v ThreadReadyCount /t REG_DWORD /d 3 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DisableExceptionChainValidation /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v KernelSEHOPEnabled /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v MaximumSharedReadyQueueSize /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DisableAutoBoost /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DistributeTimers /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcTimeout /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v IdealDpcRate /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v MaximumDpcQueueDepth /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v MinimumDpcRate /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v ThreadDpcEnable /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v AdjustDpcThreshold /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcWatchdogPeriod /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DisableTsx /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DynamicDpcProtocol /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v SerializeTimerExpiration /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v InterruptSteeringDisabled /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcQueueDepth /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v MaxDynamicTickDuration /t REG_DWORD /d 1000 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v ForceIdleGracePeriod /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v MaximumDpcRate /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DisableBufferedIoInit /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v BufferSize /t REG_DWORD /d 32 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v IoQueueWorkItem /t REG_DWORD /d 32 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v IoQueueWorkItemToNode /t REG_DWORD /d 32 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v IoQueueWorkItemEx /t REG_DWORD /d 32 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v IoQueueThreadIrp /t REG_DWORD /d 32 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v ExTryQueueWorkItem /t REG_DWORD /d 32 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v IoEnqueueIrp /t REG_DWORD /d 32 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v WatchdogResumeTimeout /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v IdleScanInterval /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v IdleDurationExpirationTimeout /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DelayCloseSize /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DelayDerefKCBLimit /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v WorkerFactoryThreadIdleTimeout /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v PassiveWatchdogTimeout /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v BugCheckUnexpectedInterrupts /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DisableLowQosTimerResolution /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DisableControlFlowGuardExportSuppression /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DisableControlFlowGuardXfg /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcCumulativeSoftTimeout /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcWatchdogProfileBufferSizeBytes /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v ForceForegroundBoostDecay /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v SplitLargeCaches /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v XMMIZeroingEnable /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v PriorityControl /t REG_DWORD /d 40 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DisableOverlappedExecution /t REG_DWORD /d 32 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v TimeIncrement /t REG_DWORD /d 15 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v QuantumLength /t REG_DWORD /d 20 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DebugPollInterval /t REG_DWORD /d 1000 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v UnlimitDpcQueue /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcSoftTimeout /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcRequestRate /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcTimeLimit /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcTimeCount /t REG_DWORD /d 1000 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v InterruptRequest /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v IdleHalt /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v ClockOwner /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v PendingTickFlags /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcWatchdogProfileSingleDpcThreshold /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcWatchdogProfileCumulativeDpcThreshold /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcLastCount /t REG_DWORD /d 1000 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcRoutineActive /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v QuantumEnd /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v InterruptLastCount /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v InterruptRate /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v ReadyThreadCount /t REG_DWORD /d 2000 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v KeSpinLockOrdering /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v PriorityState /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DisableDynamicTick /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v TimerInterruptDelay /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v MinimumIncrement /t REG_DWORD /d 4 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v MaximumIncrement /t REG_DWORD /d 5000 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v PowerOffFrozenProcessors /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DisableLightWeightSuspend /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v ExQueueWorkItem /t REG_DWORD /d 32 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v UseNormalStack /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v UseNewEaBuffering /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v StackSubSystemStackSize /t REG_DWORD /d 65536 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v InterruptSteeringFlags /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v EnableControlFlowLowGuardExportSuppression /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DisableControlFlowFlowGuardXgf /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v VerifierDpcScalingFactor /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v MaximumKernelWorkerThreads /t REG_DWORD /d 2000 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v ClockTimerPerCpu /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v ClockTimerHighLatency /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v ClockTimerAlwaysOnPresent /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v CoalescingTimerInterval /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v Capabilities /t REG_DWORD /d 272 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v KernelSEHOPEenabled /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v RealTimeIsCritical /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v EnableUserReporting /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v SeLpacEnablwatsonReporting /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v CacheAwareScheduling /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v KernelSEHOPBeyHandle /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v LowPriorityBackgroundWorkItemQueue /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v MaxDynamicTickDurationSize /t REG_DWORD /d 4294967295 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v MinDynamicTickDuration /t REG_DWORD /d 1000 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v LargeSystemCache /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v BoostingPeriodMultiplier /t REG_DWORD /d 2 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DefaultDynamicHeteroCpuPolicy /t REG_DWORD /d 6 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DefaultHeteroCpuPolicy /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DynamicHeteroCpuPolicyImportant /t REG_DWORD /d 6 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DynamicHeteroCpuPolicyImportantPriority /t REG_DWORD /d 10 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DynamicHeteroCpuPolicyImportantShort /t REG_DWORD /d 6 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DynamicHeteroCpuPolicyMask /t REG_DWORD /d 3 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v SchedulerAssistThreadFlagOverride /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v PerfIsoEnabled /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v CacheIsoBitmap /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v CacheErrataOverride /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v AlwaysTrackIoBoosting /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v InterruptSteeringFlags /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v WpsSimulationOverride /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v RebalanceMinPriority /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v SeLpacEnableWatsonThrottling /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v EnableWerUserReporting /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DisablePointerParameterAlignmentValidation /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v XStateContextLookasidePerProcMaxDepth /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v IdealNodeRandomized /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v ForceParkingRequested /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v HgsPlusFeedbackUpdateThresholdRuntime /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v HgsPlusFeedbackUpdateThresholdNetRuntime /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v HgsPlusInvalidFeedbackLimit /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v HgsPlusLowerPerfClassFeedbackThreshold /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v HgsPlusHigherPerfClassFeedbackThreshold /t REG_DWORD /d 0 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v HgsPlusMinimumScoreDifferenceForSwap /t REG_DWORD /d 100 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v HgsPlusThreadCreationDefaultClass /t REG_DWORD /d 3 /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v HyperStartDisabled /t REG_DWORD /d 1 /f >NUL 2>&1

:: Ghidra related to gpu (Questionable)
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "D3PCLatency" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableRuntimePowerManagement" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "FlTransitionLatency" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchedMode" /t REG_DWORD /d "2" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "LOWLATENCY" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "Node3DLowLatency" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "PciLatencyTimerControl" /t REG_DWORD /d "32" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "PowerSavingTweaks" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "PrimaryPushBufferSize" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RMDeepLlEntryLatencyUsec" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmDisableRegistryCaching" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLevel" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "UseGpuTimer" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "D3PCLatency" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnableRuntimePowerManagement" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "FlTransitionLatency" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "LOWLATENCY" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "Node3DLowLatency" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "PciLatencyTimerControl" /t REG_DWORD /d "32" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "PowerSavingTweaks" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "PrimaryPushBufferSize" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RMDeepLlEntryLatencyUsec" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RmDisableRegistryCaching" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "UseGpuTimer" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "AdaptiveVsyncEnable" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "AllowDeepCStates" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "BuffersInFlight" /t REG_DWORD /d "128" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "D3PCLatency" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableGDIAcceleration" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePFonDP" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "Disable_OverlayDSQualityEnhancement" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableRuntimePowerManagement" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "FlTransitionLatency" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "LOWLATENCY" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "Node3DLowLatency" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "PciLatencyTimerControl" /t REG_DWORD /d "32" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "PowerSavingTweaks" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "PrimaryPushBufferSize" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMDeepLlEntryLatencyUsec" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RmDisableRegistryCaching" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RmFbsrPagedDMA" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "UseGpuTimer" /t REG_DWORD /d "1" /f >NUL 2>&1
	
:: Force contiguous memory allocation in the DirectX Graphics Kernel (Questionable)
REG ADD "HKLM\System\CurrentControlSet\Control\GraphicsDrivers" /v "DpiMapIommuContiguous" /t REG_DWORD /d "1" /f >NUL 2>&1

:: Force contiguous memory allocation in the NVIDIA driver (Questionable)
REG ADD "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PreferSystemMemoryContiguous" /t REG_DWORD /d "1" /f >NUL 2>&1

:: Display tweaks (Questionable)
FOR /f >NUL 2>&1 "DELIMS=DesktopMonitor, " %%i in ('WMIC PATH Win32_DesktopMonitor GET DeviceID^| FINDSTR /L "DesktopMonitor"') DO (
	SET MonitorAmount=%%i
)
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v Display%MonitorAmount%_PipeOptimizationEnable /t REG_DWORD /d "1" /f >NUL 2>&1

:: Avalon tweaks (Questionable)
REG ADD "HKCU\SOFTWARE\Microsoft\Avalon.Graphics" /v "ClearTypeLevel" /t REG_DWORD /d "100" /f >NUL 2>&1
REG ADD "HKCU\SOFTWARE\Microsoft\Avalon.Graphics" /v "DisableHWAcceleration" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\SOFTWARE\Microsoft\Avalon.Graphics" /v "EnhancedContrastLevel" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\SOFTWARE\Microsoft\Avalon.Graphics" /v "GammaLevel" /t REG_DWORD /d "1600" /f >NUL 2>&1
REG ADD "HKCU\SOFTWARE\Microsoft\Avalon.Graphics" /v "GrayscaleEnhancedContrastLevel" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\SOFTWARE\Microsoft\Avalon.Graphics" /v "MaxMultisampleSize" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\SOFTWARE\Microsoft\Avalon.Graphics" /v "PixelStructure" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKCU\SOFTWARE\Microsoft\Avalon.Graphics" /v "TextContrastLevel" /t REG_DWORD /d "6" /f >NUL 2>&1
REG ADD "HKCU\SOFTWARE\Microsoft\Avalon.Graphics" /v "UseReferenceRasterizer" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Avalon.Graphics" /v "ClearTypeLevel" /t REG_DWORD /d "100" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Avalon.Graphics" /v "DisableHWAcceleration" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Avalon.Graphics" /v "EnhancedContrastLevel" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Avalon.Graphics" /v "GammaLevel" /t REG_DWORD /d "1600" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Avalon.Graphics" /v "GrayscaleEnhancedContrastLevel" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Avalon.Graphics" /v "MaxMultisampleSize" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Avalon.Graphics" /v "PixelStructure" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Avalon.Graphics" /v "TextContrastLevel" /t REG_DWORD /d "6" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Avalon.Graphics" /v "UseReferenceRasterizer" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Avalon.Graphics" /v "ClearTypeLevel" /t REG_DWORD /d "100" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Avalon.Graphics" /v "DisableHWAcceleration" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Avalon.Graphics" /v "EnhancedContrastLevel" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Avalon.Graphics" /v "GammaLevel" /t REG_DWORD /d "1600" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Avalon.Graphics" /v "GrayscaleEnhancedContrastLevel" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Avalon.Graphics" /v "MaxMultisampleSize" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Avalon.Graphics" /v "PixelStructure" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Avalon.Graphics" /v "TextContrastLevel" /t REG_DWORD /d "6" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Avalon.Graphics" /v "UseReferenceRasterizer" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKU\.DEFAULT\SOFTWARE\Microsoft\Avalon.Graphics" /v "DisableHWAcceleration" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKU\.DEFAULT\SOFTWARE\Microsoft\Avalon.Graphics" /v "MaxMultisampleSize" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKU\.DEFAULT\SOFTWARE\Microsoft\Avalon.Graphics" /v "UseReferenceRasterizer" /t REG_DWORD /d "0" /f >NUL 2>&1

:: Direct3d tweaks (Questionable)
REG ADD "HKCU\SOFTWARE\Microsoft\Direct3D" /v "DisableVidMemVBs" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\SOFTWARE\Microsoft\Direct3D" /v "FlipNoVsync" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKCU\SOFTWARE\Microsoft\Direct3D" /v "MMX Fast Path" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKCU\SOFTWARE\Microsoft\Direct3D\Drivers" /v "SoftwareOnly" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\SOFTWARE\Microsoft\DirectDraw" /v "EmulationOnly" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Direct3D" /v "DisableVidMemVBs" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Direct3D" /v "FlipNoVsync" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Direct3D" /v "MMX Fast Path" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Direct3D\Drivers" /v "SoftwareOnly" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\DirectDraw" /v "EmulationOnly" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Direct3D" /v "DisableVidMemVBs" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Direct3D" /v "FlipNoVsync" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Direct3D" /v "MMX Fast Path" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Direct3D\Drivers" /v "SoftwareOnly" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\DirectDraw" /v "EmulationOnly" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKU\.DEFAULT\SOFTWARE\Microsoft\Direct3D" /v "DisableVidMemVBs" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKU\.DEFAULT\SOFTWARE\Microsoft\Direct3D" /v "FlipNoVsync" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKU\.DEFAULT\SOFTWARE\Microsoft\Direct3D" /v "MMX Fast Path" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKU\.DEFAULT\SOFTWARE\Microsoft\Direct3D\Drivers" /v "SoftwareOnly" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKU\.DEFAULT\SOFTWARE\Microsoft\DirectDraw" /v "EmulationOnly" /t REG_DWORD /d "0" /f >NUL 2>&1

:: Disable additional NTFS/ReFS mitigations
REG ADD "HKLM\System\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d "0" /f >NUL 2>&1

:: Specifies the Wake Policy of LPC controllers during activity for the best possible latency
REG ADD "HKLM\System\CurrentControlSet\Control\Session Manager" /v "AlpcWakePolicy" /t REG_DWORD /d "1" /f >NUL 2>&1

:: Drivers and the kernel can be paged to disk as needed
REG ADD "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f >NUL 2>&1

:: Using big system memory caching to improve microstuttering
REG ADD "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "1" /f >NUL 2>&1

:: Multimedia Profile
REG ADD "HKLM\System\CurrentControlSet\Services\MMCSS" /v "Start" /t REG_DWORD /d "2" /f >NUL 2>&1
REG ADD "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NoLazyMode" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "10" /f >NUL 2>&1
REG ADD "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "LazyModeTimeout" /t REG_DWORD /d "4294967295" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SchedulerTimerResolution" /t REG_DWORD /d 5000 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SchedulerPeriod" /t REG_DWORD /d 1000000 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "MaxThreadsPerProcess" /t REG_DWORD /d 128 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "MaxThreadsTotal" /t REG_DWORD /d 65535 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "IdleDetectionCycles" /t REG_DWORD /d 2 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Clock Rate" /t REG_DWORD /d 10000 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Priority" /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Scheduling Category" /t REG_SZ /d "Medium" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Latency Sensitive" /t REG_SZ /d "False" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Priority When Yielded" /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "BackgroundPriority" /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "Clock Rate" /t REG_DWORD /d 5035 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "Priority" /t REG_DWORD /d 8 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "Scheduling Category" /t REG_SZ /d "High" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "Latency Sensitive" /t REG_SZ /d "True" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "Priority When Yielded" /t REG_DWORD /d 19 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "BackgroundPriority" /t REG_DWORD /d 8 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Clock Rate" /t REG_DWORD /d 10000 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Priority" /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Scheduling Category" /t REG_SZ /d "Low" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Latency Sensitive" /t REG_SZ /d "False" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Priority When Yielded" /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "BackgroundPriority" /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "Clock Rate" /t REG_DWORD /d 5035 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "Priority" /t REG_DWORD /d 8 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "Scheduling Category" /t REG_SZ /d "High" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "Latency Sensitive" /t REG_SZ /d "True" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "Priority When Yielded" /t REG_DWORD /d 19 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "BackgroundPriority" /t REG_DWORD /d 8 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d 5035 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 8 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /t REG_SZ /d "True" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority When Yielded" /t REG_DWORD /d 19 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "BackgroundPriority" /t REG_DWORD /d 8 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "Clock Rate" /t REG_DWORD /d 10000 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "Priority" /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "Scheduling Category" /t REG_SZ /d "Low" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "Latency Sensitive" /t REG_SZ /d "False" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "Priority When Yielded" /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "BackgroundPriority" /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Clock Rate" /t REG_DWORD /d 10000 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Priority" /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Scheduling Category" /t REG_SZ /d "Medium" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Latency Sensitive" /t REG_SZ /d "False" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Priority When Yielded" /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "BackgroundPriority" /t REG_DWORD /d 1 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Clock Rate" /t REG_DWORD /d 5035 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Priority" /t REG_DWORD /d 8 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Scheduling Category" /t REG_SZ /d "High" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Latency Sensitive" /t REG_SZ /d "True" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Priority When Yielded" /t REG_DWORD /d 19 /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "BackgroundPriority" /t REG_DWORD /d 8 /f >NUL 2>&1

:: Process Scheduling
REG ADD "HKLM\System\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "0x2a" /f >NUL 2>&1

:: Minimizing the number of times the CPU is forced to perform the relatively power-costly operation of entering and exiting idle states
REG ADD "HKLM\System\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\System\CurrentControlSet\Control\Session Manager\kernel" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\System\CurrentControlSet\Control\Session Manager\Executive" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\System\CurrentControlSet\Control\Session Manager" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\System\CurrentControlSet\Control\Power\ModernSleep" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\System\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\System\CurrentControlSet\Control" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f >NUL 2>&1

:: Settings based on current Windows Version
for /f >NUL 2>&1 "tokens=3*" %%A in ('reg query "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v "ProductName"') do set "WinVersion=%%A %%B"
ECHO %WinVersion% | find "Windows 7" > nul
if %errorlevel% equ 0 (
powercfg -attributes sub_processor 5d76a2ca-e8c0-402f-a133-2158492d58ad -ATTRIB_HIDE >NUL 2>&1
powercfg -setacvalueindex scheme_current sub_processor 5d76a2ca-e8c0-402f-a133-2158492d58ad 1 >NUL 2>&1
)
ECHO %WinVersion% | find "Windows 8.1" > nul
if %errorlevel% equ 0 (
:: Disabling mitigation (Windows 8.1)
REG ADD "HKLM\System\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationOptions" /t REG_BINARY /d "00000000000000000000000000000000" /f >NUL 2>&1
REG ADD "HKLM\System\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationAuditOptions" /t REG_BINARY /d "00000000000000000000000000000000" /f >NUL 2>&1
:: Manages power policy and power policy notification delivery / Bricks Windows 7
REG ADD "HKLM\System\CurrentControlSet\Services\Power" /v "Start" /t REG_DWORD /d "4" /f >NUL 2>&1
:: IDE Channel / Bricks Windows 7
REG ADD "HKLM\System\CurrentControlSet\Services\atapi" /v "Start" /t REG_DWORD /d "4" /f >NUL 2>&1
)
ECHO %WinVersion% | find "Windows 10" > nul
if %errorlevel% equ 0 (
:: Disabling mitigation (Windows 10)
REG ADD "HKLM\System\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationOptions" /t REG_BINARY /d "22222222222222222002000000200000" /f >NUL 2>&1
REG ADD "HKLM\System\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationAuditOptions" /t REG_BINARY /d "20000020202022220000000000000000" /f >NUL 2>&1
:: Manages power policy and power policy notification delivery / Bricks Windows 7
REG ADD "HKLM\System\CurrentControlSet\Services\Power" /v "Start" /t REG_DWORD /d "4" /f >NUL 2>&1
:: IDE Channel / Bricks Windows 7
REG ADD "HKLM\System\CurrentControlSet\Services\atapi" /v "Start" /t REG_DWORD /d "4" /f >NUL 2>&1
)

:: Disable Windows Help
taskkill /f >NUL 2>&1 /im HelpPane.exe
takeown /f >NUL 2>&1 %WinDir%\HelpPane.exe
icacls %WinDir%\HelpPane.exe /deny Everyone:(X)

ECHO BCD Params...
:: Disable synthetic timer
BCDEDIT /deletevalue useplatformclock >NUL 2>&1
:: Constantly pool interrupts, dynamic tick was implemented as a power saving feature for laptops
BCDEDIT /set disabledynamictick yes >NUL 2>&1
:: Disable Data Execution Prevention Security Feature
BCDEDIT /set {current} nx OptOut >NUL 2>&1
BCDEDIT /set {current} nx AlwaysOff >NUL 2>&1
:: Disable Emergency Management Services
BCDEDIT /set ems No >NUL 2>&1
BCDEDIT /set bootems No >NUL 2>&1
:: Disable code integrity services
BCDEDIT /set integrityservices disable >NUL 2>&1
:: Disable TPM Boot Entropy policy Security Feature
BCDEDIT /set tpmbootentropy ForceDisable >NUL 2>&1
:: Change bootmenupolicy to be able to F8
BCDEDIT /set bootmenupolicy Legacy >NUL 2>&1
:: Disable kernel debugger
BCDEDIT /set debug No >NUL 2>&1
:: Disable Virtual Secure Mode from Hyper-V
BCDEDIT /set hypervisorlaunchtype Off >NUL 2>&1
:: Disable the Controls the loading of Early Launch Antimalware (ELAM) drivers
BCDEDIT /set disableelamdrivers Yes >NUL 2>&1
:: Disable some of the kernel memory mitigations, gamers dont use SGX under any possible circumstance
BCDEDIT /set isolatedcontext No >NUL 2>&1
BCDEDIT /set allowedinmemorysettings 0x0 >NUL 2>&1
:: Disable DMA memory protection and cores isolation
BCDEDIT /set vm No >NUL 2>&1
BCDEDIT /set vsmlaunchtype Off >NUL 2>&1
:: Enable X2Apic and enable Memory Mapping for PCI-E devices
:: (for the best results enable MSI mode for all devices using MSI utility)
BCDEDIT /set x2apicpolicy Enable >NUL 2>&1
BCDEDIT /set configaccesspolicy Default >NUL 2>&1
BCDEDIT /set MSI Default >NUL 2>&1
BCDEDIT /set usephysicaldestination No >NUL 2>&1
BCDEDIT /set usefirmwarepcisettings No >NUL 2>&1
BCDEDIT /set tscsyncpolicy Enhanced >NUL 2>&1
BCDEDIT /set useplatformclock No >NUL 2>&1
BCDEDIT /set useplatformtick Yes >NUL 2>&1
BCDEDIT /set uselegacyapicmode No >NUL 2>&1
BCDEDIT /set sos No >NUL 2>&1
BCDEDIT /set pae ForceDisable >NUL 2>&1
BCDEDIT /set pciexpress forcedisable >NUL 2>&1

BCDEDIT /set xsavedisable Yes >NUL 2>&1







