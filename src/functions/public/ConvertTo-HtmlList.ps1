function ConvertTo-HtmlList {
    param (
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromPipeline = $true
        )]
        [string[]]$InputObject,
        [switch]$Ordered,
        [string]$Class
    )
    begin {

        if ($Ordered) {
            $ListType = 'ol'
        } else {
            $ListType = 'ul'
        }

        if ($Class) {
            $StringBuilder = [System.Text.StringBuilder]::new("<$ListType class=`"$Class`">")
        } else {
            $StringBuilder = [System.Text.StringBuilder]::new("<$ListType>")
        }

    }
    process {
        ForEach ($ThisObject in $InputObject) {
            $null = $StringBuilder.Append("<li>$ThisObject</li>")
        }
    }
    end {
        $null = $StringBuilder.Append("</$ListType>")
        $StringBuilder.ToString()
    }
}
