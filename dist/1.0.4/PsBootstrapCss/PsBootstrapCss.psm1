
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
function New-BootstrapAlert {
    <#
        .SYNOPSIS
            Creates a new HTML div that uses the Bootstrap alert class
        .DESCRIPTION
            Creates a new HTML div that uses the Bootstrap alert class
        .OUTPUTS
            A string wih the HTML code for the div
        .EXAMPLE
            New-BootstrapAlert -Text 'blah'

            This example returns the following string:
            '<div class="alert alert-info"><strong>Info!</strong> blah</div>'
    #>
    [CmdletBinding()]
    param(
        #The HTML element to apply the Bootstrap column to
        [Parameter(
            Position = 0,
            ValueFromPipeline,
            ValueFromPipelineByPropertyName
        )]
        [string[]]$Text,

        [Parameter(
            Position = 1
        )]
        [string]$Class = 'Info'
    )
    begin{}
    process{
        ForEach ($String in $Text) {
            #"<div class=`"alert alert-$($Class.ToLower())`"><strong>$Class!</strong> $String</div>"
            "<div class=`"alert alert-$($Class.ToLower())`">$String</div>"
        }
    }
    end{}
    
}
function New-BootstrapColumn {
    <#
        .SYNOPSIS
            Wraps HTML elements in a Bootstrap column of the specified width
        .DESCRIPTION
            Creates a Bootstrap container which contains a row which contains a column of the specified width
        .OUTPUTS
            A string wih the code for the Bootstrap container
        .EXAMPLE
            New-BootstrapColumn -Html '<h1>Heading</h1>'

            This example returns the following string:
            '<div class="container"><div class="row justify-content-md-center"><div class="col col-lg-12"><h1>Heading</h1></div></div></div>'
    #>
    [CmdletBinding()]
    param(
        #The HTML element to apply the Bootstrap column to
        [Parameter(
            Position = 0,
            ValueFromPipeline,
            ValueFromPipelineByPropertyName
        )]
        [System.String[]]$Html,

        [Parameter(
            Position = 1
        )]
        [Int]$Width = 12
    )
    begin{}
    process{
        ForEach ($OldHtml in $Html) {
            [String]$NewHtml = "<div class=`"container`"><div class=`"row justify-content-md-center`"><div class=`"col col-lg-$Width`">$OldHtml</div></div></div>"
            Write-Output $NewHtml
        }
    }
    end{}
    
}
function New-BootstrapDiv {
    <#
        .SYNOPSIS
            Creates a new HTML div that uses the Bootstrap alert class
        .DESCRIPTION
            Creates a new HTML div that uses the Bootstrap alert class
        .OUTPUTS
            A string wih the HTML code for the div
        .EXAMPLE
            New-BootstrapAlert -Text 'blah'

            This example returns the following string:
            '<div class="alert alert-info"><strong>Info!</strong> blah</div>'
    #>
    [CmdletBinding()]
    param(
        #The HTML element to apply the Bootstrap column to
        [Parameter(
            Position = 0,
            ValueFromPipeline,
            ValueFromPipelineByPropertyName
        )]
        [string[]]$Text,

        [Parameter(
            Position = 1
        )]
        [string]$Class = 'h-100 p-1 bg-light border rounded-3'
    )
    begin{}
    process{
        ForEach ($String in $Text) {
            #"<div class=`"alert alert-$($Class.ToLower())`"><strong>$Class!</strong> $String</div>"
            "<div class=`"alert alert-$($Class.ToLower())`">$String</div>"
        }
    }
    end{}
    
}
function New-BootstrapGrid {
    <#
        .SYNOPSIS
            Wraps HTML elements in a Bootstrap column of the specified width
        .DESCRIPTION
            Creates a Bootstrap container which contains a row which contains a column of the specified width
        .OUTPUTS
            A string wih the code for the Bootstrap container
        .EXAMPLE
            New-BootstrapColumn -Html '<h1>Heading</h1>'

            This example returns the following string:
            '<div class="container"><div class="row justify-content-md-center"><div class="col col-lg-12"><h1>Heading</h1></div></div></div>'
    #>
    [CmdletBinding()]
    param(
        #The HTML element to apply the Bootstrap column to
        [Parameter(
            Position = 0,
            ValueFromPipeline,
            ValueFromPipelineByPropertyName
        )]
        [System.String[]]$Html,

        [string]$Justify = 'Center'
    )
    begin{
        $String = @()
        [decimal]$ExactWidth = 12 / ($Html | Measure-Object).Count
        [int]$Width = [Math]::Floor($ExactWidth)
        $String += "<div class=`"container`"><div class=`"row justify-content-md-$($Justify.ToLower())`">"
    }
    process{
        ForEach ($OldHtml in $Html) {
            $String += "<div class=`"col col-lg-$Width`">$OldHtml</div>"
        }
    }
    end{
        $String += "</div></div>"
        $String -join ''
    }
    
}
Function New-BootstrapList {
    <#
        .SYNOPSIS
            Upgrade a boring HTML unordered list to a fancy Bootstrap list group
        .DESCRIPTION
            Applies the Bootstrap 'table table-striped' class to an HTML table
        .OUTPUTS
            A string wih the code for the Bootstrap table
        .EXAMPLE
            New-BootstrapTable -HtmlTable '<table><tr><th>Name</th><th>Id</th></tr><tr><td>ALMon</td><td>5540</td></tr></table>'

            This example returns the following string:
            '<table class="table table-striped"><tr><th>Name</th><th>Id</th></tr><tr><td>ALMon</td><td>5540</td></tr></table>'
        .NOTES
            Author: Jeremy La Camera
            Last Updated: 11/6/2016
    #>
    [CmdletBinding()]
    param(
        #The HTML table to apply the Bootstrap striped table CSS class to
        [Parameter(
            Position = 0,
            ValueFromPipeline,
            ValueFromPipelineByPropertyName
        )]
        [System.String[]]$HtmlTable
    )
    begin{}
    process{
        ForEach ($Table in $HtmlTable) {
            [String]$NewTable = $Table -replace '<table>','<table class="table table-striped">'
            Write-Output $NewTable
        }
    }
    end{}
}
function New-BootstrapPanel {
    <#
        .SYNOPSIS
            Wraps HTML elements in a Bootstrap column of the specified width
        .DESCRIPTION
            Creates a Bootstrap container which contains a row which contains a column of the specified width
        .OUTPUTS
            A string wih the code for the Bootstrap container
        .EXAMPLE
            New-BootstrapColumn -Html '<h1>Heading</h1>'

            This example returns the following string:
            '<div class="container"><div class="row justify-content-md-center"><div class="col col-lg-12"><h1>Heading</h1></div></div></div>'
    #>
    [CmdletBinding()]
    param(
        #The HTML element to apply the Bootstrap column to
        [Parameter(
            Position = 0,
            ValueFromPipeline,
            ValueFromPipelineByPropertyName
        )]
        [System.String[]]$Html,

        [string]$Class = 'default',

        [string]$Heading,

        [string]$Footer
    )
    begin{
        $String = @()
        $String += "<div class=`"panel panel-$($Class.ToLower())`">"
        if ($Heading) {
            $String += "<div class=`"panel-heading`">$Heading</div>"
        }
    }
    process{
        ForEach ($OldHtml in $Html) {
            $String += "<div class=`"panel-body`">$OldHtml</div>"
        }
    }
    end{
        if ($Footer) {
            $String += "<div class=`"panel-footer`">$Footer</div>"
        }
        $String += "</div>"
        $String -join ''
    }
    
}
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
        .NOTES
            Author: Jeremy La Camera
            Last Updated: 11/6/2016
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
        [String]$TemplatePath = "$PSScriptRoot\data\Templates\ReportTemplate.html"
    )
    begin {
        [String]$Report = Get-Content $TemplatePath
        if ($null -eq $report) { Write-Host "$TemplatePath not loaded.  Failure.  Error." }
    }
    process {

        # Turn URLs into hyperlinks
        $URLs = ($Body | Select-String -Pattern 'http[s]?:\/\/[^\s\"\<\>\#\%\{\}\|\\\^\~\[\]\`]*' -AllMatches).Matches.Value | Sort-Object -Unique
        foreach ($URL in $URLs) {
            if ($URL.Length -gt 50) {
                $Body = $Body.Replace($URL, "<a href=$URL>$($URL[0..46] -join '')...</a>")
            } else {
                $Body = $Body.Replace($URL, "<a href=$URL>$URL</a>")
            }
        }


        $Report = $Report -replace '_ReportTitle_', $Title
        $Report = $Report -replace '_ReportDescription_', $Description
        $Report = $Report -replace '_ReportBody_', $Body

    }
    end {
        Write-Output $Report
    }
}
Function New-BootstrapTable {
    <#
        .SYNOPSIS
            Upgrade a boring HTML table to a fancy Bootstrap table
        .DESCRIPTION
            Applies the Bootstrap 'table table-striped' class to an HTML table
        .OUTPUTS
            A string wih the code for the Bootstrap table
        .EXAMPLE
            New-BootstrapTable -HtmlTable '<table><tr><th>Name</th><th>Id</th></tr><tr><td>ALMon</td><td>5540</td></tr></table>'

            This example returns the following string:
            '<table class="table table-striped"><tr><th>Name</th><th>Id</th></tr><tr><td>ALMon</td><td>5540</td></tr></table>'
        .NOTES
            Author: Jeremy La Camera
            Last Updated: 11/6/2016
    #>
    [CmdletBinding()]
    param(
        #The HTML table to apply the Bootstrap striped table CSS class to
        [Parameter(
            Position = 0,
            ValueFromPipeline,
            ValueFromPipelineByPropertyName
        )]
        [System.String[]]$HtmlTable
    )
    begin{}
    process{
        ForEach ($Table in $HtmlTable) {
            [String]$NewTable = $Table -replace '<table>','<table class="table table-striped">'
            Write-Output $NewTable
        }
    }
    end{}
}
function New-HtmlAnchor{
    <#
        .SYNOPSIS
            Build a new HTML anchor
        .DESCRIPTION
            Inserts the specified HTML element into an HTML anchor with the specified name
        .OUTPUTS
            Outputs the heading as a string
        .EXAMPLE
            New-HtmlAnchor -Element "<h1>SampleHeader</h1>" -Name "AnchorToSampleHeader"
    #>
    [CmdletBinding()]
    param(

        #The text of the heading
        [Parameter(
            Position=0,
            ValueFromPipeline=$true,
            Mandatory=$true
        )]
        [String[]]$Element,

        #The heading level to generate (New-HtmlHeading can create h1, h2, h3, h4, h5, or h6 tags)
        [Parameter(Mandatory)]
        [String]$Name

    )
    begin{}
    process{
        Write-Output "<h$Level>$Text</h$Level>"
    }
    end{}
}
function New-HtmlHeading{
    <#
        .SYNOPSIS
            Build a new HTML heading
        .DESCRIPTION
            Inserts the specified text into an HTML heading of the specified level
        .OUTPUTS
            Outputs the heading as a string
        .EXAMPLE
            New-HtmlHeading -Text 'Example Heading'
    #>
    [CmdletBinding()]
    param(

        #The text of the heading
        [Parameter(
            Position=0,
            ValueFromPipeline=$True
        )]
        [String[]]$Text,

        #The heading level to generate (New-HtmlHeading can create h1, h2, h3, h4, h5, or h6 tags)
        [ValidateRange(1,6)]
        [Int16]$Level = 1

    )
    begin{}
    process{
        Write-Output "<h$Level>$Text</h$Level>"
    }
    end{}
}
function New-HtmlParagraph {
    <#
        .SYNOPSIS
            Build a new HTML heading
        .DESCRIPTION
            Inserts the specified text into an HTML heading of the specified level
        .OUTPUTS
            Outputs the heading as a string
        .EXAMPLE
            New-HtmlHeading -Text 'Example Heading'
    #>
    [CmdletBinding()]
    param(

        #The text of the heading
        [Parameter(
            Position=0,
            ValueFromPipeline=$True
        )]
        [String[]]$Text,

        #The heading level to generate (New-HtmlHeading can create h1, h2, h3, h4, h5, or h6 tags)
        [ValidateRange(1,6)]
        [Int16]$Level = 1

    )
    begin{}
    process{
        Write-Output "<h$Level>$Text</h$Level>"
    }
    end{}
}
<#
# Add any custom C# classes as usable (exported) types
$CSharpFiles = Get-ChildItem -Path "$PSScriptRoot\*.cs"
ForEach ($ThisFile in $CSharpFiles) {
    Add-Type -Path $ThisFile.FullName -ErrorAction Stop
}
#>
Export-ModuleMember -Function @('ConvertTo-HtmlList','New-BootstrapAlert','New-BootstrapColumn','New-BootstrapDiv','New-BootstrapGrid','New-BootstrapList','New-BootstrapPanel','New-BootstrapReport','New-BootstrapTable','New-HtmlAnchor','New-HtmlHeading','New-HtmlParagraph')


