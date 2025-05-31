-- backend test knowledge database

-- jawaban soal no.1
INSERT INTO toko (nama_produk, harga_jual)
SELECT nama_produk, harga_jual FROM gudang_utama;

-- jawaban soal no.2 
SELECT nama_produk, COUNT(*) AS total
FROM penjualan_produk
GROUP BY nama_produk;

-- jawaban soal no.3
SELECT 
a.nama_produk,
b.nama_supplier,
c.harga_jual,
FROM produk a
JOIN supplier b ON a.supplier_id = b.supplier_id
JOIN detail_produk c ON a.product_id = c.product_id;

-- jawaban soal no.4
SELECT *
FROM penjualan p1
WHERE tanggal = (
  SELECT MAX(tanggal)
  FROM penjualan p2
  WHERE p2.nama_produk = p1.nama_produk
);

