resource "aws_cloudwatch_log_group" "prometheus_demo" {
  name              = "/aws/prometheus/demo"
  retention_in_days = 14
}

resource "aws_prometheus_workspace" "demo" {
  alias = "demo"

  logging_configuration {
    log_group_arn = "${aws_cloudwatch_log_group.prometheus_demo.arn}:*"
  }
}

resource "aws_prometheus_rule_group_namespace" "demo" {
  name         = "rules"
  workspace_id = aws_prometheus_workspace.demo.id

  data = <<EOF
groups:
- name: Tutorial
  rules:
  - alert: HostHighCpuLoad
    expr: 100 - (avg by(instance) (rate(node_cpu_seconds_total{mode="idle"}[2m])) * 100) > 50
    for: 0m
    labels:
      severity: warning
    annotations:
      summary: Host high CPU load (instance {{ $labels.instance }})
      description: "CPU load is > 50%, VALUE = {{ $value }}"
EOF
}