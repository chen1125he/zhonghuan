(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-80f547ba"],{"40a8":function(t,e,a){"use strict";var i=a("7169"),n=a.n(i);n.a},7169:function(t,e,a){},"83c8":function(t,e,a){"use strict";a.r(e);var i=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"container",staticStyle:{margin:"15px 15px"}},[a("el-row",{staticStyle:{"font-size":"16px",color:"#303133"},attrs:{type:"flex",justify:"start"}},[t._v("楼盘管理")]),a("el-row",{staticStyle:{"margin-top":"10px"},attrs:{type:"flex",justify:"end"}},[a("el-button",{attrs:{plain:"",size:"small"}},[a("router-link",{attrs:{to:{path:"/property/detail",query:{pageState:1}}}},[t._v(" 添加楼盘")])],1)],1),a("el-row",{staticStyle:{"margin-top":"30px"}},[a("el-table",{staticStyle:{width:"100%"},attrs:{data:t.infomationList,stripe:""}},[a("el-table-column",{attrs:{label:"图片","min-width":"150"},scopedSlots:t._u([{key:"default",fn:function(t){return[a("img",{staticStyle:{width:"40px",height:"40px","background-color":"#eee"},attrs:{src:t.row.image}})]}}])}),a("el-table-column",{attrs:{prop:"title",label:"名称","min-width":"150"}}),a("el-table-column",{attrs:{prop:"desc",label:"地址","min-width":"150","show-overflow-tooltip":""}}),a("el-table-column",{attrs:{prop:"public_at",label:"价格","min-width":"150","show-overflow-tooltip":""}}),a("el-table-column",{attrs:{label:"关注人数","min-width":"150","show-overflow-tooltip":""}}),a("el-table-column",{attrs:{label:"操作","min-width":"300"},scopedSlots:t._u([{key:"default",fn:function(e){return[a("el-button",{attrs:{type:"text",size:"small"},on:{click:function(a){t.editHandleClick(e.row)}}},[t._v("编辑")]),a("el-button",{attrs:{type:"text",size:"small"},on:{click:function(a){t.deleteHandleClick(e.row)}}},[t._v("删除")]),a("el-button",{attrs:{type:"text",size:"small"},on:{click:function(a){t.deleteHandleClick(e.row)}}},[t._v("清空总关注人数")]),a("el-button",{attrs:{type:"text",size:"small"},on:{click:function(a){t.deleteHandleClick(e.row)}}},[t._v("清空我的关注人数")])]}}])})],1)],1),a("el-row",{staticStyle:{"margin-top":"30px"},attrs:{type:"flex",justify:"end"}},[a("el-pagination",{attrs:{"current-page":t.curPage,"page-sizes":[10,20,30,40],"page-size":10,layout:"total, sizes, prev, pager, next, jumper",total:t.total},on:{"size-change":t.handleSizeChange,"current-change":t.handleCurrentChange}})],1)],1)},n=[],l=(a("ff66"),a("ea23"),a("dbff"),{data:function(){return{infomationList:[],curPage:1,pageSize:20,total:100}},components:{},methods:{queryInfoList:function(){var t=this,e={page:this.curPage,per:this.pageSize};this.$http.informationList(e,"get").then(function(e){var a=e.data.success;t.infomationList=a.informations||[],t.curPage=a.page.current_page,t.pageSize=a.page.per,t.total=a.page.total_count})},handleSizeChange:function(t){this.pageSize=t},handleCurrentChange:function(t){this.curPage=t},editHandleClick:function(t){this.$router.push({path:"/property/detail",query:{pageState:2,property_id:t.id}})},deleteHandleClick:function(t){var e=this,a={information_id:t.id};this.$http.deteleInfomation(a,"delete").then(function(t){var a=t.data.success;a&&e.queryInfoList()})}},created:function(){this.queryInfoList()}}),o=l,r=(a("40a8"),a("048f")),s=Object(r["a"])(o,i,n,!1,null,null,null);s.options.__file="list.vue";e["default"]=s.exports}}]);
//# sourceMappingURL=chunk-80f547ba.3e5a01d4.js.map