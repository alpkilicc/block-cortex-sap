datagroup: balance_sheet_node_count {
  sql_trigger:
  SELECT 1 ;;

  description: "Triggered when the Number of Distinct Client, Chart of Accounts, HierarchyName, Level and Nodes changes"
}

datagroup: monthly_on_day_1 {
  sql_trigger: select 1 ;;
  description: "Triggers on first day of the month"
}

datagroup: profit_and_loss_node_count {
  sql_trigger:
  SELECT 1 ;;

  description: "Triggered when the Number of Distinct Client, Chart of Accounts, GLHierarchy, GLLevel and GLNodes changes"
}
