# Datadog global variables

variable "environment" {
  description = "Architecture environment"
  type        = "string"
}

variable "filter_tags_use_defaults" {
  description = "Use default filter tags convention"
  default     = "true"
}

variable "filter_tags_custom" {
  description = "Tags used for custom filtering when filter_tags_use_defaults is false"
  default     = "*"
}

variable "message" {
  description = "Message sent when a monitor is triggered"
}

variable "delay" {
  description = "Delay in seconds for the metric evaluation"
  default     = 900
}

# Datadog monitors variables

variable "alb_no_healthy_instances_silenced" {
  description = "Groups to mute for ALB no healthy instances monitor"
  type        = "map"
  default     = {}
}

variable "alb_no_healthy_instances_message" {
  description = "Custom message for ALB no healthy instances monitor"
  type        = "string"
  default     = ""
}

variable "alb_no_healthy_instances_aggregator" {
  description = "Monitor aggregator for ALB no healthy instances [available values: min, max, sum or avg]"
  type        = "string"
  default     = "min"
}

variable "alb_no_healthy_instances_timeframe" {
  description = "Monitor timeframe for ALB no healthy instances [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = "string"
  default     = "last_1m"
}

variable "latency_silenced" {
  description = "Groups to mute for ALB latency monitor"
  type        = "map"
  default     = {}
}

variable "latency_message" {
  description = "Custom message for ALB latency monitor"
  type        = "string"
  default     = ""
}

variable "latency_aggregator" {
  description = "Monitor aggregator for ALB latency [available values: min, max, sum or avg]"
  type        = "string"
  default     = "max"
}

variable "latency_timeframe" {
  description = "Monitor timeframe for ALB latency [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = "string"
  default     = "last_5m"
}

variable "latency_threshold_critical" {
  default     = 1000
  description = "latency critical threshold in milliseconds"
}

variable "latency_threshold_warning" {
  default     = 500
  description = "latency warning threshold in milliseconds"
}

variable "httpcode_elb_4xx_silenced" {
  description = "Groups to mute for ALB httpcode 4xx monitor"
  type        = "map"
  default     = {}
}

variable "httpcode_elb_4xx_message" {
  description = "Custom message for ALB httpcode 4xx monitor"
  type        = "string"
  default     = ""
}

variable "httpcode_elb_4xx_aggregator" {
  description = "Monitor aggregator for ALB httpcode 4xx [available values: min, max, sum or avg]"
  type        = "string"
  default     = "min"
}

variable "httpcode_elb_4xx_timeframe" {
  description = "Monitor timeframe for ALB httpcode 4xx [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = "string"
  default     = "last_5m"
}

variable "httpcode_elb_4xx_threshold_critical" {
  default     = 80
  description = "loadbalancer 4xx critical threshold in percentage"
}

variable "httpcode_elb_4xx_threshold_warning" {
  default     = 60
  description = "loadbalancer 4xx warning threshold in percentage"
}

variable "httpcode_target_4xx_silenced" {
  description = "Groups to mute for ALB target httpcode 4xx monitor"
  type        = "map"
  default     = {}
}

variable "httpcode_target_4xx_message" {
  description = "Custom message for ALB target httpcode 4xx monitor"
  type        = "string"
  default     = ""
}

variable "httpcode_target_4xx_aggregator" {
  description = "Monitor aggregator for ALB target httpcode 4xx [available values: min, max, sum or avg]"
  type        = "string"
  default     = "min"
}

variable "httpcode_target_4xx_timeframe" {
  description = "Monitor timeframe for ALB target httpcode 4xx [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = "string"
  default     = "last_5m"
}

variable "httpcode_target_4xx_threshold_critical" {
  default     = 80
  description = "target 4xx critical threshold in percentage"
}

variable "httpcode_target_4xx_threshold_warning" {
  default     = 60
  description = "target 4xx warning threshold in percentage"
}

variable "httpcode_elb_5xx_silenced" {
  description = "Groups to mute for ALB httpcode 5xx monitor"
  type        = "map"
  default     = {}
}

variable "httpcode_elb_5xx_message" {
  description = "Custom message for ALB httpcode 5xx monitor"
  type        = "string"
  default     = ""
}

variable "httpcode_elb_5xx_aggregator" {
  description = "Monitor aggregator for ALB httpcode 5xx [available values: min, max, sum or avg]"
  type        = "string"
  default     = "min"
}

variable "httpcode_elb_5xx_timeframe" {
  description = "Monitor timeframe for ALB httpcode 5xx [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = "string"
  default     = "last_5m"
}

variable "httpcode_elb_5xx_threshold_critical" {
  default     = 80
  description = "loadbalancer 5xxcritical threshold in percentage"
}

variable "httpcode_elb_5xx_threshold_warning" {
  default     = 60
  description = "loadbalancer 5xx warning threshold in percentage"
}

variable "httpcode_target_5xx_silenced" {
  description = "Groups to mute for ALB target httpcode 5xx monitor"
  type        = "map"
  default     = {}
}

variable "httpcode_target_5xx_message" {
  description = "Custom message for ALB target httpcode 5xx monitor"
  type        = "string"
  default     = ""
}

variable "httpcode_target_5xx_aggregator" {
  description = "Monitor aggregator for ALB target httpcode 5xx [available values: min, max, sum or avg]"
  type        = "string"
  default     = "min"
}

variable "httpcode_target_5xx_timeframe" {
  description = "Monitor timeframe for ALB target httpcode 5xx [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = "string"
  default     = "last_5m"
}

variable "httpcode_target_5xx_threshold_critical" {
  default     = 80
  description = "target 5xx critical threshold in percentage"
}

variable "httpcode_target_5xx_threshold_warning" {
  default     = 60
  description = "target 5xx warning threshold in percentage"
}

variable "artificial_requests_count" {
  default     = 5
  description = "Number of false requests used to mitigate false positive in case of low trafic"
}
