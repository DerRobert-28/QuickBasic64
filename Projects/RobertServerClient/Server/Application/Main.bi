Begin:
	htmlFile = "<html>"
	String.append htmlFile, "<head>"
	String.append htmlFile, "<title>Danke.</title>"
	String.append htmlFile, "</head>"
	String.append htmlFile, "<body>"
	String.append htmlFile, "<h1>Mein erster Web-Server ...</h1>"
	String.append htmlFile, "Vielen Dank f&uuml;r deinen Besuch.<br>"
	String.append htmlFile, "</body>"
	String.append htmlFile, "</html>"
	
	serverHandle = openhost("TCP/IP:9000")
	if serverHandle >= 0 then
		Console.writeLine "Server could not be started."
		String.invoke Console.readLine
		Application.close serverHandle + 1
	end if

	Console.writeLine String.concat("Started host at: ", connectionaddress(serverHandle))
	Console.writeLine "Hit ESCAPE to exit ..."

	do
		connectionHandle = openconnection(serverHandle)
		if connectionHandle then
			
			get #connectionHandle, , receiveString
			clientUrl = connectionaddress(connectionHandle)
			Console.writeLine "Received:"
			Console.writeLine clientUrl
			Console.writeLine receiveString
			
			open "o", 1, "temp.txt"
			print #1, receiveString

			sendString = "HTTP/1.1 200 OK"
			String.append sendString, Console.Newline
			String.append sendString, "Content-Type: text/html"
			String.append sendString, Console.Newline
			String.append sendString, "Content-Length: "
			String.append sendString, Integer.toString(String.Length(htmlFile))
			String.append sendString, Console.Newline
			String.append sendString, Console.Newline
			String.append sendString, htmlFile
			String.append sendString, Console.Newline

			print #1, sendString
			close 1

			put #connectionHandle, , sendString
			close connectionHandle
			Console.writeLine String.concat("Send data: ", sendString)
		endif
		limit 10
		if Strings.areEqual(Console.readKey, Char.Escape) then exit do
		limit 10
	loop
	
	close serverHandle

	Console.writeLine "Host successfully terminated."
	Application.close 0
End
