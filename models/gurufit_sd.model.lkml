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
  sql_trigger: SELECT HOUR(CURTIME());;
  max_cache_age: "1 hours"
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
    type: left_outer
    sql_on: ${es_member.mem_no} = ${member_sebu.memNo} ;;
    relationship: one_to_many
  }

   aggregate_table: sale_amt_yearly {
     materialization: {
       datagroup_trigger: gurufit_sd_default_datagroup
     }
    query: {
      dimensions: [es_member.reg_dt_year]
      measures: [es_member.total_sale_amt]
    }
   }
    aggregate_table: rollup__es_order_info_reg_dt_date {
      query: {
        dimensions: [es_order_info.reg_dt_date]
        measures: [es_order_info.count]
      }
      materialization: {
        datagroup_trigger: gurufit_sd_default_datagroup
      }
    }

    aggregate_table: rollup__es_member_mem_nm__es_member_sleep_fl {
      query: {
        dimensions: [es_member.mem_nm, es_member.sleep_fl]
        measures: [es_member.max_amt]
        filters: [es_member.sleep_fl: "N"]
      }
      materialization: {
        datagroup_trigger: gurufit_sd_default_datagroup
      }
    }
}
