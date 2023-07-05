// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Structs{

    //declaring a struct
    struct Book {
        string name;
        string writer;
        uint price;
        bool available;
    }

    Book book1;

    //set book details like this
    Book book2 = Book ("Harry Potter","J.K.Rowling",300,true);

    //set book details like this
    function set_book_detail() public {
    book1 = Book("Introducing Ethereum and Solidity","Chris Dannen",250, true);
    }

    function book1_info() public view returns (string memory, string memory, uint, bool) { 
        return(book2.name, book2.writer,book2.price, book2.available); 
    }

      function book2_info() public view returns (string memory, string memory, uint, bool) {
      return (book1.name, book1.writer, book1.price, book1.available);
   }

}