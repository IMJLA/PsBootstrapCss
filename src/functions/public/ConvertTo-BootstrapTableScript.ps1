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
    $null = $ResultingJavaScript.AppendLine("      classes: '$Classes',")
    $null = $ResultingJavaScript.AppendLine("      headerStyle: '$HeaderStyle',")
    $null = $ResultingJavaScript.AppendLine("      columns: $ColumnJson,")
    $null = $ResultingJavaScript.AppendLine("      data: $DataJson,")
    $null = $ResultingJavaScript.AppendLine('      onClickRow: function (row, $element, field) {')
    $null = $ResultingJavaScript.AppendLine('          var fieldNames = Object.keys(row);')
    $null = $ResultingJavaScript.AppendLine('          if (fieldNames) {')
    $null = $ResultingJavaScript.AppendLine('              let firstField = fieldNames[0];')
    $null = $ResultingJavaScript.AppendLine("              let modifiedString = 'Div_' + row[firstField].replace(/[^A-Za-z0-9\-_]/g, '-');")
    $null = $ResultingJavaScript.AppendLine("              let uniqueHash = modifiedString + '_' + new Date().getTime();")
    $null = $ResultingJavaScript.AppendLine("              let tempDiv = document.createElement('div');")
    $null = $ResultingJavaScript.AppendLine('              tempDiv.id = uniqueHash;')
    $null = $ResultingJavaScript.AppendLine('              let targetDiv = document.getElementById(modifiedString);')
    $null = $ResultingJavaScript.AppendLine('              if (targetDiv) {')
    $null = $ResultingJavaScript.AppendLine('                  targetDiv.insertBefore(tempDiv, targetDiv.firstChild);')
    $null = $ResultingJavaScript.AppendLine('                  window.location.hash = uniqueHash;')
    $null = $ResultingJavaScript.AppendLine('                  setTimeout(function () {')
    $null = $ResultingJavaScript.AppendLine('                      targetDiv.removeChild(tempDiv);')
    $null = $ResultingJavaScript.AppendLine('                  }, 1000);')
    $null = $ResultingJavaScript.AppendLine('              } else {')
    $null = $ResultingJavaScript.AppendLine("                  console.error('Target div not found:', modifiedString);")
    $null = $ResultingJavaScript.AppendLine('              }')
    $null = $ResultingJavaScript.AppendLine('          }')
    $null = $ResultingJavaScript.AppendLine('      }')
    $null = $ResultingJavaScript.AppendLine('});')

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
