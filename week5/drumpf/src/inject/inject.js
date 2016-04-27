// Shows the page action
chrome.runtime.sendMessage({show: "me the money"});

console.log("hi");

var text_tags = $("p, span, a, div, h1, h2, h3");

// $(document).click(function(event) {
//     console.log(event.target);
//     $(event.target).addClass("murica");
//     $(event.target).fadeOut().fadeIn();
// });

function replaceText(replacements) {
    $("p, span, a, div, title, em, h1, h2, h3, h4, h5, h6").contents().filter(function() {
        return this.nodeType == Node.TEXT_NODE;
    }).each(function() {
        var text = this.textContent;
        for (var i = 0, l = replacements.length; i < l; i++) {
            text = text.replace(replacements[i].from, replacements[i].to);
        }
        this.textContent = text;
    });
}

chrome.storage.sync.get("replacements", function(items) {
    var r = items.replacements;
    for (var i = 0, l = r.length; i < l; i++) {
        console.log("Replacing " + r[i].from + " with " + r[i].to);
    }
    replaceText(r);
});