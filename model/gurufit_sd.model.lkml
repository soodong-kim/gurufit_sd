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


# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }


explore:  es_member{
  join: es_order {
    type: left_outer
    sql_on: ${es_member.mem_no} = ${es_order.mem_no} ;;
    relationship: one_to_many
  }

  join: es_order_goods {
    type: left_outer
    sql_on: ${es_order.order_no} = ${es_order_goods.order_no};;
    relationship: one_to_many
  }
}
