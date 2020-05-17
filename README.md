# API - Book shelf note app

### 一覧表示

    GET https://bookshelfnote-api.herokuapp.com/api/v1/books

### 新規追加

    POST https://bookshelfnote-api.herokuapp.com/api/v1/books
    Content-Type: application/json
    
    {
      "name": "アヒルと鴨のコインロッカー",
      "author": "伊坂幸太郎",
      "url": "http://b.jp"
    }
