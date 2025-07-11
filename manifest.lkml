constant: CONNECTION_NAME {
  value: "oredata_big_data_looker_dataset"
  export: override_required
}

constant: GCP_PROJECT {
  value: "oredata-de-cirrus"
  export: override_required
}

constant: REPORTING_DATASET {
  value: "cortex_sap_looker"
  export: override_required
}

constant: CLIENT {
  value: "100"
  export: override_required
}

# Revenue is generally displayed in general ledger as a negative number, which indicates a credit.
# By setting Sign Change value to 'yes', it's displayed as a positive number in income statement reports.
constant: SIGN_CHANGE {
  value: "yes"
  export: override_required
}


#############################
# Additional Constants used for formatting and other logic
#{

# to show negative values in red, at this constant to the html: parameter
# For example:
#         measure: profit {
#            type: number
#            sql: ${total_sales} - ${total_cost} ;;
#            html: @{negative_format} ;;
#         }

constant: negative_format {
  value: "{% if value < 0 %}<p style='color:red;'>{{rendered_value}}</p>{% else %} {{rendered_value}} {% endif %}"
}

constant: sign_change_multiplier {
  value: "{% assign choice = '@{SIGN_CHANGE}' | downcase %}
  {% if choice == 'yes' %}{% assign multiplier = -1 %}{% else %}{% assign multiplier = 1 %}{% endif %}"
}



#} end additional constants
