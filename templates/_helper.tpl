{{- define "app.labels" -}}
project: roboshop
app: {{ .Values.appName }}
{{- end -}}

{{- define "app.metadata" }}
metadata:
  name: {{ .Values.appName }}
  labels:
    project: roboshop
    app: {{ .Values.appName }}
{{- end }}