$includeonce

'$include:'../CpuFlag/set.bi'

sub CpuFlags.initialize (this as CpuFlags)
	CpuFlag.set this.ZeroFlag, 1
	CpuFlag.set this.SignFlag, 0
	CpuFlag.set this.CarryFlag, 0
end sub
