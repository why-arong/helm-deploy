# api-server/templates/_helpers.tpl

{{- define "api-server.name" -}}
{{ .Chart.Name }}
{{- end -}}

{{- define "api-server.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end -}}

{{- define "api-server.labels" -}}
app.kubernetes.io/name: {{ include "api-server.name" . | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
{{- end -}}

{{- define "api-server.selectorLabels" -}}
app: {{ include "api-server.name" . | quote }}
release: {{ .Release.Name | quote }}
{{- end -}}

{{- define "api-server.postgresql.fullname" -}}
{{ .Release.Name }}-postgresql
{{- end -}}
