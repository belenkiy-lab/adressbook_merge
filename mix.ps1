$File1  = [xml](Get-Content .\test1.mrk -encoding UTF8)
$File2  = [xml](Get-Content .\test2.mrk -encoding UTF8)
$File3  = [xml](Get-Content .\test3.mrk -encoding UTF8)

ForEach ($XmlNode in $File2.DocumentElement.ChildNodes) {
    $File1.DocumentElement.AppendChild($File1.ImportNode($XmlNode, $true))
}

ForEach ($XmlNode in $File3.DocumentElement.ChildNodes) {
    $File1.DocumentElement.AppendChild($File1.ImportNode($XmlNode, $true))
}

$File1.Save(".\result.mrk")