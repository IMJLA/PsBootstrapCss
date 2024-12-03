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
        [string]$Class = 'h-100 p-1 bg-light border rounded-3',

        [string]$Id
    )

    begin {
        if ($Id) {
            $DivId = " id=`"$Id`""
        }
    }

    process {
        ForEach ($String in $Text) {
            #"<div class=`"alert alert-$($Class.ToLower())`"><strong>$Class!</strong> $String</div>"
            "<div$DivId class=`"alert alert-$($Class.ToLower())`">$String</div>"
        }
    }

}
