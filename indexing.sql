 // pada tabel stock

CREATE INDEX idx_stock_product_wh ON stock(product_id, wh_id); // digunakan untuk mempermudah pencarian stok per barang per Gudang //

//pada tabel transaction//

CREATE INDEX idx_products_min_qty ON products(min_qty);
CREATE INDEX idx_products_category ON products(category); //mempermudah pencarian produk yang perlu restock dan melakukan filter per category//

//pada tabel restock//
CREATE INDEX idx_restock_status_date ON restock(status, order_date); //untuk filter order yang masih pending atau terlalu kirim//
