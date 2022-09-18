

function ConvertTo-BootstrapTableScript {

    param (

        # ID of the table to format with the bootstrapTable() JavaScript method.
        [Parameter(Mandatory)]
        [string]$TableId,

        # CSS classes to apply to the table
        [string]$Classes = 'table table-striped table-hover table-sm',

        #Name of the function to use to style the table header row
        [string]$HeaderStyle = 'headerStyle',

        # Used for the columns Property
        [Parameter(Mandatory)]
        [string]$ColumnJson,

        # Used for the data Property
        [Parameter(Mandatory)]
        [string]$DataJson

    )

    $ResultingJavaScript = [System.Text.StringBuilder]::new()
    $ResultingJavaScript.AppendLine('<script>')
    $ResultingJavaScript.AppendLine('  $(function() {')
    $ResultingJavaScript.Append("    `$('")
    $ResultingJavaScript.Append($TableId)
    $ResultingJavaScript.AppendLine("').bootstrapTable({")
    $ResultingJavaScript.AppendLine("      classes: '$Classes'")
    $ResultingJavaScript.AppendLine("      headerStyle: '$HeaderStyle'")
    $ResultingJavaScript.AppendLine("      columns: $ColumnJson")
    $ResultingJavaScript.AppendLine("      data: $DataJson")
    $ResultingJavaScript.AppendLine('    });')

    ########
    # Only one of these two blocks of 4 lines is needed, but I need to get the JavaScript working.  For now the template has these attributes hard-coded
    $ResultingJavaScript.Append("    `$('")
    $ResultingJavaScript.Append($TableId)
    $ResultingJavaScript.Append("').attr(")
    $ResultingJavaScript.AppendLine('"data-filter-control",true); //not working, but seems to result in same final element attributes so not sure why')

    $ResultingJavaScript.Append("    //`$('")
    $ResultingJavaScript.Append($TableId)
    $ResultingJavaScript.Append("').prop(")
    $ResultingJavaScript.AppendLine('"data-filter-control","true"); //does not work, and results in different final element attributes than when hard-coding the property into the HTML table')
    #
    ########

    $ResultingJavaScript.AppendLine('  })')
    $ResultingJavaScript.AppendLine('</script>')

    return $ResultingJavaScript.ToString()

}
