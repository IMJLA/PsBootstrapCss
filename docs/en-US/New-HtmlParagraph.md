---
external help file: PsBootstrapCss-help.xml
Module Name: PsBootstrapCss
online version:
schema: 2.0.0
---

# New-HtmlParagraph

## SYNOPSIS
Build a new HTML heading

## SYNTAX

```
New-HtmlParagraph [[-Text] <String[]>] [-Level <Int16>] [<CommonParameters>]
```

## DESCRIPTION
Inserts the specified text into an HTML heading of the specified level

## EXAMPLES

### EXAMPLE 1
```
New-HtmlHeading -Text 'Example Heading'
```

## PARAMETERS

### -Level
The heading level to generate (New-HtmlHeading can create h1, h2, h3, h4, h5, or h6 tags)

```yaml
Type: System.Int16
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 1
Accept pipeline input: False
Accept wildcard characters: False
```

### -Text
The text of the heading

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Outputs the heading as a string
## NOTES

## RELATED LINKS
