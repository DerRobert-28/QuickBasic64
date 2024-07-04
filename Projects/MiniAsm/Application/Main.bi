pathToCompiler = cwd$
pathToSourceFile = startdir$
paramStr = String.trim$(command$)
if String.isEmpty(paramStr) then
	Console.log 0, "No filename specified", Format.doubleQuote(String.Empty)
	Application.return 1
endif
chdir pathToSourceFile
:
inFileStr = String.concat(paramStr, MiniAsmFileExtension)
if not File.exists(inFileStr) then
	Console.log 0, "File not found", inFileStr
	Application.return 2
endif
inFile = File.open(inFileStr, FileAccess.Read)
:
outFileStr = String.concat(paramStr, BinaryFileExtension)
if File.exists(outFileStr) then
	Console.log 0, "File already exists", outFileStr
	Application.return 3
endif
outFile = File.open(outFileStr, FileAccess.Write)
if outFile = NULL then
	Console.log 0, "Illegal file name", outFileStr
	Application.return 4
endif
:
lineCounter = 0
readLine = String.Empty
targetFileExtension = BinaryFileExtension
do
	isSuccess = File.readToken(inFile, lineCounter, readLine, token)
	if not isSuccess then exit do
	:
	if String.isEmpty(token) then
		token = String.ignore(token)
		:
	elseif String.isInteger(token) then
		isSuccess = Integer64.parse(token, tokenValue)
		if not isSuccess then
			Console.log lineCounter, "Integer overflow", token
			File.closeAllAndDelete outFileStr
			Application.return 5
		endif
		File.writeToken outFile, tokenValue
		:
	elseif String.startsWith(token, Char.Ampersand) then
		workToken = String.subString(token, 1)
		if String.isOctalNumber(workToken) then
			isSuccess = Integer64.parse(Format.OctalNumber(workToken), tokenValue)
			if not isSuccess then
				Console.log lineCounter, "Integer overflow", token
				File.closeAllAndDelete outFileStr
				Application.return 6
			endif
			File.writeToken outFile, tokenValue
		else
			Console.log lineCounter, "Illegal octal token", token
			File.closeAllAndDelete outFileStr
			Application.return 7
		endif
		:
	elseif String.startsWith(token, Char.Apostrophe) then
		workToken = String.SubString(token, 1)
		if not String.endsWith(workToken, Char.Apostrophe) then
			Console.log lineCounter, "Illegal character token", token
			File.closeAllAndDelete outFileStr
			Application.return 8
		endif
		workToken = String.SubStr(worktoken, 0, String.Length(workToken) - 1)
		if String.contains(workToken, Char.Apostrophe) then
			Console.log lineCounter, "Illegal character token", token
			File.closeAllAndDelete outFileStr
			Application.return 9
		endif
		File.write outFile, workToken
		:
	elseif String.startsWith(token, String.new(Char.AtSign, 2)) then
		chdir pathToCompiler
		workToken = String.subString(token, 2)
		includeFileStr = String.concat(workToken, MiniAsmFileExtension)
		if not File.exists(includeFileStr) then
			Console.log lineCounter, "File not found", includeFileStr
			File.closeAllAndDelete outFileStr
			Application.return 10
		endif
		includeFile = File.open(includeFileStr, FileAccess.Read)
		includeLines = String.Empty
		do until File.EndOf(includeFile)
			includeLine = String.trim(File.readLine(includeFile))
			if not String.isEmpty(includeLine) then
				String.append includeLines, String.concat(includeLine, Char.Comma)
			endif
		loop
		File.close includeFile
		readLine = String.concat(includeLines, readLine)
		chdir pathToSourceFile
		:
	elseif String.startsWith(token, Char.AtSign) then
		workToken = String.subString(token, 1)
		includeFileStr = String.concat(workToken, MiniAsmFileExtension)
		if not File.exists(includeFileStr) then
			Console.log lineCounter, "File not found", includeFileStr
			File.closeAllAndDelete outFileStr
			Application.return 10
		endif
		includeFile = File.open(includeFileStr, FileAccess.Read)
		includeLines = String.Empty
		do until File.EndOf(includeFile)
			includeLine = String.trim(File.readLine(includeFile))
			if not String.isEmpty(includeLine) then
				String.Append includeLines, String.concat(includeLine, Char.Comma)
			endif
		loop
		File.close includeFile
		readLine = String.concat(includeLines, readLine)
		:
	elseif String.startsWith(token, Char.Dollar) then
		workToken = String.subString(token, 1)
		if String.isHexadecimalNumber(workToken) then
			isSuccess = Integer64.parse(Format.HexadecimalNumber(workToken), tokenValue)
			if not isSuccess then
				Console.log lineCounter, "Integer overflow", token
				File.closeAllAndDelete outFileStr
				Application.return 11
			endif
			File.writeToken outFile, tokenValue
		else
			Console.log lineCounter, "Illegal hexadecimal token", token
			File.closeAllAndDelete outFileStr
			Application.return 12
		endif
		:
	elseif String.startsWith(token, Char.Percent) then
		workToken = String.SubString(token, 1)
		if String.isBinaryNumber(workToken) then
			isSuccess = Integer64.parse(Format.BinaryNumber(workToken), tokenValue)
			if not isSuccess then
				Console.log lineCounter, "Integer overflow", token
				File.closeAllAndDelete outFileStr
				Application.return 13
			endif
			File.writeToken outFile, tokenValue
		else
			Console.log lineCounter, "Illegal binary token", token
			File.closeAllAndDelete outFileStr
			Application.return 14
		endif
		:
	elseif String.startsWith(token, Char.Point) then
		workToken = String.trim(String.SubString(token, 1))
		if not String.isEmpty(workToken) then
			if String.Contains(workToken, Char.Point) then
				Console.log lineCounter, "Illegal target file type", String.concat(Char.Point, workToken)
				File.closeAllAndDelete outFileStr
				Application.return 15
			endif
			targetFileExtension = String.concat(Char.Point, String.toLower(workToken))
			if File.exists(String.concat(paramStr, targetFileExtension)) then
				Console.log lineCounter, "File type already exists", String.concat(Char.Point, workToken)
				File.closeAllAndDelete outFileStr
				Application.return 16
			endif
		endif
		:
	elseif String.startsWith(token, Char.Quote) then
		workToken = String.SubString(token, 1)
		if not String.endsWith(workToken, Char.Quote) then
			Console.log lineCounter, "Illegal string token", token
			File.closeAllAndDelete outFileStr
			Application.return 17
		endif
		workToken = String.SubStr(worktoken, 0, String.Length(workToken) - 1)
		if String.contains(workToken, Char.Quote) then
			Console.log lineCounter, "Illegal string token", token
			File.closeAllAndDelete outFileStr
			Application.return 18
		endif
		File.write outFile, workToken
		:
	elseif String.startsWith(token, Char.Semicolon) then
		readLine = String.Empty
		:
	elseif Strings.areEqual(token, "[addr_16]") then
		tokenValue = seek(outFile) - 1
		workToken = mk$(unsigned integer64, tokenValue)
		File.write outFile, String.SubStr(workToken, 0, 2)
		:
	elseif Strings.areEqual(token, "[addr_24]") then
		tokenValue = seek(outFile) - 1
		workToken = mk$(unsigned integer64, tokenValue)
		File.write outFile, String.SubStr(workToken, 0, 3)
		:
	elseif Strings.areEqual(token, "[addr_32]") then
		tokenValue = seek(outFile) - 1
		workToken = mk$(unsigned integer64, tokenValue)
		File.write outFile, String.SubStr(workToken, 0, 4)
		:
	elseif Strings.areEqual(token, "[addr_40]") then
		tokenValue = seek(outFile) - 1
		workToken = mk$(unsigned integer64, tokenValue)
		File.write outFile, String.SubStr(workToken, 0, 5)
		:
	elseif Strings.areEqual(token, "[addr_48]") then
		tokenValue = seek(outFile) - 1
		workToken = mk$(unsigned integer64, tokenValue)
		File.write outFile, String.SubStr(workToken, 0, 6)
		:
	elseif Strings.areEqual(token, "[addr_56]") then
		tokenValue = seek(outFile) - 1
		workToken = mk$(unsigned integer64, tokenValue)
		File.write outFile, String.SubStr(workToken, 0, 7)
		:
	elseif Strings.areEqual(token, "[addr_64]") then
		tokenValue = seek(outFile) - 1
		workToken = mk$(unsigned integer64, tokenValue)
		File.write outFile, workToken
		:
	elseif Strings.areEqual(token, "[addr_8]") then
		tokenValue = seek(outFile) - 1
		workToken = mk$(unsigned integer64, tokenValue)
		File.write outFile, Char.at(workToken, 0)
		:
	elseif Strings.areEqual(token, "begin") then
		isSuccess = File.readToken(inFile, lineCounter, readLine, workToken)
		if not isSuccess then
			Console.log lineCounter, "Unexpected end of file", "begin ... end"
			File.closeAllAndDelete outFileStr
			Application.return 19
		endif
		macroPointer1 = ubound(macroName)
		macroPointer2 = macroPointer1 + 1
		for each = 0 to macroPointer1
			condition1 = String.isEmpty(macroContent(each))
			condition2 = Strings.areEqual(macroName(each), token)
			if condition1 or condition2 then
				macroPointer2 = each
				exit for
			endif
		next
		if macroPointer2 > macroPointer1 then
			redim preserve macroContent(macroPointer2)
			redim preserve macroName(macroPointer2)
		endif
		:
		macroName(macroPointer2) = workToken
		macroContent(macroPointer2) = String.Empty
		do
			isSuccess = File.readToken(inFile, lineCounter, readLine, workToken)
			if not isSuccess then
				Console.log lineCounter, "Unexpected end of file", "begin ... end"
				File.closeAllAndDelete outFileStr
				Application.return 20
			endif
			if Strings.areEqual(workToken, "end") then exit do
			String.append macroContent(macroPointer2), String.concat(workToken, Char.Comma)
		loop
		:
	else
		macroPointer1 = -1
		for each = 0 to ubound(macroName)
			if Strings.areEqual(macroName(each), token) then
				macroPointer1 = each
				exit for
			endif
		next
		:
		if macroPointer1 < 0 then
			Console.log lineCounter, "Illegal token", token
			File.closeAllAnddelete outFileStr
			Application.return 21
		else
			readLine = String.concat(macroContent(macroPointer1), readLine)
		endif
		:
	endif
loop
File.Close inFile
File.Close outFile
:
if not Strings.areEqual(targetFileExtension, BinaryFileExtension) then
	File.rename outFileStr, String.concat(paramStr, targetFileExtension)
endif
:
Application.Return 0
