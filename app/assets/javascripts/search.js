$(document).ready(function(){
  $("#search-author").on('keyup', fetchResults);
});

function fetchResults(){
  var queryParam = $("#search-author").val();
  filter(queryParam);
}

function filter(queryParam){
  var $books = $(".book");
  $books.each(function(index, book) {
    var $book = $(book);
    if ($book.children('.author').text().indexOf(queryParam) !== -1 ) {
      $book.show();
    } else {
      $book.hide();
    }
  });
};
