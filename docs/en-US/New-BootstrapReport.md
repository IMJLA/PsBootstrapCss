---
external help file: PsBootstrapCss-help.xml
Module Name: PsBootstrapCss
online version:
schema: 2.0.0
---

# New-BootstrapReport

## SYNOPSIS
Build a new Bootstrap report based on an HTML template

## SYNTAX

```
New-BootstrapReport [[-Title] <String>] [[-Description] <String>] [[-Body] <String[]>]
 [[-TemplatePath] <String>] [-JavaScript] [[-ScriptPath] <String>] [[-AdditionalScriptHtml] <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
Inserts the specified title, description, and body into the HTML report template

## EXAMPLES

### EXAMPLE 1
```
New-BootstrapReport -Title 'ReportTitle' -Description 'This is the report description' -Body 'This is the body of the report'
```

## PARAMETERS

### -AdditionalScriptHtml
{{ Fill AdditionalScriptHtml Description }}

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Body
Body of the report (tables, list groups, etc.)

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
Description of the report (displayed below the Title)

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -JavaScript
{{ Fill JavaScript Description }}

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
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

### -ScriptPath
The path to the JavaScript (inside of \<script\> tags)

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: "$PSScriptRoot\data\Templates\JavaScript.html"
Accept pipeline input: False
Accept wildcard characters: False
```

### -TemplatePath
The path to the HTML report template that includes the Boostrap CSS

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: "$PSScriptRoot\data\Templates\ReportTemplate.html"
Accept pipeline input: False
Accept wildcard characters: False
```

### -Title
Title of the report (displayed at the top)

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Outputs a complete HTML report as a string
## NOTES

## RELATED LINKS
