function New-BootstrapDivWithHeading {
    param (
        [string]$HeadingText,
        [uint16]$HeadingLevel = 5,
        [string]$Content,
        [hashtable]$HeadingsAndContent,
        [string]$Class = 'h-100 p-1 bg-light border rounded-3'
    )

    if ($PSBoundParameters.ContainsKey('HeadingsAndContent')) {
        [string]$Text = ForEach ($Key in $HeadingsAndContent.Keys) {
            (New-HtmlHeading $Key -Level $HeadingLevel) +
            $HeadingsAndContent[$Key]
        }
    } else {
        $Text = (New-HtmlHeading $HeadingText -Level $HeadingLevel) +
        $Content
    }

    New-BootstrapDiv -Text $Text -Class $Class

}
