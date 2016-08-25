//获取当前网址
var curWwwPath = window.document.location.href;
//获取主机地址之后的目录，如： uimcardprj/share/meun.jsp
var pathName = window.document.location.pathname;
var localhostPaht="";
if(pathName=="/"){
	localhostPaht=curWwwPath;
}else{
	var pos = curWwwPath.indexOf(pathName);
	//获取主机地址，如： http://localhost:8083
	localhostPaht = curWwwPath.substring(0, pos);
}
//获取带"/"的项目名，如：/uimcardprj
var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
var projectAllName = localhostPaht+projectName;
$(function(){$("#loader").hide()});
//获取网址的某值 如SQDZJ
function getQueryString(name){
	var param=window.location.search.substr(1);
	var ps=param.split("&");
	for(var i=0;i<ps.length;i++){
		if(ps[i].indexOf(name)!=-1){
			return ps[i].split("=")[1];
		}
	}
}

//easyui中 传入小数 通过百分比 算出数值。
function fixWidth(percent) {
    var window_width = $(window).width();
    return window_width * percent;

}



//json框架 去空转义特殊字符 适合整串使用
function toJsonString(jsonObj) {
    var str = "";
    if (jsonObj instanceof Array) {
        str = "{";
        for (var i = 0;i < jsonObj.length;++i) {

            var strTemp = toJsonString(jsonObj[i]);
            if (strTemp != "")
                str = str + strTemp + "},{";
        }

        if (str.length <= 1)
            return ""
        else {
            str = str.substring(0, str.length - 2);
        }
        return str;
    }
    else if (typeof (jsonObj)) {
        for (var item in jsonObj) {
            if (jsonObj[item] != undefined) {
                jsonObj[item] = trim(jsonObj[item].toString());
                if (jsonObj[item] != "") {
                    str = str + quote(item) + ":" + quote(jsonObj[item]) + ",";
                }
            }
        }
        if (str.length < 1) {
            return "";
        }
        else {
            str = str.substring(0, str.length - 1);
        }
        return str;
    }
    else {
        return str;
    }
}

function quote(string) {
    escapable = /[\\\"\x00-\x1f\x7f-\x9f\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g;
    meta = {
        // table of character substitutions
'\b' : '\\b', '\t' : '\\t', '\n' : '\\n', '\f' : '\\f', '\r' : '\\r', '"' : '\\"', '\\' : '\\\\'
    };
    // If the string contains no control characters, no quote characters, and no
    // backslash characters, then we can safely slap some quotes around it.
    // Otherwise we must also replace the offending characters with safe escape
    // sequences.
    escapable.lastIndex = 0;
    return escapable.test(string) ? '"' + string.replace(escapable, function (a) {
        var c = meta[a];
        return typeof c === 'string' ? c : '\\u' + ('0000' + a.charCodeAt(0).toString(16)).slice( - 4);
    }) + '"' : '"' + string + '"';
}

//获取当前时间
function getCurrTime() {
    var d = new Date();
    var year = d.getFullYear();
    var month = d.getMonth() + 1;
    month = month < 10 ? ("0" + month) : month;
    var dt = d.getDate();
    dt = dt < 10 ? ("0" + dt) : dt;
    var hour = d.getHours();
    hour = hour < 10 ? ("0" + hour) : hour;
    var min = d.getMinutes();
    min = min < 10 ? ("0" + min) : min;
    var sec = d.getSeconds();
    sec = sec < 10 ? ("0" + sec) : sec;
    var today = year + "-" + month + "-" + dt + " " + hour + ":" + min + ":" + sec;
    return today;
}

//去除左右空格,制表符,换行符操作，包括全角空格，*表示去除不止1个
function trim(s) {
    return s.replace(/(^\s*)|(\s*$)/g, "");  
}
//判断正整数   
function checkRate(input) {
    var re = /^[1-9]+[0-9]*]*$/;
    if (!re.test(input)) {
        return false;
    }
    else {
        return true;
    }
}
//判断M位正整数   
function checkNRate(input, M) {
    M = M - 1;
    var re = new RegExp('^[1-9]\\d{0,' + M + '}$');
    if (!re.test(input)) {
        return false;
    }
    else {
        return true;
    }
}
//在输入时就校验数据（检验ID，输入最大值，小数位数）("id","999","0.01")
function checkTextValue(objID, intMaxValue, pointMinValue) {
    $(objID).live('keyup', function () {
        var textValue = checkNum($(this).val());
        var textValues = "";
        if (textValue.indexOf('.') >  - 1 && pointMinValue > 0) {
            var intValue = textValue.split('.')[0];
            while (Number(intValue) > intMaxValue) {
                intValue = intValue.substring(0, intValue.length - 1);
            }
            var pointValue = textValue.split('.')[1];
            if (pointValue.length > 0 && (Number('0.' + pointValue) != 0 || pointValue.length > pointMinValue.toString().split('.')[1].length)) {
                while ((Number('0.' + pointValue) < pointMinValue && Number('0.' + pointValue) != 0) || pointValue.length > pointMinValue.toString().split('.')[1].length) {
                    pointValue = pointValue.substring(0, pointValue.length - 1);
                }
            }
            textValues = intValue + '.' + pointValue;
        }
        else {
            //          while (textValue.length >= 2 && textValue[0] == 0  && textValue[1] == 0 ) {
            //            
            //                textValue = textValue.substring(0, textValue.length - 1);
            //            }
            while (Number(textValue) > intMaxValue || textValue.indexOf('.') >  - 1) {
                textValue = textValue.substring(0, textValue.length - 1);
            }

            textValues = textValue;
        }
        $(this).val(textValues);
    });
}

function checkNum(obj) {
    while (isNaN(obj)) {
        obj = obj.substring(0, obj.length - 1);
    }
    return obj;
}
///邮箱验证
function checkeMail(mail) {
    // 功能函数
    var myreg = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
    if (mail != "") {
        if (!myreg.test(mail)) {
            return false;
        }
        else 
            return true;
    }
    else 
        return false;
}
//移动电话
function isMobile(mobile) {
    var reg0 = /^13\d{5,9}$/;
    var reg1 = /^153\d{4,8}$/;
    var reg2 = /^159\d{4,8}$/;
    var reg3 = /^0\d{10,11}$/;
    if (mobile != "") {
        var my = false;
        if (reg0.test(mobile))
            my = true;
        if (reg1.test(mobile))
            my = true;
        if (reg2.test(mobile))
            my = true;
        if (reg3.test(mobile))
            my = true;
        if (!my) {
            return false;
        }
        else 
            return true;
    }
    return false;
}
//邮政编码 
function isPostalCode(yzbm) {
    var pattern = /^[0-9]{6}$/;
    if (yzbm != "") {
        if (!pattern.test(yzbm)) {
            return false;
        }
        else 
            return true;
    }
    else 
        return false;
}

///身份证验证
function validateIdCard(obj) {
    var aCity = {
        11 : "北京", 12 : "天津", 13 : "河北", 14 : "山西", 15 : "内蒙古", 21 : "辽宁", 22 : "吉林", 23 : "黑龙 江", 31 : "上海", 32 : "江苏", 33 : "浙江", 34 : "安徽", 35 : "福建", 36 : "江西", 37 : "山东", 41 : "河南", 42 : "湖 北", 43 : "湖南", 44 : "广东", 45 : "广西", 46 : "海南", 50 : "重庆", 51 : "四川", 52 : "贵州", 53 : "云南", 54 : "西 藏", 61 : "陕西", 62 : "甘肃", 63 : "青海", 64 : "宁夏", 65 : "新疆", 71 : "台湾", 81 : "香港", 82 : "澳门", 91 : "国 外"
    };
    var iSum = 0;
    //var info = "";
    var strIDno = obj;
    var idCardLength = strIDno.length;
    if (!/^\d{17}(\d|x)$/i.test(strIDno) && !/^\d{15}$/i.test(strIDno))
        return false;//非法身份证号
    if (aCity[parseInt(strIDno.substr(0, 2))] == null)
        return false;// 非法地区
    // 15位身份证转换为18位
    if (idCardLength == 15) {
        sBirthday = "19" + strIDno.substr(6, 2) + "-" + Number(strIDno.substr(8, 2)) + "-" + Number(strIDno.substr(10, 2));
        var d = new Date(sBirthday.replace(/-/g, "/"))
        var dd = d.getFullYear().toString() + "-" + (d.getMonth() + 1) + "-" + d.getDate();
        if (sBirthday != dd)

            return false;//非法生日
        strIDno = strIDno.substring(0, 6) + "19" + strIDno.substring(6, 15);
        strIDno = strIDno + GetVerifyBit(strIDno);
    }
    // 判断是否大于2078年，小于1900年
    var year = strIDno.substring(6, 10);
    if (year < 1900 || year > 2078)
        return false;//非法生日
    //18位身份证处理
    //在后面的运算中x相当于数字10,所以转换成a
    strIDno = strIDno.replace(/x$/i, "a");
    sBirthday = strIDno.substr(6, 4) + "-" + Number(strIDno.substr(10, 2)) + "-" + Number(strIDno.substr(12, 2));
    var d = new Date(sBirthday.replace(/-/g, "/"))
    if (sBirthday != (d.getFullYear() + "-" + (d.getMonth() + 1) + "-" + d.getDate()))
        return false;//非法生日
    // 身份证编码规范验证
    for (var i = 17;i >= 0;i--)
        iSum += (Math.pow(2, i) % 11) * parseInt(strIDno.charAt(17 - i), 11);
    if (iSum % 11 != 1)
        return false;// 非法身份证号
    // 判断是否屏蔽身份证
    var words = new Array();
    words = new Array("11111119111111111", "12121219121212121");
    for (var k = 0;k < words.length;k++) {
        if (strIDno.indexOf(words[k]) !=  - 1) {
            return false;
        }
    }
    return true;
}
//15位转18位中,计算校验位即最后一位
function GetVerifyBit(id) {
    var result;
    var nNum = id.charAt(0) * 7 + id.charAt(1) * 9 + id.charAt(2) * 10 + id.charAt(3) * 5 + id.charAt(4) * 8 + id.charAt(5) * 4 + id.charAt(6) * 2 + id.charAt(7) * 1 + id.charAt(8) * 6 + id.charAt(9) * 3 + id.charAt(10) * 7 + id.charAt(11) * 9 + id.charAt(12) * 10 + id.charAt(13) * 5 + id.charAt(14) * 8 + id.charAt(15) * 4 + id.charAt(16) * 2;
    nNum = nNum % 11;
    switch (nNum) {
        case 0:
            result = "1";
            break;
        case 1:
            result = "0";
            break;
        case 2:
            result = "X";
            break;
        case 3:
            result = "9";
            break;
        case 4:
            result = "8";
            break;
        case 5:
            result = "7";
            break;
        case 6:
            result = "6";
            break;
        case 7:
            result = "5";
            break;
        case 8:
            result = "4";
            break;
        case 9:
            result = "3";
            break;
        case 10:
            result = "2";
            break;
    }

    return result;

}

//验证手机号码
function checkTelephone(cellPhone) {
    var RegCellPhone = /^1[3|5][0-9]|[4][7]|[8][0|1|2|3|5|6|7|8|9]\d{4,8}$/;
    falg = cellPhone.search(RegCellPhone);
    if (String(cellPhone).length != "11") {
        return false;
    }
    if (falg ==  - 1) {
        return false;
    }
    return true;
}

//json串去空操作 传入为JSON对象
function clearNull2(data){
//	var data={"table":{"tableName":"Pub_Query","row":[{"abc":"","CompanyId":"123456","table":{"tableName":"Pub_Query","row":{}}}]}};
	return do_Next(data)[0];
}
function do_Next(data){
	var temp=[];
	if(data.length==undefined){
		temp.push(data);
	}else{
		temp=data;
	}
	for(var i=0;i<temp.length;i++){
		for(var key in temp[i]){
			if(temp[i][key]==""||temp[i][key]=="null"||temp[i][key]=="undefined"){
				delete temp[i][key];
			}else if(key=="table"||key=="row"){
				var next=do_Next(temp[i][key]);
				for(var j=0;j<next.length;j++){
					var length=0;
					for(var key2 in next[j]){
						length++;
					}
					if((length==1&&next[j].tableName!=undefined)||length==0){
						next.splice(j,1);
						j--;
					}
				}
				if(temp[i][key].length==undefined){
					temp[i][key]=next[0];
				}else{
					temp[i][key]=next;
				}
				if(next.length==0){
					delete temp[i][key];
				}
			}
		}
	}
	return temp;
}
/* 去掉json串中值为null或者空字符串的元素*/
function clearNull(json){
    json=json.replace(/[ ]/g,"");
    json=json.replace(/"\w+":"null",/g,"");
    json=json.replace(/"\w+":"",/g,"");
    json=json.replace(/,"\w+":""/g,"");
    json=json.replace(/"\w+":"null"/g,"");
    json=json.replace(/,"\w+":null/g,"");
    json=json.replace(/\{\}/g,"");
    json=json.replace(/"\w+":""/g,"");
    json=json.replace(/,"\w+":\{\}/g,"");
    json=json.replace(/,"\w+":\[\{\}\]/g,"");
    json=json.replace(/,"\w+":\[\,\]/g,"");
    json=json.replace(/\[,\{/g,"[{");
    json=json.replace(/\],\}/g,"]}");
    json=json.replace(/,"\w+":\[\]/g,"");
    //,"table":{"tableName":"Pub_Org"}
    json=json.replace(/,"table":\{"tableName":"\w+"\}/g,"");
    //{"tableName": "Spv_InspectPsl"},
    json=json.replace(/\{"tableName":"\w+"\},/g,"");
    return json;

}
