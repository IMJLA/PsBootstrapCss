---
external help file: PsBootstrapCss-help.xml
Module Name: PsBootstrapCss
online version:
schema: 2.0.0
---

# New-BootstrapAlert

## SYNOPSIS
Creates a new HTML div that uses the Bootstrap alert class

## SYNTAX

```
New-BootstrapAlert [[-Text] <String[]>] [[-Class] <String>] [<CommonParameters>]
```

## DESCRIPTION
Creates a new HTML div that uses the Bootstrap alert class

## EXAMPLES

### EXAMPLE 1
```
New-BootstrapAlert -Text 'blah'
```

This example returns the following string:
'\<div class="alert alert-info"\>\<strong\>Info!\</strong\> blah\</div\>'

## PARAMETERS

### -Class
{{ Fill Class Description }}

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: Info
Accept pipeline input: False
Accept wildcard characters: False
```

### -Text
The HTML element to apply the Bootstrap column to

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

### A string wih the HTML code for the div
## NOTES

## RELATED LINKS