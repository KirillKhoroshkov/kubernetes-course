{{/*
Return chart name
*/}}
{{- define "miniapp-chart.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{/*
Return full resource name: release + chart
Example: miniapp-miniapp-chart
*/}}
{{- define "miniapp-chart.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "miniapp-chart.labels" -}}
app.kubernetes.io/name: {{ include "miniapp-chart.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: Helm
{{- end -}}

{{/*
Selector labels (must match Deployment and Service)
*/}}
{{- define "miniapp-chart.selectorLabels" -}}
app.kubernetes.io/name: {{ include "miniapp-chart.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{/*
Create the name of the service account to use
*/}}
{{- define "miniapp-chart.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "miniapp-chart.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}
