view: member_sebu {
view_label: "멤버집계정보"


  derived_table: {
    sql: SELECT  es_member.memNo
                ,SUM(es_member.saleAmt) as total_sale_Amt
         FROM es_member
        GROUP BY 1;;
  }

  dimension: memNo {
    view_label: "회원정보"
    type: number
    label: "회원번호"
    value_format: "0"
  }

  measure: total_sale_Amt {
    label: "총판매금액(집계)"
    type: sum
  }



#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
}
