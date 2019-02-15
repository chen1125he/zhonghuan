(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-4a7bab07"],{1346:function(t,e,i){"use strict";var r=i("94fd"),s=i.n(r);s.a},3573:function(t,e,i){"use strict";var r=i("ac1b"),s=i("5b7f"),a=i("3a08"),o="startsWith",l=""[o];r(r.P+r.F*i("7d31")(o),"String",{startsWith:function(t){var e=a(this,t,o),i=s(Math.min(arguments.length>1?arguments[1]:void 0,e.length)),r=String(t);return l?l.call(e,r,i):e.slice(i,i+r.length)===r}})},"3a08":function(t,e,i){var r=i("f83a"),s=i("346b");t.exports=function(t,e,i){if(r(e))throw TypeError("String#"+i+" doesn't accept regex!");return String(s(t))}},6911:function(t,e,i){"use strict";i.r(e);var r=function(){var t=this,e=t.$createElement,i=t._self._c||e;return i("div",{staticClass:"container",staticStyle:{margin:"15px 15px"}},[i("el-row",{staticStyle:{"font-size":"16px",color:"#303133"},attrs:{type:"flex",justify:"start"}},[i("router-link",{staticClass:"el-button--text",attrs:{to:"/property/list"}},[t._v("楼盘管理")]),t._v("\n    / "+t._s(t.pageTitle)+"\n  ")],1),i("el-row",{staticStyle:{"margin-top":"30px"},attrs:{type:"flex",justify:"start"}},[i("el-form",{ref:"form",staticStyle:{width:"100%"},attrs:{model:t.form,"label-width":"100px","label-suffix":":","label-position":"left"}},[i("h1",{staticStyle:{"font-size":"20px"}},[t._v("基本信息")]),i("el-form-item",{attrs:{label:"楼盘名称",prop:"name",required:""}},[i("el-input",{attrs:{placeholder:"请输入楼盘名称"},model:{value:t.form.name,callback:function(e){t.$set(t.form,"name",e)},expression:"form.name"}})],1),i("el-form-item",{attrs:{label:"封面图",prop:"cover",required:""}},[t.form.cover&&t.form.cover.id?i("div",{staticClass:"avatar"},[i("img",{attrs:{src:"http://szebra.cn"+t.form.cover.url}}),i("i",{staticClass:"el-icon-circle-close",on:{click:t.removeConverImageUrl}})]):i("el-upload",{staticClass:"avatar-uploader",attrs:{action:"http://szebra.cn/api/admin/images","show-file-list":!1,"on-success":t.handleAvatarSuccess,name:"image[file]","before-upload":t.beforeAvatarUpload}},[i("i",{staticClass:"el-icon-plus avatar-uploader-icon"})])],1),i("el-form-item",{attrs:{label:"海报图片",prop:"poster",required:""}},[t.form.poster&&t.form.poster.id?i("div",{staticClass:"avatar"},[i("img",{attrs:{src:"http://szebra.cn"+t.form.poster.url}}),i("i",{staticClass:"el-icon-circle-close",on:{click:t.removePosterImageUrl}})]):i("el-upload",{staticClass:"avatar-uploader",attrs:{action:"http://szebra.cn/api/admin/images","show-file-list":!1,"on-success":t.handlePosterAvatarSuccess,name:"image[file]","before-upload":t.beforeAvatarUpload}},[i("i",{staticClass:"el-icon-plus avatar-uploader-icon"})])],1),i("el-form-item",{attrs:{label:"均价"}},[i("el-input",{staticStyle:{"margin-right":"10px"},attrs:{placeholder:"无定价"},model:{value:t.form.price_per_sqm,callback:function(e){t.$set(t.form,"price_per_sqm",e)},expression:"form.price_per_sqm"}}),t._v("\n        元/平\n      ")],1),i("el-form-item",{attrs:{label:"关键词"}},[t._l(t.form.tags,function(e,r){return i("el-tag",{key:e+r,staticStyle:{"margin-right":"10px"},attrs:{closable:"","disable-transitions":!1},on:{close:function(i){t.handleClose(e)}}},[t._v(t._s(e))])}),t.inputVisible?i("el-input",{ref:"saveTagInput",staticClass:"input-new-tag",attrs:{size:"small"},on:{blur:t.handleInputConfirm},nativeOn:{keyup:function(e){return"button"in e||!t._k(e.keyCode,"enter",13,e.key,"Enter")?t.handleInputConfirm(e):null}},model:{value:t.inputValue,callback:function(e){t.inputValue=e},expression:"inputValue"}}):i("el-button",{staticClass:"button-new-tag",attrs:{size:"small"},on:{click:t.showInput}},[t._v("+ 添加")])],2),i("el-form-item",{attrs:{label:"楼盘地址",prop:"address",required:""}},[i("el-input",{attrs:{placeholder:"请输入楼盘地址"},model:{value:t.form.address,callback:function(e){t.$set(t.form,"address",e)},expression:"form.address"}})],1),i("el-form-item",{attrs:{label:"咨询电话",prop:"phone"}},[i("el-input",{attrs:{placeholder:"请输入咨询电话"},model:{value:t.form.phone,callback:function(e){t.$set(t.form,"phone",e)},expression:"form.phone"}})],1),i("el-form-item",{attrs:{prop:"base_count",label:"关注基数"}},[i("el-input",{attrs:{placeholder:"请输入关注基数"},model:{value:t.form.base_count,callback:function(e){t.$set(t.form,"base_count",e)},expression:"form.base_count"}})],1),i("h1",{staticStyle:{"font-size":"20px"}},[t._v("楼盘详情")]),i("el-form-item",{attrs:{label:"开发商"}},[i("el-input",{attrs:{placeholder:"请输入开发商"},model:{value:t.form.developer,callback:function(e){t.$set(t.form,"developer",e)},expression:"form.developer"}})],1),i("el-form-item",{attrs:{label:"物业公司"}},[i("el-input",{attrs:{placeholder:"请输入物业公司"},model:{value:t.form.property_company,callback:function(e){t.$set(t.form,"property_company",e)},expression:"form.property_company"}})],1),i("el-form-item",{attrs:{label:"开盘时间"}},[i("el-date-picker",{attrs:{type:"date",placeholder:"请输入开盘时间"},model:{value:t.form.opening_date,callback:function(e){t.$set(t.form,"opening_date",e)},expression:"form.opening_date"}})],1),i("el-form-item",{attrs:{label:"交楼时间"}},[i("el-date-picker",{attrs:{type:"date",placeholder:"请输入交楼时间"},model:{value:t.form.delivery_date,callback:function(e){t.$set(t.form,"delivery_date",e)},expression:"form.delivery_date"}})],1),i("el-form-item",{attrs:{label:"物业类型"}},[i("el-input",{attrs:{placeholder:"请输入物业类型"},model:{value:t.form.property_type,callback:function(e){t.$set(t.form,"property_type",e)},expression:"form.property_type"}})],1),i("el-form-item",{attrs:{label:"产权年限"}},[i("el-input",{attrs:{placeholder:"请输入产权年限"},model:{value:t.form.property_year,callback:function(e){t.$set(t.form,"property_year",e)},expression:"form.property_year"}})],1),i("el-form-item",{attrs:{label:"车位数量"}},[i("el-input",{attrs:{placeholder:"请输入车位数量"},model:{value:t.form.car_position_count,callback:function(e){t.$set(t.form,"car_position_count",e)},expression:"form.car_position_count"}})],1),i("el-form-item",{attrs:{label:"装修标准"}},[i("el-input",{attrs:{placeholder:"请输入装修标准"},model:{value:t.form.decoration_standard,callback:function(e){t.$set(t.form,"decoration_standard",e)},expression:"form.decoration_standard"}})],1),i("el-form-item",{attrs:{label:"绿化率"}},[i("el-input",{attrs:{placeholder:"请输入绿化率"},model:{value:t.form.green_rate,callback:function(e){t.$set(t.form,"green_rate",e)},expression:"form.green_rate"}})],1),i("el-form-item",{attrs:{label:"容积率"}},[i("el-input",{attrs:{placeholder:"请输入容积率"},model:{value:t.form.plot_ratio,callback:function(e){t.$set(t.form,"plot_ratio",e)},expression:"form.plot_ratio"}})],1),t._l(t.form.building_displays,function(e,r){return i("div",{key:e.id},[i("h1",{staticStyle:{"font-size":"20px"}},[t._v(t._s(e.name))]),t._l(e.building_display_pictures,function(e,s){return[e._destroy?t._e():i("div",{key:e.id,staticStyle:{"margin-top":"20px"}},[i("el-form-item",{attrs:{label:"类目"}},[i("el-input",{staticStyle:{"margin-right":"10px"},attrs:{placeholder:"请输入类目"},model:{value:e.name,callback:function(i){t.$set(e,"name",i)},expression:"displayPictures.name"}}),i("el-button",{attrs:{type:"danger"},on:{click:function(e){e.preventDefault(),t.removeDisplayPictures(r,s)}}},[t._v("删除")])],1),i("div",{staticStyle:{"margin-top":"10px"}},[t._l(e.pictures,function(e,a){return e._destroy?t._e():i("div",{key:e.id,staticClass:"avatar"},[i("img",{attrs:{src:"http://szebra.cn"+e.url}}),i("i",{staticClass:"el-icon-circle-close",on:{click:function(e){t.removeBuildingPictures(r,s,a)}}})])}),i("el-upload",{staticClass:"avatar-uploader",attrs:{action:"http://szebra.cn/api/admin/images","show-file-list":!1,"on-success":t.handleBuildingPictureSuccess(r,s),name:"image[file]","before-upload":t.beforeAvatarUpload}},[i("i",{staticClass:"el-icon-plus avatar-uploader-icon"})])],2)],1)]}),i("el-button",{staticStyle:{"margin-top":"10px","margin-bottom":"20px"},attrs:{plain:""},on:{click:function(e){e.preventDefault(),t.addBuildingDisplayPictures(r)}}},[t._v("+ 添加图片类目")])],2)}),i("h1",{staticStyle:{"font-size":"20px"}},[t._v("楼盘亮点")]),i("el-form-item",{attrs:{label:"亮点概述"}},[i("el-input",{attrs:{placeholder:"请输入亮点概述"},model:{value:t.form.building_description.sub_desc,callback:function(e){t.$set(t.form.building_description,"sub_desc",e)},expression:"form.building_description.sub_desc"}})],1),i("el-table",{staticStyle:{width:"100%"},attrs:{data:t.form.building_description.building_description_details.filter(function(t){return!t._destroy})}},[i("el-table-column",{attrs:{type:"index",width:"100"}}),i("el-table-column",{attrs:{property:"title",label:"亮点标题"},scopedSlots:t._u([{key:"default",fn:function(e){return[i("el-input",{attrs:{type:"text",size:"small"},model:{value:e.row.title,callback:function(i){t.$set(e.row,"title",i)},expression:"scope.row.title"}})]}}])}),i("el-table-column",{attrs:{property:"desc",label:"亮点内容"},scopedSlots:t._u([{key:"default",fn:function(e){return[i("el-input",{attrs:{type:"text",size:"small"},model:{value:e.row.desc,callback:function(i){t.$set(e.row,"desc",i)},expression:"scope.row.desc"}})]}}])}),i("el-table-column",{attrs:{label:"操作"},scopedSlots:t._u([{key:"default",fn:function(e){return[i("el-button",{attrs:{type:"text",size:"small"},nativeOn:{click:function(i){i.preventDefault(),t.deleteRow(e.$index)}}},[t._v("删除")])]}}])})],1),i("div",{staticStyle:{"margin-top":"10px"}},[i("el-button",{on:{click:t.addRow}},[t._v("添加亮点")])],1),i("el-button",{staticStyle:{"margin-top":"20px"},attrs:{type:"primary"},on:{click:t.onSubmit}},[t._v(t._s(t.submitBtnTitle))])],2)],1)],1)},s=[],a=(i("d85c"),i("3573"),i("f360")),o=i.n(a),l={data:function(){return{inputVisible:!1,inputValue:"",pageTitle:"",submitBtnTitle:"",form:{name:"",cover:"",poster:"",price_per_sqm:"",tags:[],address:"",phone:"",property_company:"",developer:"",opening_date:"",delivery_date:"",property_type:"",property_year:"",car_position_count:"",decoration_standard:"",green_rate:"",plot_ratio:"",property_fee_desc:"",building_displays:[{name:"楼盘近景",building_display_pictures:[{name:"",pictures:[]}]}],building_description:{sub_desc:"",building_description_details:[]}}}},methods:{formatDate:function(t){if(!t)return"";var e=new Date(t);return e.setHours(e.getHours()+8),"".concat(e.getFullYear(),"-").concat(e.getMonth()+1,"-").concat(e.getDate())},formatSubmitValue:function(){if(this.form.cover&&this.form.cover.id){if(this.form.address){var t={id:this.form.id,building:o()({},this.form)};return console.log("ret",t),t.building.opening_date=this.formatDate(t.building.opening_date),t.building.delivery_date=this.formatDate(t.building.delivery_date),this.form.cover&&this.form.cover.id&&(t.building.cover_attributes={id:this.form.cover.id}),this.form.poster&&this.form.poster.id&&(t.building.poster_attributes={id:this.form.poster.id}),t.building.building_displays=void 0,t.building.building_displays_attributes=this.form.building_displays.map(function(t){var e=o()({},t);return e.building_display_pictures_attributes=e.building_display_pictures,e.building_display_pictures=void 0,e.building_display_pictures_attributes=e.building_display_pictures_attributes.map(function(t){var e=o()({},t);return e.pictures_attributes=e.pictures,e.pictures=void 0,e}),e}),t.building.building_description=void 0,t.building.building_description_attributes=o()({},this.form.building_description),t.building.building_description_attributes.building_description_details=void 0,t.building.building_description_attributes.building_description_details_attributes=this.form.building_description.building_description_details,console.log(t),t}this.$message.error("地址不可为空")}else this.$message.error("封面不可为空")},handleAvatarSuccess:function(t){this.form.cover=t.result_rows},handlePosterAvatarSuccess:function(t){this.form.poster=t.result_rows},beforeAvatarUpload:function(t){var e=t.type.startsWith("image/"),i=t.size/1024/1024<5;return e||this.$message.error("只允许上传图片"),i||this.$message.error("上传图片大小不能超过 5MB!"),e&&i},handleChange:function(){},removeConverImageUrl:function(){this.form.cover=""},removePosterImageUrl:function(){this.form.poster=""},handleClose:function(t){this.form.tags.splice(this.form.tags.indexOf(t),1)},showInput:function(){var t=this;this.inputVisible=!0,this.$nextTick(function(e){t.$refs.saveTagInput.$refs.input.focus()})},handleInputConfirm:function(){var t=this.inputValue;t&&this.form.tags.push(t),this.inputVisible=!1,this.inputValue=""},deleteRow:function(t){var e=this.form.building_description.building_description_details;e[t]._destroy=!0,e.splice(t,e[t].id?0:1)},addRow:function(){this.form.building_description.building_description_details.push({})},removeDisplayPictures:function(t,e){var i=this.form.building_displays[t].building_display_pictures;i[e]._destroy=!0,i.splice(e,i[e].id?0:1)},addBuildingDisplayPictures:function(t){this.form.building_displays[t].building_display_pictures.push({name:"",pictures:[]})},removeBuildingPictures:function(t,e,i){var r=this.form.building_displays[t].building_display_pictures[e].pictures;r[i]._destroy=!0,r.splice(i,r[i].id?0:1)},handleBuildingPictureSuccess:function(t,e){var i=this.form.building_displays[t].building_display_pictures;return function(t){return i[e].pictures.push(t.result_rows)}},addPictures:function(){this.form.building_displays[0]["building_display_pictures"].push({})},onSubmit:function(){var t=this,e=this.formatSubmitValue();e&&this.$http[this.submitFuncName](e).then(function(e){e&&t.$message.success("保存成功")})}},created:function(){var t=this;switch(this.$router.currentRoute.name){case"property_create":this.pageTitle="新增楼盘",this.submitBtnTitle="提交",this.submitFuncName="buildingCreate";break;default:this.pageTitle="编辑楼盘",this.submitBtnTitle="保存所有编辑结果",this.submitFuncName="buildingUpdate",this.$http.buildingDetail(this.$router.currentRoute.params).then(function(e){e&&(o()(t.form,e.data.result_rows),t.form.building_description||(t.form.building_description={sub_desc:"",building_description_details:[]}))})}}},n=l,c=(i("1346"),i("25c1")),u=Object(c["a"])(n,r,s,!1,null,null,null);u.options.__file="detail.vue";e["default"]=u.exports},"7d31":function(t,e,i){var r=i("b816")("match");t.exports=function(t){var e=/./;try{"/./"[t](e)}catch(i){try{return e[r]=!1,!"/./"[t](e)}catch(s){}}return!0}},"94fd":function(t,e,i){},f360:function(t,e,i){t.exports=i("bdcc")}}]);
//# sourceMappingURL=chunk-4a7bab07.388653d1.js.map