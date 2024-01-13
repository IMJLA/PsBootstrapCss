---
external help file: PsBootstrapCss-help.xml
Module Name: PsBootstrapCss
online version:
schema: 2.0.0
---

# ConvertTo-BootstrapListGroup

## SYNOPSIS
Upgrade a boring HTML list to a fancy Bootstrap list group

## SYNTAX

```
ConvertTo-BootstrapListGroup [[-HtmlList] <String[]>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
Applies the Bootstrap 'list-group' CSS class to an HTML list
Applies the Bootstrap 'list-group-item' CSS class to each list item

## EXAMPLES

### EXAMPLE 1
```
1,2,3 |
ConvertTo-HtmlList |
ConvertTo-BootstrapListGroup
```

This example returns the following string:
'\<ul class ="list-group"\>\<li class ="list-group-item\>1\</li\>\<li class ="list-group-item\>2\</li\>\<li class ="list-group-item\>3\</li\>\</ul\>'

## PARAMETERS

### -HtmlList
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

### -ProgressAction
{{ Fill ProgressAction Description }}

```yaml
Type: System.Management.Automation.ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### A string wih the code for the Bootstrap list
## NOTES

## RELATED LINKS
