(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-399f1060"],{"38f5":function(e,t,a){},"54be":function(e,t,a){"use strict";a.r(t);var i=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"container",staticStyle:{margin:"15px 15px"}},[a("el-row",{staticStyle:{"font-size":"16px",color:"#303133"},attrs:{type:"flex",justify:"start"}},[e._v(e._s(e.pageTitle))]),a("el-row",{staticStyle:{"margin-top":"30px"},attrs:{type:"flex",justify:"start"}},[a("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules,"label-width":"80px","label-position":"right"}},[a("el-form-item",{attrs:{label:"资讯标题",prop:"title"}},[a("el-input",{attrs:{placeholder:"请输入资讯标题",type:"textarea",autosize:""},model:{value:e.form.title,callback:function(t){e.$set(e.form,"title",t)},expression:"form.title"}})],1),a("el-form-item",{attrs:{label:"资讯描述",prop:"desc"}},[a("el-input",{attrs:{placeholder:"请输入资讯描述",type:"textarea",autosize:""},model:{value:e.form.desc,callback:function(t){e.$set(e.form,"desc",t)},expression:"form.desc"}})],1),a("el-form-item",{attrs:{label:"资讯图片",prop:"image"}},[a("el-upload",{staticClass:"avatar-uploader",attrs:{action:"https://jsonplaceholder.typicode.com/posts/","show-file-list":!1,"on-success":e.handleAvatarSuccess,"before-upload":e.beforeAvatarUpload}},[e.form.image&&e.form.image.original?a("img",{staticClass:"avatar",attrs:{src:e.form.image.original}}):a("i",{staticClass:"el-icon-plus avatar-uploader-icon"})]),a("i",{staticClass:"avatar-limit"},[e._v("图片小于1M,格式jpg,png,jpeg")])],1),a("el-form-item",{attrs:{label:"阅读基数",prop:"base_num"}},[a("el-input-number",{attrs:{label:""},model:{value:e.form.base_num,callback:function(t){e.$set(e.form,"base_num",t)},expression:"form.base_num"}})],1),a("el-form-item",{attrs:{label:"发布时间",prop:"public_at"}},[a("el-date-picker",{attrs:{align:"right",type:"date",placeholder:"选择日期","picker-options":e.pickerOptions1},model:{value:e.form.public_at,callback:function(t){e.$set(e.form,"public_at",t)},expression:"form.public_at"}})],1),a("el-form-item",{attrs:{label:"资讯类别",prop:"link_type"}},[a("el-radio-group",{model:{value:e.form.link_type,callback:function(t){e.$set(e.form,"link_type",t)},expression:"form.link_type"}},[a("el-radio",{attrs:{label:"article"}},[e._v("链接公众号文章")]),a("el-radio",{attrs:{label:"page"}},[e._v("自定义页面")])],1)],1),"article"==e.form.link_type?a("el-form-item",{attrs:{label:"文章地址",prop:"link"}},[a("el-input",{attrs:{placeholder:"请输入公众号文章地址"},model:{value:e.form.link,callback:function(t){e.$set(e.form,"link",t)},expression:"form.link"}})],1):a("el-form-item",{attrs:{label:"链接页面",prop:"link"}},[a("el-select",{attrs:{placeholder:"请选择链接页面"},model:{value:e.form.link,callback:function(t){e.$set(e.form,"link",t)},expression:"form.link"}},e._l(e.pageList,function(t){return a("el-option",{key:t.id,attrs:{label:t.name,value:t.id}},[e._v(e._s(t.name))])}),1)],1),a("el-button",{attrs:{type:"primary"},on:{click:function(t){e.submitForm("form")}}},[e._v("保存")])],1)],1)],1)},r=[],s={components:{},data:function(){return{pageState:"",informationId:"",pageTitle:"",form:{title:"",desc:"",position:0,image:"",link_type:"",link:"",public_at:"",base_num:0},rules:{title:{required:!0,message:"请输入资讯标题名称",trigger:"blur"},desc:{required:!0,message:"请输入资讯描述",trigger:"blur"},image:{required:!0,message:"请上传资讯图片"},public_at:{required:!0,message:"请输入发布时间",trigger:"blur"},link:{required:!0,message:"请输入链接",trigger:"blur"}},pageList:[],pickerOptions1:{disabledDate:function(e){return e.getTime()>Date.now()},shortcuts:[{text:"今天",onClick:function(e){e.$emit("pick",new Date)}},{text:"昨天",onClick:function(e){var t=new Date;t.setTime(t.getTime()-864e5),e.$emit("pick",t)}},{text:"一周前",onClick:function(e){var t=new Date;t.setTime(t.getTime()-6048e5),e.$emit("pick",t)}}]}}},watch:{pageState:function(e){switch(e){case 1:this.pageTitle="新增资讯";break;case 2:this.pageTitle="编辑资讯";break;case 3:this.pageTitle="资讯详情";break}}},methods:{queryInfomationDetail:function(){var e=this,t={information_id:this.informationId};this.$http.InfomationDetail(t,"get").then(function(t){var a=t.data.success;e.form=a,console.log("InfomationDetail",a)})},queryPageList:function(){var e=this;this.$http.pageList({},"get").then(function(t){var a=t.data.success;e.pageList=a.pages,console.log("pageList",e.pageList)})},submitForm:function(e){var t=this;this.$refs[e].validate(function(e){if(!e)return console.log("error submit!!"),!1;1===t.pageState?t.$http.addInformation(t.form,"post").then(function(e){var a=e.data.success;a?t.$message.success("新增成功"):t.$message.error("新增失败")}):t.$http.editInformation(t.form,"patch").then(function(e){var a=e.data.success;a?t.$message.success("修改成功"):t.$message.error("修改失败")})})},handleAvatarSuccess:function(e,t){this.form.imageUrl=URL.createObjectURL(t.raw)},beforeAvatarUpload:function(e){var t="image/jpeg"===e.type,a="image/jpeg"===e.type,i="image/png"===e.type,r=e.size/1024/1024<2;return t||a||i||this.$message.error("上传头像图片只能是 JPG、jpeg、png格式!"),r||this.$message.error("上传头像图片大小不能超过 2MB!"),t&&r}},mounted:function(){this.pageState=+this.$route.query.pageState||1,this.informationId=this.$route.query["information_id"]||"",1!==this.pageState?this.queryInfomationDetail():this.form.link_type="article",this.queryPageList()}},o=s,l=(a("8e20"),a("048f")),n=Object(l["a"])(o,i,r,!1,null,null,null);n.options.__file="detail.vue";t["default"]=n.exports},"8e20":function(e,t,a){"use strict";var i=a("38f5"),r=a.n(i);r.a}}]);
//# sourceMappingURL=chunk-399f1060.5b820ebd.js.map