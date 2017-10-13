function makePage(param){
	var tag = param.tag || "<li>$$page</li>"
    var tagStart = param.tagStart || "<li name=$$Num>";
    var tagEnd = param.tagEnd || "$$page</li>";
    var pageSize = param.pageSize || 10;
    var liCount = param.liCount || 10;
    var total = param.total || 0;
    var current = param.current || 1;
    var prevBtn = param.prevBtn || "prev";
    var nextBtn = param.nextBtn || "next";

    var tempEnd = makeTempEnd();
    var startNum = makeStart();
    var realEnd = makeRealEnd();
    var prev = startNum - 1;
    var next = tempEnd * pageSize > total? 0: tempEnd + 1;

//    console.log("tempEnd: " + tempEnd);
//    console.log("startNum: " + startNum);
//    console.log("realEnd: " + realEnd);
//    console.log("prev: " + prev);
//    console.log("next: " + next);
//    console.log(makeTags());

    function makeTags() {

        var str = "";

        if(prev != 0){
//          str += tag.replace("$$page", prev);
        	str += tagStart.replace("$$Num", prev) + tagEnd.replace("$$page", prevBtn);
        }

        for(var i = startNum; i <= realEnd; i++){
//            str += tag.replace("$$page", i);
        	str += tagStart.replace("$$Num", i) + tagEnd.replace("$$page", i);
        }

        if(next != 0){
//            str += tag.replace("$$page", next);
        	str += tagStart.replace("$$Num", next) + tagEnd.replace("$$page", nextBtn);
        }

        return str;
    }

    //tempEnd
    function makeTempEnd(){
        return Math.ceil(current/liCount) * liCount;
    }

    //start
    function makeStart() {
        return tempEnd - liCount + 1;
    }

    //realEnd
    function makeRealEnd() {

        var lastPage = Math.ceil(total/pageSize);

        return tempEnd > lastPage ? lastPage : tempEnd;

    }
    
    return makeTags();

}