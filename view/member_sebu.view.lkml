view: member_sebu {
view_label: "멤버집계정보"
  derived_table: {
    sql: SELECT  es_member.memNo
                ,SUM(es_member.saleAmt) as total_sale_Amt
         FROM es_member
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

  measure: sum_total_sale_Amt {
    label: "총판매금액(집계)"
    type: sum
    sql: ${total_sale_Amt} ;;
  }
}
