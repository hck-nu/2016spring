var todoList = $(".todo_list");

$("#new_item").keypress(function(e) {
    if (e.which === 13) {
        alert($(this).val());
        $(this).val('');
    }
});