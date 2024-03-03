function ConvertTo-BootstrapJavaScriptTable {
    param (
        [string]$Id,
        $InputObject,
        [switch]$DataFilterControl,
        [string[]]$UnsortableColumn,
        [string[]]$SearchableColumn,
        [string[]]$DropdownColumn,
        [switch]$AllColumnsSearchable,
        [string[]]$PropNames,
        [int]$PageSize
    )

    # Convert the arrays to hashtables for faster lookups
    $UnsortableColumns = @{}
    ForEach ($Col in $UnsortableColumn) {
        $UnsortableColumns[$Col] = $null
    }
    $SearchableColumns = @{}
    ForEach ($Col in $SearchableColumn) {
        $SearchableColumns[$Col] = $null
    }
    $DropdownColumns = @{}
    ForEach ($Col in $DropdownColumn) {
        $DropdownColumns[$Col] = $null
    }

    $Stringbuilder = [System.Text.StringBuilder]::new()
    $null = $Stringbuilder.Append('<table id="')
    $null = $Stringbuilder.Append($Id)
    $null = $Stringbuilder.Append('"')
    if ($DataFilterControl) {
        $null = $Stringbuilder.Append(' class="table table-striped text-nowrap" data-filter-control="true" data-pagination="true"')
    }
    if ($PageSize) {
        $null = $Stringbuilder.Append(" data-page-size=`"$PageSize`"")
    }
    $null = $Stringbuilder.AppendLine('>')
    $null = $Stringbuilder.AppendLine('<thead>')
    $null = $Stringbuilder.AppendLine('<tr>')

    if (-not $PSBoundParameters.ContainsKey('PropNames')) {
        $PropNames = ($InputObject | Get-Member -MemberType noteproperty).Name
    }
    ForEach ($Prop in $PropNames) {
        $null = $Stringbuilder.Append('<th')
        if ($DataFilterControl) {
            $null = $Stringbuilder.Append(' data-field="')
            $null = $Stringbuilder.Append(($Prop -replace '\s', ''))
            $null = $Stringbuilder.Append('"')
        }
        if ($DataFilterControl) {
            if ($SearchableColumns.ContainsKey($Prop) -or $AllColumnsSearchable) {
                $null = $Stringbuilder.Append(' data-filter-control="input"')
            }
            if ($DropdownColumns.ContainsKey($Prop)) {
                $null = $Stringbuilder.Append(' data-filter-control="select"')
            }
        }
        if (-not $UnsortableColumns.ContainsKey($Prop)) {
            $null = $Stringbuilder.Append(' data-sortable="true"')
        }
        $null = $Stringbuilder.Append('>')
        $null = $Stringbuilder.Append($Prop)
        $null = $Stringbuilder.AppendLine('</th>')
    }
    $null = $Stringbuilder.AppendLine('</tr>')
    $null = $Stringbuilder.AppendLine('</thead>')
    $null = $Stringbuilder.AppendLine('</table>')
    $Stringbuilder.ToString()
}
