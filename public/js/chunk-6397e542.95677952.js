(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-6397e542"],{"603f9":function(t,e,a){"use strict";var n=a("68aa"),i=a.n(n);i.a},"68aa":function(t,e,a){},fc64:function(t,e,a){"use strict";a.r(e);var n=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"container",staticStyle:{margin:"15px 15px"}},[a("el-row",{staticStyle:{"font-size":"16px",color:"#303133"},attrs:{type:"flex",justify:"start"}},[t._v("资讯管理")]),a("el-row",{staticStyle:{"margin-top":"10px"},attrs:{type:"flex",justify:"end"}},[a("el-button",{attrs:{plain:"",size:"small"}},[a("router-link",{attrs:{to:{path:"/information/detail",query:{pageState:1}}}},[t._v(" 添加资讯")])],1)],1),a("el-row",{staticStyle:{"margin-top":"30px"}},[a("el-table",{staticStyle:{width:"100%"},attrs:{data:t.infomationList,stripe:""},on:{"row-dblclick":t.dbClick}},[a("el-table-column",{attrs:{label:"图片","min-width":"150"},scopedSlots:t._u([{key:"default",fn:function(t){return[a("img",{staticStyle:{width:"40px",height:"40px","background-color":"#eee"},attrs:{src:t.row.image}})]}}])}),a("el-table-column",{attrs:{prop:"title",label:"标题","min-width":"150"}}),a("el-table-column",{attrs:{prop:"desc",label:"描述","min-width":"300","show-overflow-tooltip":""}}),a("el-table-column",{attrs:{prop:"public_at",label:"发布时间","min-width":"150","show-overflow-tooltip":""}}),a("el-table-column",{attrs:{label:"类别","min-width":"150"},scopedSlots:t._u([{key:"default",fn:function(e){return[a("span",[t._v(t._s(t.getPageType(e.row.link_type)))])]}}])}),a("el-table-column",{attrs:{label:"操作","min-width":"100"},scopedSlots:t._u([{key:"default",fn:function(e){return[a("el-button",{attrs:{type:"text",size:"small"},on:{click:function(a){t.editHandleClick(e.row)}}},[t._v("编辑")]),a("el-button",{attrs:{type:"text",size:"small"},on:{click:function(a){t.deleteHandleClick(e.row)}}},[t._v("删除")])]}}])})],1)],1),a("el-row",{staticStyle:{"margin-top":"30px"},attrs:{type:"flex",justify:"end"}},[a("el-pagination",{attrs:{"current-page":t.curPage,"page-sizes":[10,20,30,40],"page-size":10,layout:"total, sizes, prev, pager, next, jumper",total:t.total},on:{"size-change":t.handleSizeChange,"current-change":t.handleCurrentChange}})],1)],1)},i=[],o={data:function(){return{infomationList:[],curPage:1,pageSize:20,total:0}},components:{},methods:{queryInfoList:function(){var t=this,e={page:this.curPage,per:this.pageSize};this.$http.informationList(e,"get").then(function(e){var a=e.data,n=a.result_rows;console.log(n),0===a.retcode?(t.infomationList=n.informations||[],console.log("234",t.infomationList),t.curPage=n.page.current_page,t.pageSize=n.page.per,t.total=n.page.total_count):t.$message.error("删除失败，原因：".concat(a.retcode).concat(a.message))})},handleSizeChange:function(t){console.log("page大小改变",t),this.pageSize=t},handleCurrentChange:function(t){console.log("当前page改变",t),this.curPage=t},editHandleClick:function(t){this.$router.push({path:"/information/detail",query:{pageState:2,information_id:t.id}})},dbClick:function(t){this.$router.push({path:"/information/detail",query:{pageState:3,information_id:t.id}})},deleteHandleClick:function(t){var e=this;this.$confirm("确定删除？","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then(function(){var a={information_id:t.id};e.$http.deteleInfomation(a,"delete").then(function(t){var a=t.data;0===a.retcode?(e.$message.success("删除成功!"),setTimeout(e.queryInfoList,300)):e.$message.error("删除失败，原因：".concat(a.retcode).concat(a.message))})}).catch(function(){e.$message({type:"info",message:"已取消删除"})})},getPageType:function(t){var e="";switch(t){case"page":e="自定义页面";break;case"article":e="链接公众号文章";break}return e}},created:function(){this.queryInfoList()}},l=o,r=(a("603f9"),a("048f")),s=Object(r["a"])(l,n,i,!1,null,null,null);s.options.__file="list.vue";e["default"]=s.exports}}]);
//# sourceMappingURL=chunk-6397e542.95677952.js.map