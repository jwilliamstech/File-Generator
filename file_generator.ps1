$dummyFiles = Get-ChildItem C:\Users\JoshuaWilliams\Documents\ocsreptest\50kb | Measure-Object
$imageExtensions = "gif","jpeg", "tiff", "png", "pdf"
$nameVerbs = "run", "jump", "crawl", "climb", "fly", "sleep", "sit", "laugh", "teach", "dive", "sneak", "play", "rest", "ride", "run", "fall", "cry", "learn", "show", "help", "amaze", "fight", "get", "do", "be", "listen"
$nameNouns = "rob", "greg", "mike", "sam", "john", "fred", "sally", "lara", "phil", "lucy", "ricky", "larry", "curly", "moe", "connor", "nic", "nick", "tony", "dan", "josh", "kevin", "linda", "alex", "alexis", "brad", "don"
$fileCount = $dummyFiles.Count


if ($fileCount -lt 1000) {
    do
        {

        $randVerbs = $nameVerbs | Get-Random
        $randNouns = $nameNouns | Get-Random
        $fileNames = $randVerbs + $randNouns
        $fileTypes = $imageExtensions | Get-Random

        $fileCreate = New-object System.IO.FileStream C:\Users\JoshuaWilliams\Documents\ocsreptest\50kb\$fileNames.$fileTypes, Create, ReadWrite
        $fileCreate.SetLength(50kb)
        $fileCreate.Close()

        $dummyFiles = Get-ChildItem C:\Users\JoshuaWilliams\Documents\ocsreptest\50kb | Measure-Object
        $fileCount = $dummyFiles.Count

        }
        until ($fileCount -eq 1000)
}
