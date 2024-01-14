function New-BootstrapReport {
    <#
        .SYNOPSIS
            Build a new Bootstrap report based on an HTML template
        .DESCRIPTION
            Inserts the specified title, description, and body into the HTML report template
        .OUTPUTS
            Outputs a complete HTML report as a string
        .EXAMPLE
            New-BootstrapReport -Title 'ReportTitle' -Description 'This is the report description' -Body 'This is the body of the report'
    #>
    [CmdletBinding()]
    param(

        #Title of the report (displayed at the top)
        [String]$Title,

        #Description of the report (displayed below the Title)
        [String]$Description,

        #Body of the report (tables, list groups, etc.)
        [String[]]$Body,

        #The path to the HTML report template that includes the Boostrap CSS
        [String]$TemplatePath,

        [switch]$JavaScript,

        #The path to the JavaScript (inside of <script> tags)
        [String]$ScriptPath,

        [String]$AdditionalScriptHtml

    )

    if ($PSBoundParameters.ContainsKey('TemplatePath')) {
        [String]$Report = Get-Content $TemplatePath -Raw
        if ($null -eq $Report) { Write-Warning "$TemplatePath not loaded.  Failure." }
    } else {
        [String]$Report = Get-BootstrapTemplate
    }

    if ($JavaScript) {
        [string]$ReportScript = Get-JavaScript
        $ReportScript = "$ReportScript$AdditionalScriptHtml"
    } else {
        $ReportScript = $AdditionalScriptHtml
    }

    # Turn URLs into hyperlinks
    $URLs = ($Body | Select-String -Pattern 'http[s]?:\/\/[^\s\"\<\>\#\%\{\}\|\\\^\~\[\]\`]*' -AllMatches).Matches.Value | Sort-Object -Unique
    foreach ($URL in $URLs) {
        if ($URL.Length -gt 50) {
            $Body = $Body.Replace($URL, "<a href=$URL>$($URL[0..46] -join '')...</a>")
        } else {
            $Body = $Body.Replace($URL, "<a href=$URL>$URL</a>")
        }
    }

    $Report = $Report.Replace('_ReportTitle_', $Title)
    $Report = $Report.Replace('_ReportDescription_', $Description)
    $Report = $Report.Replace('_ReportBody_', $Body)
    $Report = $Report.Replace('_ReportScript_', $ReportScript)

    return $Report
}
