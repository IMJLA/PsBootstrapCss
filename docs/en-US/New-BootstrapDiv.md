---
external help file: PsBootstrapCss-help.xml
Module Name: PsBootstrapCss
online version:
schema: 2.0.0
---

# New-BootstrapDiv

## SYNOPSIS
Creates a new HTML div that uses the Bootstrap alert class

## SYNTAX

```
New-BootstrapDiv [[-Text] <String[]>] [[-Class] <String>] [-Id <String>] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
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
Default value: H-100 p-1 bg-light border rounded-3
Accept pipeline input: False
Accept wildcard characters: False
```

### -Id
{{ Fill Id Description }}

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
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
