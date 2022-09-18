

function ConvertTo-BootstrapTableScript {

    param (

        # ID of the table to format with the bootstrapTable() JavaScript method.
        [Parameter(Mandatory)]
        [string]$TableId,

        # Used for the columns Property
        [Parameter(Mandatory)]
        [string]$ColumnJson,

        # Used for the data Property
        [Parameter(Mandatory)]
        [string]$DataJson,

        # CSS classes to apply to the table
        [string]$Classes = 'table table-striped table-hover table-sm',

        #Name of the function to use to style the table header row
        [string]$HeaderStyle = 'headerStyle'

    )

    $null = $ResultingJavaScript = [System.Text.StringBuilder]::new()
    $null = $ResultingJavaScript.AppendLine('<script>')
    $null = $ResultingJavaScript.AppendLine('  $(function() {')
    $null = $ResultingJavaScript.Append("    `$('")
    $null = $ResultingJavaScript.Append($TableId)
    $null = $ResultingJavaScript.AppendLine("').bootstrapTable({")
    $null = $ResultingJavaScript.AppendLine("      classes: '$Classes'")
    $null = $ResultingJavaScript.AppendLine("      headerStyle: '$HeaderStyle'")
    $null = $ResultingJavaScript.AppendLine("      columns: $ColumnJson")
    $null = $ResultingJavaScript.AppendLine("      data: $DataJson")
    $null = $ResultingJavaScript.AppendLine('    });')

    ########
    # Only one of these two blocks of 4 lines is needed, but I need to get the JavaScript working.  For now the template has these attributes hard-coded
    $null = $ResultingJavaScript.Append("    `$('")
    $null = $ResultingJavaScript.Append($TableId)
    $null = $ResultingJavaScript.Append("').attr(")
    $null = $ResultingJavaScript.AppendLine('"data-filter-control",true); //not working, but seems to result in same final element attributes so not sure why')

    $null = $ResultingJavaScript.Append("    //`$('")
    $null = $ResultingJavaScript.Append($TableId)
    $null = $ResultingJavaScript.Append("').prop(")
    $null = $ResultingJavaScript.AppendLine('"data-filter-control","true"); //does not work, and results in different final element attributes than when hard-coding the property into the HTML table')
    #
    ########

    $null = $ResultingJavaScript.AppendLine('  })')
    $null = $ResultingJavaScript.AppendLine('</script>')

    return $ResultingJavaScript.ToString()

}
