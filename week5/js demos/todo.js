var todoList = $(".todo_list");

$("#new_item").on("keypress", function(e) {
    if (e.which === 13) {
        alert($("#new_item").val());
        todoList.append('<label class="item"><input class="check" type="checkbox">' + $(this).val() + '</label>');
        $(this).val('');
    }
});

todoList.on("click", ".check", function() {
    $(this).fadeOut(250, function() {
        $(this).parent().remove();
    });
});

function sayhi(argument) {
    // body...
}