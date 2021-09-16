connection: "gurufit_mariadb_skillchange"

# include all views in the views/ folder in this project
# include: "/**/*.view.lkml"
include: "/view/**/es_category_brand.view"
include: "/view/**/es_goods.view"
include: "/view/**/es_goods_link_category.view"
include: "/view/**/es_member.view"
include: "/view/**/es_order.view"
include: "/view/**/es_order_goods.view"
include: "/view/**/es_order_info.view"
include: "/view/**/category_goods.view"
include: "/view/**/member_sebu.view"


datagroup: gurufit_sd_default_datagroup {
  sql_trigger: SELECT DATE_PART('hour', GETDATE());;
  max_cache_age: "2 hours"
}

persist_with: gurufit_sd_default_datagroup

explore: es_order_goods {
  label: "Skill Change Mini-Project"
  #always_filter: {
  #  filters: [es_member.birth_dt_year: "1910 to 2021"]
  #}
  symmetric_aggregates: yes

  join: es_order {
    type: left_outer
    sql_on: ${es_order_goods.order_no}  = ${es_order.order_no};;
    relationship: many_to_one
  }

  join: es_member {
    type: left_outer
    sql_on: ${es_order.mem_no}  = ${es_member.mem_no};;
    relationship: many_to_one
  }

  join:  es_order_info{
    type: left_outer
    sql_on: ${es_order_goods.order_no} = ${es_order_info.order_no};;
    relationship: many_to_one
  }

  join: es_goods_link_category {
    type: left_outer
    sql_on: ${es_order_goods.goods_no} =  ${es_goods_link_category.goods_no};;
    relationship: many_to_many
  }

  join: es_goods {
    type: left_outer
    sql_on: ${es_order_goods.goods_no} = ${es_goods.goods_no};;
    relationship: many_to_one
  }

  join: es_category_brand {
    type: left_outer
    sql_on: ${es_goods.brand_cd} = ${es_category_brand.cate_cd} ;;
    relationship: many_to_one
  }

   join: member_sebu {
    type:  left_outer
    sql_on: ${es_member.mem_no} = ${member_sebu.memNo} ;;
    relationship: many_to_one
  }



  #join: category_goods {
  #  type:  left_outer
  #  sql_on: ${es_order_goods.goods_no} = ${category_goods.goodsNo} ;;
  #  relationship: many_to_one
  #}

}
