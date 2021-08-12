# The name of this view in Looker is "Es Goods Link Category"
view: es_goods_link_category {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: gurufit_to_looker.es_goodsLinkCategory ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Cate Cd" in Explore.

  dimension: cate_cd {
    type: string
    sql: ${TABLE}.cateCd ;;
  }

  dimension: cate_link_fl {
    type: string
    sql: ${TABLE}.cateLinkFl ;;
  }

  dimension: fix_sort {
    type: number
    sql: ${TABLE}.fixSort ;;
  }

  dimension: goods_no {
    type: number
    sql: ${TABLE}.goodsNo ;;
  }

  dimension: goods_sort {
    type: number
    sql: ${TABLE}.goodsSort ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: mod_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.modDt ;;
  }

  dimension_group: reg_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.regDt ;;
  }

  dimension: sno {
    type: number
    sql: ${TABLE}.sno ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: []
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_fix_sort {
    type: sum
    hidden: yes
    sql: ${fix_sort} ;;
  }

  measure: average_fix_sort {
    type: average
    hidden: yes
    sql: ${fix_sort} ;;
  }

  measure: total_goods_no {
    type: sum
    hidden: yes
    sql: ${goods_no} ;;
  }

  measure: average_goods_no {
    type: average
    hidden: yes
    sql: ${goods_no} ;;
  }

  measure: total_goods_sort {
    type: sum
    hidden: yes
    sql: ${goods_sort} ;;
  }

  measure: average_goods_sort {
    type: average
    hidden: yes
    sql: ${goods_sort} ;;
  }

  measure: total_sno {
    type: sum
    hidden: yes
    sql: ${sno} ;;
  }

  measure: average_sno {
    type: average
    hidden: yes
    sql: ${sno} ;;
  }
}
