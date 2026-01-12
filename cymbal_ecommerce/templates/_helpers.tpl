{{- define "common_labels" -}}
app: {{ .Values.app_name }}
environment: {{ .Values.environment }}
release: {{ .Release.Name }}
{{- end }}

{{- define "adservice_labels" -}}
service: {{ .Values.adservice.name }}
{{- end }}

{{- define "cartservice_labels" -}}
service: {{ .Values.cartservice.name }}
{{- end }}

{{- define "checkoutservice_labels" -}}
service: {{ .Values.checkoutservice.name }}
{{- end }}

{{- define "currencyservice_labels" -}}
service: {{ .Values.currencyservice.name }}
{{- end }}

{{- define "emailservice_labels" -}}
service: {{ .Values.emailservice.name }}
{{- end }}

{{- define "frontend_labels" -}}
service: {{ .Values.frontend.name }}
{{- end }}

{{- define "loadgenerator_labels" -}}
service: {{ .Values.loadgenerator.name }}
{{- end }}

{{- define "paymentservice_labels" -}}
service: {{ .Values.paymentservice.name }}
{{- end }}

{{- define "productcatalogservice_labels" -}}
service: {{ .Values.productcatalogservice.name }}
{{- end }}

{{- define "recommendationservice_labels" -}}
service: {{ .Values.recommendationservice.name }}
{{- end }}

{{- define "redis_cart_labels" -}}
service: {{ .Values.redis_cart.name }}
{{- end }}

{{- define "shippingservice_labels" -}}
service: {{ .Values.shippingservice.name }}
{{- end }}

