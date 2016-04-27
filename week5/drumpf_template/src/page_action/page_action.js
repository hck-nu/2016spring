var replaceList = $(".replace_list");
var trumpIsHappy = true;

// Get all of the replacements and prepend them to the list so we know what we're working with

$("#trump_image").click(function() {
    if (trumpIsHappy) {
        // Make trump sad
        trumpIsHappy = false;
    } else {
        // Make trump happy
        trumpIsHappy = true;
    }
});

$("#add_replacement").click(function(e) {
    // Add another field for a replacement
});

$("#save").click(function() {
    var list = [];
    $(".replacement").each(function() {
        var fromText; // Get the text
        var toText;
        if (fromText !== "" && toText !== "") {
            list.push({from: fromText, to: toText});
        }
    });
    console.log(list);
    chrome.storage.sync.set({'replacements': list}, function() {
        // Make the saved message visible
    });
});

$("#clear").click(function() {
    chrome.storage.sync.set({'replacements': []}, function() {
        // Clear the list of all replacements
        // Make the cleared message visible
    });
});