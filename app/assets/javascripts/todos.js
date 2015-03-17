$(document).ready(function() {
  
  $("form").submit(function(e) {
    e.preventDefault();
    var input = $("#todo_item").val();
    $.ajax({
      url: '/create',
      method: 'post',
      datatype: 'json',
      data: {
        item: input
      },
      success: function(data) {
        $(".list").empty();
        var x = $.parseHTML(data);
        var list = x[20];
        console.log(x[20]);
        $(".list").append(list);
        $("#todo_item").val("");
      }
    });
  });

  $("#del").click(function(e) {
    e.preventDefault();
    var id = $("#del").html();
    console.log(id);
    $.ajax({
      url: '/delete',
      method: 'delete',
      data: {
        id: id
      }
    });
  });


  


























});