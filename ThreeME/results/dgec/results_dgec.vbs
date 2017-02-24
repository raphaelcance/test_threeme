Option Explicit

Dim xlApp, xlBook

Set xlApp = CreateObject("Excel.Application")
Set xlBook = xlApp.Workbooks.Open(CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName) & "\results_dgec_template.xls", 0, True)
xlApp.Run "ImportCSV"
xlBook.Close
xlApp.Quit

Set xlBook = Nothing
Set xlApp = Nothing

WScript.Quit