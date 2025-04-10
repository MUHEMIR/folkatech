// partisi pada tabel transaction
CREATE TABLE transaction_2025_01 PARTITION OF transaction
    FOR VALUES FROM ('2025-01-01') TO ('2025-02-01'); //membuat partisi pada bulan januari

// partisi pada tabel restock 

CREATE TABLE restock_2025 PARTITION OF restock
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01'); //melakukan partisi selama satu tahun
