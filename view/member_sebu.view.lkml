view: member_sebu {
view_label: "멤버집계정보"
  derived_table: {
    sql: SELECT  es_member.memNo
                ,regDt
                ,SUM(es_member.saleAmt) as total_sale_Amt
         FROM es_member
        WHERE es_member.regDt >= '2016-01-01'
        GROUP BY memNo;;

    indexes: ["memNo"]
  }

  dimension: memNo {
    primary_key: yes
    hidden: yes
    view_label: "회원정보"
    type: number
    label: "회원번호"
    value_format: "0"
    sql: ${TABLE}.memNo ;;
  }

  dimension: total_sale_Amt {
    hidden: yes
    type: number
      sql: ${TABLE}.total_sale_Amt ;;
  }

#등록일
  dimension_group: reg_dt {
    label: "등록일"
    hidden: yes
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



  measure: sum_total_sale_Amt {
    label: "총판매금액(집계)"
    type: sum
    sql: ${total_sale_Amt} ;;

    can_filter: no
   drill_fields: [user_details*]
   }
  set: user_details {
    fields: [memNo, reg_dt_date, reg_dt_month, reg_dt_week, reg_dt_year]

  }
}
