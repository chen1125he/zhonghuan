(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-2d237931"],{fc64:function(t,e,a){"use strict";a.r(e);var n=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"container",staticStyle:{margin:"15px 15px"}},[a("el-row",{staticStyle:{"font-size":"16px",color:"#303133"},attrs:{type:"flex",justify:"start"}},[t._v("资讯管理")]),a("el-row",{staticStyle:{"margin-top":"10px"},attrs:{type:"flex",justify:"end"}},[a("el-button",{attrs:{plain:"",size:"small"}},[a("router-link",{attrs:{to:{path:"/information/create"}}},[t._v(" 添加资讯")])],1)],1),a("el-row",{staticStyle:{"margin-top":"30px"}},[a("el-table",{staticStyle:{width:"100%"},attrs:{data:t.infomationList,stripe:""}},[a("el-table-column",{attrs:{label:"图片"},scopedSlots:t._u([{key:"default",fn:function(t){return[a("img",{staticStyle:{width:"40px",height:"40px","background-color":"#eee"},attrs:{src:t.row.image&&t.row.image.url}})]}}])}),a("el-table-column",{attrs:{prop:"title",label:"标题"}}),a("el-table-column",{attrs:{prop:"desc",label:"描述","show-overflow-tooltip":""}}),a("el-table-column",{attrs:{prop:"public_at",label:"发布时间","show-overflow-tooltip":""}}),a("el-table-column",{attrs:{label:"类别"},scopedSlots:t._u([{key:"default",fn:function(e){return[t._v(t._s(t.linkTypeMap[e.row.link_type]))]}}])}),a("el-table-column",{attrs:{label:"操作"},scopedSlots:t._u([{key:"default",fn:function(e){return[a("el-button",{attrs:{type:"text",size:"small"}},[a("router-link",{staticClass:"el-button--text",attrs:{to:{path:"/information/"+e.row.id+"/detail"}}},[t._v("编辑")])],1),a("el-button",{attrs:{type:"text",size:"small"},on:{click:function(a){t.deleteHandleClick(e.row)}}},[t._v("删除")])]}}])})],1)],1),a("el-row",{staticStyle:{"margin-top":"30px"},attrs:{type:"flex",justify:"end"}},[a("el-pagination",{attrs:{"current-page":t.curPage,"page-sizes":[10,20,30,40],"page-size":10,layout:"total, sizes, prev, pager, next, jumper",total:t.total},on:{"size-change":t.handleSizeChange,"current-change":t.handleCurrentChange}})],1)],1)},i=[],l={data:function(){return{linkTypeMap:{none:"不链接",page:"自定义页面",article:"链接公众号文章"},infomationList:[],curPage:1,pageSize:20,total:0}},components:{},methods:{queryList:function(){var t=this,e={page:this.curPage,per:this.pageSize};this.$http.informationList(e).then(function(e){e&&(t.infomationList=e.data.result_rows.informations,t.total=e.data.result_rows.page.total_count)})},handleSizeChange:function(t){this.pageSize=t,this.queryList()},handleCurrentChange:function(t){this.curPage=t,this.queryList()},deleteHandleClick:function(t){var e=this;this.$confirm("确定删除吗？","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then(function(a){e.$http.deteleInfomation(t).then(function(t){t&&(e.$message.success("操作成功"),e.queryList())})}).catch(function(){})}},created:function(){this.queryList()}},o=l,s=a("25c1"),r=Object(s["a"])(o,n,i,!1,null,null,null);r.options.__file="list.vue";e["default"]=r.exports}}]);
//# sourceMappingURL=chunk-2d237931.449f0e3e.js.map