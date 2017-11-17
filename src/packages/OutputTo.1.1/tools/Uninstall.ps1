#First some common params, delivered by the nuget package installer 
param($installPath, $toolsPath, $package, $project) 

$targetPath = "`$(SolutionDir)\packages\$($package.Id).$($package.Version)\tools\OutputTo.targets"

Import-Module (Join-Path $toolsPath ModifyProject.psm1)

Remove-Import $targetPath
