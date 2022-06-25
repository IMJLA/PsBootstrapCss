---
external help file: PsBootstrapCss-help.xml
Module Name: PsBootstrapCss
online version:
schema: 2.0.0
---

# New-BootstrapTable

## SYNOPSIS
Upgrade a boring HTML table to a fancy Bootstrap table

## SYNTAX

```
New-BootstrapTable [[-HtmlTable] <String[]>] [<CommonParameters>]
```

## DESCRIPTION
Applies the Bootstrap 'table table-striped' class to an HTML table

## EXAMPLES

### EXAMPLE 1
```
<tr><th>Name</th><th>Id</th></tr><tr><td>ALMon</td><td>5540</td></tr></table>'
```

This example returns the following string:
'\<table class="table table-striped"\>\<tr\>\<th\>Name\</th\>\<th\>Id\</th\>\</tr\>\<tr\>\<td\>ALMon\</td\>\<td\>5540\</td\>\</tr\>\</table\>'

## PARAMETERS

### -HtmlTable
The HTML table to apply the Bootstrap striped table CSS class to

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### A string wih the code for the Bootstrap table
## NOTES
Author: Jeremy La Camera
Last Updated: 11/6/2016

## RELATED LINKS
