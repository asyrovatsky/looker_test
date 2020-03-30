view: sql_runner_query {
  derived_table: {
    sql: SELECT CASE_ID FROM CASE
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: case_id {
    type: number
    sql: ${TABLE}."CASE_ID" ;;
  }

  set: detail {
    fields: [case_id]
  }
}
