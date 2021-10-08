$Folders = "path-to-folder"

Get-ChildItem $Folders -Directory |  # Selects all folders at specific path. 
 ForEach-Object {Get-ChildItem $_.fullname -Directory | # Selects each directory under folders.
  Sort-Object LastWriteTime  -Descending | # This line orders directories. 
   Select-Object -Skip 2 | # skip first 2, you can change the number
    Remove-Item -Force  -Recurse } #add -Whatif flag to see which directories to be deleted. 
