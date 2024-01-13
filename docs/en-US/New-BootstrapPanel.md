---
external help file: PsBootstrapCss-help.xml
Module Name: PsBootstrapCss
online version:
schema: 2.0.0
---

# New-BootstrapPanel

## SYNOPSIS
Wraps HTML elements in a Bootstrap column of the specified width

## SYNTAX

```
New-BootstrapPanel [[-Html] <String[]>] [-Class <String>] [-Heading <String>] [-Footer <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
Creates a Bootstrap container which contains a row which contains a column of the specified width

## EXAMPLES

### EXAMPLE 1
```
Heading</h1>'
```

This example returns the following string:
'\<div class="container"\>\<div class="row justify-content-md-center"\>\<div class="col col-lg-12"\>\<h1\>Heading\</h1\>\</div\>\</div\>\</div\>'

## PARAMETERS

### -Class
{{ Fill Class Description }}

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: Default
Accept pipeline input: False
Accept wildcard characters: False
```

### -Footer
{{ Fill Footer Description }}

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

### -Heading
{{ Fill Heading Description }}

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

### -Html
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

### A string wih the code for the Bootstrap container
## NOTES

## RELATED LINKS
