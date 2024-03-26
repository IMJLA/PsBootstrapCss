<#
# Add any custom C# classes as usable (exported) types
$CSharpFiles = Get-ChildItem -Path "$PSScriptRoot\*.cs"
ForEach ($ThisFile in $CSharpFiles) {
    Add-Type -Path $ThisFile.FullName -ErrorAction Stop
}
#>
Export-ModuleMember -Function @('ConvertTo-BootstrapJavaScriptTable','ConvertTo-BootstrapListGroup','ConvertTo-BootstrapTableScript','ConvertTo-HtmlList','Get-BootstrapTemplate','Get-JavaScript','New-BootstrapAlert','New-BootstrapColumn','New-BootstrapDiv','New-BootstrapDivWithHeading','New-BootstrapGrid','New-BootstrapList','New-BootstrapPanel','New-BootstrapReport','New-BootstrapTable','New-HtmlAnchor','New-HtmlHeading','New-HtmlParagraph')




































