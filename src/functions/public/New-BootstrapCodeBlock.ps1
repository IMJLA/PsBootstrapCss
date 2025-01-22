function New-BootstrapCodeBlock {

    [CmdletBinding()]

    param(
        #The HTML element to apply the Bootstrap column to
        [Parameter(
            Position = 0,
            ValueFromPipeline,
            ValueFromPipelineByPropertyName
        )]
        [string[]]$Text,

        [switch]$Inline
    )

    process {

        ForEach ($String in $Text) {

            $Code = "<code>$String</code>"

            if ($Inline) {
                "<pre>$Code</pre>"
            } else {
                $Code
            }

        }

    }

}
