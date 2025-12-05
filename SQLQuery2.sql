SELECT * FROM Production.Product;

SELECT Name, ProductNumber, ListPrice
FROM Production.Product;

SELECT Name AS [Nama Barang], ListPrice AS 'Harga Jual'
FROM Production.Product;

SELECT Name, ListPrice, (ListPrice * 1.1) AS HargaBaru
FROM Production.Product;

SELECT Name + ' (' + ProductNumber + ')' AS ProdukLengkap
FROM Production.Product;

SELECT Name, Color, ListPrice
FROM Production.Product
WHERE Color = 'Red';

SELECT Name, ListPrice
FROM Production.Product
WHERE ListPrice > 1000;

SELECT Name, Color, ListPrice
FROM Production.Product
WHERE Color = 'Black' AND ListPrice > 500;

SELECT Name, Color
FROM Production.Product
WHERE Color IN ('Red', 'Blue','Black');
-- Cara lain: WHERE Color = 'Red' OR Color = 'Blue' OR Color =

SELECT Name, ProductNumber
FROM Production.Product
WHERE Name LIKE '%Road%';
-- % adalah wildcard. %Road% berarti "apapun di depan, ada kata Road, dan apapun di belakang" --

SELECT COUNT(*) AS TotalProduk
FROM Production.Product;

SELECT Color, COUNT(*) AS JumlahProduk
FROM Production.Product
GROUP BY Color;

SELECT ProductID, SUM(OrderQty) AS TotalTerjual, AVG(UnitPrice) AS
RataRataHarga
FROM Sales.SalesOrderDetail	
GROUP BY ProductID;

SELECT Color, Size, COUNT(*) AS Jumlah
FROM Production.Product
GROUP BY Color, Size;

SELECT Color, Name, COUNT(*)
FROM Production.Product
GROUP BY Color;
--Analisa: Error. Karena dikelompokkan berdasarkan Color, kolom Name tidak bisa
--ditampilkan secara mentah karena satu warna (misal Red) memiliki banyak Nama
--Produk. Kolom di SELECT haruslah kolom yang ada di GROUP BY atau berada dalam
--fungsi agregat. --

