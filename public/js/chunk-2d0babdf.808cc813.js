(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-2d0babdf"],{3903:function(t,e,a){"use strict";a.r(e);var o=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"container",staticStyle:{margin:"15px 15px"}},[a("el-row",{staticStyle:{"font-size":"16px",color:"#303133"},attrs:{type:"flex",justify:"start"}},[t._v("用户管理")]),a("el-row",{staticStyle:{"margin-top":"10px"},attrs:{type:"flex",justify:"start"}},[a("el-button",{attrs:{plain:""},on:{click:t.exportUserDate}},[t._v("导出用户数据"),a("i",{staticClass:"el-icon-download el-icon--right"})])],1),a("el-row",{staticStyle:{"margin-top":"30px"}},[a("el-table",{staticStyle:{width:"100%"},attrs:{data:t.userList}},[a("el-table-column",{attrs:{label:"图像"},scopedSlots:t._u([{key:"default",fn:function(t){return[a("img",{staticStyle:{width:"40px",height:"40px","background-color":"#eee"},attrs:{src:t.row.avatarUrl}})]}}])}),a("el-table-column",{attrs:{prop:"nickName",label:"微信名"}}),a("el-table-column",{attrs:{prop:"openid",label:"open Id","show-overflow-tooltip":""}}),a("el-table-column",{attrs:{prop:"phone",label:"手机号","show-overflow-tooltip":""}}),a("el-table-column",{attrs:{prop:"public_at",label:"地址","show-overflow-tooltip":""}}),a("el-table-column",{attrs:{prop:"visitor_count",label:"我的总关注数","show-overflow-tooltip":""}})],1)],1),a("el-row",{staticStyle:{"margin-top":"30px"},attrs:{type:"flex",justify:"end"}},[a("el-pagination",{attrs:{"current-page":t.curPage,"page-sizes":[10,20,30,40],"page-size":10,layout:"total, sizes, prev, pager, next, jumper",total:t.total},on:{"size-change":t.handleSizeChange,"current-change":t.handleCurrentChange}})],1)],1)},r=[],l=(a("3c1b"),a("175c"),a("bc97"),a("a5be"),{data:function(){return{userList:[],curPage:1,pageSize:20,total:100}},components:{},methods:{queryList:function(){var t=this,e={page:this.curPage,per:this.pageSize};this.$http.userList(e).then(function(e){if(console.log("res",e),0==e.data.retcode){var a=e.data.result_rows.users;a.forEach(function(t){t.avatarUrl=t.raw.avatarUrl,t.nickName=t.raw.nickName,t.public_at="".concat(t.raw.country||"","、").concat(t.raw.province||"","、").concat(t.raw.city||"")}),console.log("userList",a),t.userList=a,t.total=e.data.result_rows.page.total_count}})},exportUserDate:function(){window.location.href="https://szebra.cn/api/admin/export_users"},handleSizeChange:function(t){this.pageSize=t,this.queryList()},handleCurrentChange:function(t){this.curPage=t,this.queryList()}},created:function(){this.queryList()}}),n=l,s=a("25c1"),i=Object(s["a"])(n,o,r,!1,null,null,null);i.options.__file="list.vue";e["default"]=i.exports}}]);
//# sourceMappingURL=chunk-2d0babdf.808cc813.js.map