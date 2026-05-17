$word = New-Object -ComObject Word.Application
$word.Visible = 0
$doc = $word.Documents.Open("C:\Users\s.salem\Documents\Push notfication\Function Receipt - Push notfication .docx")
$text = $doc.Content.Text
$doc.Close()
$word.Quit()
Write-Output $text