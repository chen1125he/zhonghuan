(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-1ec1df2e"],{3999:function(e,t,a){"use strict";var i=a("7848"),s=a("41e6"),r=a("48e1"),n=a("31e8"),o=a("3888"),c=Object.assign;e.exports=!c||a("3f16")(function(){var e={},t={},a=Symbol(),i="abcdefghijklmnopqrst";return e[a]=7,i.split("").forEach(function(e){t[e]=e}),7!=c({},e)[a]||Object.keys(c({},t)).join("")!=i})?function(e,t){var a=n(e),c=arguments.length,l=1,p=s.f,m=r.f;while(c>l){var u,f=o(arguments[l++]),g=p?i(f).concat(p(f)):i(f),d=g.length,h=0;while(d>h)m.call(f,u=g[h++])&&(a[u]=f[u])}return a}:c},"41e6":function(e,t){t.f=Object.getOwnPropertySymbols},"48e1":function(e,t){t.f={}.propertyIsEnumerable},"7e96":function(e,t,a){var i=a("a345");i(i.S+i.F,"Object",{assign:a("3999")})},aeeb:function(e,t,a){},ea50:function(e,t,a){"use strict";var i=a("aeeb"),s=a.n(i);s.a},eace:function(e,t,a){"use strict";a.r(t);var i=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"container",staticStyle:{margin:"15px 15px"}},[a("el-row",{staticStyle:{"font-size":"16px",color:"#303133"},attrs:{type:"flex",justify:"start"}},[e._v(e._s(e.pageTitle))]),a("el-row",{staticStyle:{"margin-top":"30px"},attrs:{type:"flex",justify:"start"}},[a("el-form",{ref:"form",staticStyle:{"min-width":"500px"},attrs:{model:e.form,rules:e.rules,"label-width":"80px","label-position":"right"}},[a("el-form-item",{attrs:{label:"页面名称",prop:"name"}},[a("el-row",{attrs:{type:"flex"}},[a("el-col",{attrs:{span:20}},[a("el-input",{attrs:{placeholder:"请输入页面名称",type:"textarea",autosize:""},model:{value:e.form.name,callback:function(t){e.$set(e.form,"name",t)},expression:"form.name"}})],1)],1)],1),a("div",{staticStyle:{"margin-left":"10px","font-size":"14px","font-weight":"900"}},[e._v("页面内容"),a("i",{staticClass:"avatar-limit"},[e._v("图片小于1M,格式jpg,png,jpeg")])]),e._l(e.form.page_items,function(t,i){return["content"==t.item_type?a("el-form-item",{key:i,attrs:{label:"文字"}},[a("el-row",{attrs:{type:"flex"}},[a("el-col",{attrs:{span:20}},[a("el-input",{staticStyle:{width:"100%"},attrs:{placeholder:"请输入文字 ",type:"textarea",autosize:""},model:{value:t.content,callback:function(a){e.$set(t,"content",a)},expression:"item.content"}})],1),a("el-col",{attrs:{span:2,offset:2}},[a("el-button",{attrs:{icon:"el-icon-delete",size:"mini"},on:{click:function(t){e.deleteTextImage(i)}}})],1)],1)],1):e._e(),"image"==t.item_type?a("el-form-item",{key:i,attrs:{label:"图片"}},[a("el-row",{attrs:{type:"flex"}},[a("el-col",{attrs:{span:10}},[a("el-upload",{staticClass:"avatar-uploader",attrs:{action:"http://szebra.cn/api/admin/images.json","show-file-list":!1,drag:!1,multiple:!1,name:"image[file]","on-success":e.handleAvatarSuccess(t),"before-upload":e.beforeAvatarUpload}},[t.image?a("img",{staticClass:"avatar",attrs:{src:t.image}}):a("i",{staticClass:"el-icon-plus avatar-uploader-icon"})])],1),a("el-col",{attrs:{span:2,offset:2}},[a("el-button",{attrs:{icon:"el-icon-delete",size:"small"},on:{click:function(t){e.deleteTextImage(i)}}})],1)],1)],1):e._e()]}),a("el-row",{staticStyle:{"margin-bottom":"30px","margin-top":"30px"}},[a("el-button",{attrs:{type:"primary",plain:"",size:"small"},on:{click:e.addText}},[e._v("添加文字")]),a("el-button",{attrs:{type:"primary",plain:"",size:"small"},on:{click:e.addImage}},[e._v("添加图片")])],1),a("el-button",{attrs:{type:"primary"},on:{click:function(t){e.submitForm("form")}}},[e._v("保存")])],2)],1)],1)},s=[],r=(a("7e96"),a("c839"),a("ff66"),a("ea23"),a("dbff"),2),n={components:{},data:function(){return{pageState:"",pageTitle:"",pageId:"",form:{name:"",page_items:[]},rules:{name:{required:!0,message:"请输入资讯标题名称",trigger:"blur"}}}},watch:{pageState:function(e){var t="自定义";switch(e){case 1:this.pageTitle="新增".concat(t);break;case 2:this.pageTitle="编辑".concat(t);break;case 3:this.pageTitle="".concat(t,"详情");break}}},methods:{queryPageDetail:function(){var e=this,t={page_id:this.pageId};this.$http.pageDetail(t,"get").then(function(t){var a=t.data,i=a.result_rows||{};0===a.retcode?e.form=i:e.$message.error("".concat(a.retcode).concat(a.message))})},addText:function(){this.form.page_items.push({item_type:"content",image:"",content:""})},addImage:function(){this.form.page_items.push({item_type:"image",image:"",content:""})},deleteTextImage:function(e){this.form.page_items.splice(e,1)},submitForm:function(e){var t=this;this.$refs[e].validate(function(e){if(!e)return!1;var a={},i={};a.name=t.form.name,a.page_items_attributes=t.form.page_items.map(function(e,t){return Object.assign({position:t},e)}),i.page=a,1===t.pageState?t.$http.addPage(i,"post").then(function(e){var a=e.data;0===a.retcode?(t.$message.success("新增成功"),setTimeout(function(){t.$router.push({path:"/page/list"})},300)):t.$message.error("新增失败")}):(i.page_id=t.pageId,t.$http.editPage(i,"patch").then(function(e){var a=e.data;0===a.retcode?(t.$message.success("修改成功"),setTimeout(function(){t.$router.push({path:"/page/list"})},300)):t.$message.error("修改成功")}))})},handleAvatarSuccess:function(e){return function(t){var a=t.result_rows||{},i=t.retcode;0===i?(this.$message.success("上传成功"),e.image=a.url,e.image_attributes={},e.image_attributes.id=a.id):this.$message.error("".concat(i).concat(t.message))}},beforeAvatarUpload:function(e){var t="image/jpeg"===e.type,a="image/jpeg"===e.type,i="image/png"===e.type,s=e.size/1024/1024<r;return t||a||i||this.$message.error("上传头像图片只能是 JPG、jpeg、png格式!"),s||this.$message.error("上传头像图片大小不能超过".concat(r," MB!")),t&&s}},mounted:function(){this.pageState=+this.$route.query.pageState||1,this.pageId=this.$route.query["page_id"]||"",1!==this.pageState&&this.queryPageDetail()}},o=n,c=(a("ea50"),a("048f")),l=Object(c["a"])(o,i,s,!1,null,null,null);l.options.__file="detail.vue";t["default"]=l.exports}}]);
//# sourceMappingURL=chunk-1ec1df2e.aae8501f.js.map