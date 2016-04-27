var replaceList = $(".replace_list");
var trumpIsHappy = true;

chrome.storage.sync.get("replacements", function(items) {
    var r = items.replacements;
    for (var i = 0, l = r.length; i < l; i++) {
        replaceList.prepend('<div class="replacement"><input id="from" type="text" value="' + r[i].from + '"> to <input id="to" type="text" value="' + r[i].to + '"></div>');
    }
    replaceText(r);
});

$("#trump_image").click(function() {
    if (trumpIsHappy) {
        $(this).attr("src", "sad_trump.jpg");
        trumpIsHappy = false;
    } else {
        $(this).attr("src", "happy_trump.jpg");
        trumpIsHappy = true;
    }
});

$("#add_replacement").click(function(e) {
    // alert($(this).val());
    replaceList.append('<div class="replacement"><input id="from" type="text" placeholder="Trump"> to <input id="to" type="text" placeholder="Drumpf"></div>');
    $(this).val('');
});

$("#save").click(function() {
    var list = [];
    $(".replacement").each(function() {
        var fromText = $(this).find("#from").val();
        var toText = $(this).find("#to").val();
        if (fromText !== "" && toText !== "") {
            list.push({from: fromText, to: toText});
        }
    });
    console.log(list);
    chrome.storage.sync.set({'replacements': list}, function() {
        $("#saved").css("visibility", "visible");
    });
});

$("#clear").click(function() {
    chrome.storage.sync.set({'replacements': []}, function() {
        replaceList.empty();
        $("#cleared").css("visibility", "visible");
    });
});