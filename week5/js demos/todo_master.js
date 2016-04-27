var todoList = $(".todo_list");

$("#new_item").keypress(function(e) {
    if (e.which === 13) {
        // alert($(this).val());
        todoList.append('<label class="item"><input class="check" type="checkbox">' + $(this).val() + '</label>');
        $(this).val('');
    }
});

$(".check").on('click', function(e) {
    // alert("clicked");
    $(this).parent().remove();
});

todoList.on('click', '.check', function(e) {
    // alert("clicked");
    $(this).parent().fadeOut(200, function() {
        $(this).remove();
    });
});