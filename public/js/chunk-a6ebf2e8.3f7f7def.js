(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-a6ebf2e8"],{"078a":function(e,t,a){},bbde:function(e,t,a){"use strict";var r=a("078a"),l=a.n(r);l.a},e793:function(e,t,a){"use strict";a.r(t);var r=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"container",staticStyle:{margin:"15px 15px"}},[a("el-row",{staticStyle:{"font-size":"16px",color:"#303133"},attrs:{type:"flex",justify:"start"}},[e._v(e._s(e.pageTitle))]),a("el-row",{staticStyle:{"margin-top":"30px"},attrs:{type:"flex",justify:"start"}},[a("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules,"label-width":"80px","label-position":"right"}},[a("el-form-item",{attrs:{label:"资讯图片"}},[a("el-upload",{staticClass:"avatar-uploader",attrs:{action:"https://jsonplaceholder.typicode.com/posts/","show-file-list":!1,"on-success":e.handleAvatarSuccess,"before-upload":e.beforeAvatarUpload}},[e.imageUrl?a("img",{staticClass:"avatar",attrs:{src:e.form.imageUrl}}):a("i",{staticClass:"el-icon-plus avatar-uploader-icon"})]),a("i",{staticClass:"avatar-limit"},[e._v("图片小于1M,格式jpg,png,jpeg")])],1),a("el-form-item",{attrs:{label:"资讯类别"}},[a("el-radio-group",{model:{value:e.form.radio,callback:function(t){e.$set(e.form,"radio",t)},expression:"form.radio"}},[a("el-radio",{attrs:{label:0}},[e._v("不链接")]),a("el-radio",{attrs:{label:1}},[e._v("链接公众号文章")]),a("el-radio",{attrs:{label:2}},[e._v("自定义页面")])],1)],1),1==e.form.radio?a("el-form-item",{attrs:{label:"文章地址"}},[a("el-input",{attrs:{placeholder:"请输入公众号文章地址"},model:{value:e.form.name,callback:function(t){e.$set(e.form,"name",t)},expression:"form.name"}})],1):e._e(),2==e.form.radio?a("el-form-item",{attrs:{label:"链接页面"}},[a("el-select",{attrs:{filterable:"",placeholder:"请选择链接页面"},model:{value:e.form.region,callback:function(t){e.$set(e.form,"region",t)},expression:"form.region"}},[a("el-option",{attrs:{label:"区域一",value:"shanghai"}})],1)],1):e._e(),a("el-button",{attrs:{type:"primary"},on:{click:function(t){e.submitForm("form")}}},[e._v("保存")])],1)],1)],1)},l=[],o={components:{},data:function(){return{pageState:"",pageTitle:"",form:{name:"",region:"",date1:"",date2:"",baseNum:0,delivery:!1,type:[],resource:"",desc:"",radio:0,imageUrl:""},rules:{name:{required:!0,message:"请输入资讯标题名称",trigger:"blur"}}}},watch:{pageState:function(e){switch(e){case 1:this.pageTitle="新增轮播图";break;case 2:this.pageTitle="编辑轮播图";break;case 3:this.pageTitle="轮播图详情";break}}},methods:{submitForm:function(e){console.log("in"),this.$refs[e].validate(function(e){if(!e)return console.log("error submit!!"),!1;alert("submit!")})}},mounted:function(){this.pageState=this.$route.query.pageState||1}},i=o,s=(a("bbde"),a("048f")),n=Object(s["a"])(i,r,l,!1,null,null,null);n.options.__file="detail.vue";t["default"]=n.exports}}]);
//# sourceMappingURL=chunk-a6ebf2e8.3f7f7def.js.map