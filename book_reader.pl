book(c_programming, computer).
book(data_structure, computer).
book(java, programming).

reader(anjali, computer).
reader(sakshi, programming).
reader(rachana, computer).
reader(tejaswini, programming).
reader(swara, computer).

book_reader(Book, Reader) :-
    book(Book, Subject),
    reader(Reader, Subject).