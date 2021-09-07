# The name of this view in Looker is "Es Goods Link Category"
view: es_goods_link_category {

  sql_table_name: gurufit_to_looker.es_goodsLinkCategory ;;

  #카테고리코드
  dimension: cate_cd {
    label: "카테고리코드"
    type: string
    sql: ${TABLE}.cateCd ;;
  }

  #상품번호
  dimension: goods_no {
    label: "상품번호"
    type: number
    sql: ${TABLE}.goodsNo ;;
  }

  #일련번호(PRIMARY KEY)
  dimension: sno {
    label: "일련번호"
    primary_key: yes
    type: number
    sql: ${TABLE}.sno ;;
  }

##############################################################################################
  measure: count {
    type: count
    drill_fields: []
  }
##############################################################################################
}
