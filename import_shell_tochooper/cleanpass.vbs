Set args = WScript.Arguments
if args.count<>1 then msgbox "db.mdb":wscript.quit
Set conn =CreateObject("ADODB.Connection")
pwd="��"&chr(13)&chr(9)&chr(10)&"��"&chr(2)
connStr = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & args(0)&" ;Mode=Share Deny Read|Share Deny Write;Persist Security Info=False;Jet OLEDB:Database Password="&pwd&";"
conn.open connstr
conn.execute("ALTER DATABASE Password [123456] ["&pwd&"]")
conn.close
msgbox "done"