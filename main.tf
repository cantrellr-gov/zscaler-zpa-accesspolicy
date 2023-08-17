resource "zpa_policy_access_rule" "efa_policyaccessrule" {
  name            = var.efa_policyaccessrule_name
  description     = var.efa_policyaccessrule_description
  action          = var.efa_policyaccessrule_action
  operator        = var.efa_policyaccessrule_operator
  policy_set_id   = var.efa_policyaccessrule_policy_set_id
  conditions {
    negated       = var.efa_policyaccessrule_conditions_negated
    operator      = var.efa_policyaccessrule_conditions_operator
    operands {
      object_type = var.efa_policyaccessrule_conditions_operands_object_type
      lhs         = var.efa_policyaccessrule_conditions_operands_lhs
      rhs         = var.efa_policyaccessrule_conditions_operands_rhs
    }
  }
}