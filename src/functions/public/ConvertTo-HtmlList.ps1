function ConvertTo-HtmlList {
    Param (
        # Array of strings to convert to an HTML unordered list
        [parameter(Mandatory=$true,Position=0,ValueFromPipeline=$true)]
        [ValidateNotNullOrEmpty()]
        [string[]]$InputObject
    )
    begin {
        $UL = @()
        $UL += '<ul>'
    }
    Process {
        foreach ($ThisObject in $InputObject) {
            $UL += "<li>$ThisObject</li>"}
    }
    end {
        $UL += '</ul>'
        Write-Output $UL
    }

}