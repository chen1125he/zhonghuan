(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-d2f7a4b8"],{"13aa":function(t,e,i){},3573:function(t,e,i){"use strict";var r=i("ac1b"),a=i("5b7f"),s=i("3a08"),n="startsWith",o=""[n];r(r.P+r.F*i("7d31")(n),"String",{startsWith:function(t){var e=s(this,t,n),i=a(Math.min(arguments.length>1?arguments[1]:void 0,e.length)),r=String(t);return o?o.call(e,r,i):e.slice(i,i+r.length)===r}})},"3a08":function(t,e,i){var r=i("f83a"),a=i("346b");t.exports=function(t,e,i){if(r(e))throw TypeError("String#"+i+" doesn't accept regex!");return String(a(t))}},"7d31":function(t,e,i){var r=i("b816")("match");t.exports=function(t){var e=/./;try{"/./"[t](e)}catch(i){try{return e[r]=!1,!"/./"[t](e)}catch(a){}}return!0}},"942b":function(t,e,i){var r=i("ac1b"),a=i("e96b"),s=i("346b"),n=/"/g,o=function(t,e,i,r){var a=String(s(t)),o="<"+e;return""!==i&&(o+=" "+i+'="'+String(r).replace(n,"&quot;")+'"'),o+">"+a+"</"+e+">"};t.exports=function(t,e){var i={};i[t]=e(o),r(r.P+r.F*a(function(){var e=""[t]('"');return e!==e.toLowerCase()||e.split('"').length>3}),"String",i)}},b7ad:function(t,e,i){"use strict";i("942b")("link",function(t){return function(e){return t(this,"a","href",e)}})},bbde5:function(t,e,i){"use strict";var r=i("13aa"),a=i.n(r);a.a},e793:function(t,e,i){"use strict";i.r(e);var r=function(){var t=this,e=t.$createElement,i=t._self._c||e;return i("div",{staticClass:"container",staticStyle:{margin:"15px 15px"}},[i("el-row",{staticStyle:{"font-size":"16px",color:"#303133"},attrs:{type:"flex",justify:"start"}},[i("router-link",{staticClass:"el-button--text",attrs:{to:"/rotation/list",replace:""}},[t._v("轮播图管理")]),t._v("\n    / "+t._s(t.pageTitle)+"\n  ")],1),i("el-row",{staticStyle:{"margin-top":"30px"},attrs:{type:"flex",justify:"start"}},[i("el-form",{ref:"form",attrs:{model:t.form,"label-width":"100px","label-suffix":":","label-position":"left"}},[i("el-form-item",{attrs:{label:"轮播图片",required:""}},[t.form.image&&t.form.image.id?i("div",{staticClass:"avatar"},[i("img",{attrs:{src:"https://szebra.cn"+t.form.image.url}}),i("i",{staticClass:"el-icon-circle-close",on:{click:t.removeAvatarImageUrl}})]):i("el-upload",{staticClass:"avatar-uploader",attrs:{action:"https://szebra.cn/api/admin/images","show-file-list":!1,"on-success":t.handleAvatarSuccess,name:"image[file]","before-upload":t.beforeAvatarUpload}},[i("i",{staticClass:"el-icon-plus avatar-uploader-icon"})])],1),i("el-form-item",{attrs:{label:"资讯类别",required:""}},[i("el-radio-group",{model:{value:t.form.link_type,callback:function(e){t.$set(t.form,"link_type",e)},expression:"form.link_type"}},[i("el-radio",{attrs:{label:"none"}},[t._v("不链接")]),i("el-radio",{attrs:{label:"article"}},[t._v("链接公众号文章")]),i("el-radio",{attrs:{label:"page"}},[t._v("自定义页面")])],1)],1),"article"==t.form.link_type?i("el-form-item",{attrs:{label:"文章地址",required:""}},[i("el-input",{attrs:{placeholder:"请输入公众号文章地址"},model:{value:t.form.articleLink,callback:function(e){t.$set(t.form,"articleLink",e)},expression:"form.articleLink"}})],1):t._e(),"page"==t.form.link_type?i("el-form-item",{attrs:{label:"链接页面",required:""}},[i("el-select",{attrs:{filterable:"",placeholder:"请选择链接页面"},model:{value:t.form.pageLink,callback:function(e){t.$set(t.form,"pageLink",e)},expression:"form.pageLink"}},t._l(t.pages,function(t){return i("el-option",{key:t.id,attrs:{label:t.name,value:t.id}})}),1)],1):t._e(),i("el-button",{attrs:{type:"primary"},on:{click:t.onSubmit}},[t._v(t._s(t.submitBtnTitle))])],1)],1)],1)},a=[],s=(i("d85c"),i("a6b5")),n=i.n(s),o=(i("b7ad"),i("f360")),l=i.n(o),c=(i("3573"),{components:{},data:function(){return{pageState:"",pageTitle:"",submitBtnTitle:"",pages:[],form:{id:"",image:{},link_type:"none",link:"",articleLink:"",pageLink:""}}},methods:{removeAvatarImageUrl:function(){this.form.image={}},handleAvatarSuccess:function(t){this.form.image.id=t.result_rows.id,this.form.image.url=t.result_rows.url,console.log(t.result_rows.url,this.form.image.url)},beforeAvatarUpload:function(t){var e=t.type.startsWith("image/"),i=t.size/1024/1024<2;return e||this.$message.error("只允许上传图片"),i||this.$message.error("上传图片大小不能超过 2MB!"),e&&i},initForm:function(t){l()(this.form,t),this.form["".concat(t.link_type,"Link")]=t.link},formatSubmitValue:function(){if(this.form.image.id){switch(this.form.link_type){case"none":this.form.link="";break;case"page":if(!this.form.pageLink)return void this.$message.error("链接页面不可为空");this.form.link=this.form.pageLink;break;case"article":if(!this.form.articleLink)return void this.$message.error("文章地址不可为空");this.form.link=this.form.articleLink}var t={id:this.form.id,slider:l()({},this.form)};return t.slider.image_attributes={id:this.form.image.id},t.slider.image=t.slider.pageLink=t.slider.articleLink=void 0,t}this.$message.error("图片不能为空")},onSubmit:function(){var t=this,e=this.formatSubmitValue();console.log(n()(e)),e&&this.$http[this.submitFuncName](e).then(function(e){0==e.data.retcode?(t.initForm(e.data.result_rows),t.$message.success("保存成功"),t.$router.push({path:"/rotation/list"})):t.$message.error("保存失败")})}},mounted:function(){var t=this;switch(this.$router.currentRoute.name){case"rotation_create":this.pageTitle="添加轮播图",this.submitBtnTitle="提交",this.submitFuncName="rotationCreate";break;default:this.pageTitle="编辑轮播图",this.submitBtnTitle="保存所有编辑结果",this.submitFuncName="rotationUpdate",this.$http.rotationDetail(this.$router.currentRoute.params).then(function(e){e&&t.initForm(e.data.result_rows)})}this.$http.pageList({per:100,page:0}).then(function(e){e&&l()(t.pages,e.data.result_rows.pages)})}}),u=c,m=(i("bbde5"),i("25c1")),f=Object(m["a"])(u,r,a,!1,null,null,null);f.options.__file="detail.vue";e["default"]=f.exports},f360:function(t,e,i){t.exports=i("bdcc")}}]);
//# sourceMappingURL=chunk-d2f7a4b8.2174b3d3.js.map