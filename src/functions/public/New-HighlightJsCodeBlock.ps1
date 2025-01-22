function New-HighlightJsCodeBlock {

    [CmdletBinding()]

    param(
        #The HTML element to apply the Bootstrap column to
        [Parameter(
            Position = 0,
            ValueFromPipeline,
            ValueFromPipelineByPropertyName
        )]
        [string[]]$Text,

        [string]$Language = 'powershell',

        [switch]$Inline
    )

    process {

        ForEach ($String in $Text) {

            $Code = "<code class=`"language-$Language`">$String</code>"

            if ($Inline) {
                "<pre>$Code</pre>"
            } else {
                $Code
            }

        }

    }

}
