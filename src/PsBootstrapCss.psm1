<#
# Add any custom C# classes as usable (exported) types
$CSharpFiles = Get-ChildItem -Path "$PSScriptRoot\*.cs"
ForEach ($ThisFile in $CSharpFiles) {
    Add-Type -Path $ThisFile.FullName -ErrorAction Stop
}
#>
Export-ModuleMember -Function @('ConvertTo-HtmlList','New-BootstrapAlert','New-BootstrapColumn','New-BootstrapDiv','New-BootstrapGrid','New-BootstrapList','New-BootstrapPanel','New-BootstrapReport','New-BootstrapTable','New-HtmlAnchor','New-HtmlHeading','New-HtmlParagraph')

