{{/* vim: set filetype=mustache: */}}
{{/*
Serialize the passed Vector component configuration bits as TOML.
*/}}
{{- define "libvector.vectorComponentConfig" -}}
{{- $componentGroup := index . 0 -}}
{{- $componentId := index . 1 -}}
{{- $value := index . 2 -}}
{{- toToml (dict $componentGroup (dict $componentId $value)) }}
{{- end }}

{{/*
Serialize the passed Vector source configuration bits as TOML.
*/}}
{{- define "libvector.vectorSourceConfig" -}}
{{- $componentId := index . 0 -}}
{{- $value := index . 1 -}}
{{- tuple "sources" $componentId $value | include "libvector.vectorComponentConfig" -}}
{{- end }}

{{/*
Serialize the passed Vector transform configuration bits as TOML.
*/}}
{{- define "libvector.vectorTransformConfig" -}}
{{- $componentId := index . 0 -}}
{{- $value := index . 1 -}}
{{- tuple "transforms" $componentId $value | include "libvector.vectorComponentConfig" -}}
{{- end }}

{{/*
Serialize the passed Vector transform configuration bits as TOML.
*/}}
{{- define "libvector.vectorSinkConfig" -}}
{{- $componentId := index . 0 -}}
{{- $value := index . 1 -}}
{{- tuple "sinks" $componentId $value | include "libvector.vectorComponentConfig" -}}
{{- end }}
