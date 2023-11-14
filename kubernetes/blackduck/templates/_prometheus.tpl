{{- define "bd.prometheus.common.annotations" }}
{{- if .Values.metrics.enabled }}
prometheus.io/path: "/actuator/prometheus"
prometheus.io/port: "8081"
prometheus.io/scrape: "true"
{{- end }}
{{- end }}

{{- define "bd.prometheus.common.port" }}
{{- if .Values.metrics.enabled }}
- containerPort: 8081
  protocol: TCP
  name: metrics
{{- end }}
{{- end }}

{{- define "bd.prometheus.common.servicePort" }}
{{- if .Values.metrics.enabled }}
- name: metrics
  port: 8081
  protocol: TCP
  targetPort: metrics
{{- end }}
{{- end }}
