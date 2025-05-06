const express = require('express');
const bodyParser = require('body-parser');
const sql = require('mssql');
const config = require('./config'); // Tệp cấu hình kết nối

const app = express();
app.use(bodyParser.json());

// API lưu sản phẩm
app.post('/api/saveProduct', async (req, res) => {
    const product = req.body;

    try {
        let pool = await sql.connect(config);
        await pool.request()
            .input('Title', sql.NVarChar(255), product.title)
            .input('PriceOld', sql.Decimal(18, 2), product.priceOld)
            .input('PriceNew', sql.Decimal(18, 2), product.priceNew)
            .input('SalePercent', sql.NVarChar(10), product.salePercent)
            .input('Category', sql.NVarChar(100), product.category)
            .input('Description', sql.NVarChar(sql.MAX), product.description)
            .input('ImageSrc', sql.NVarChar(sql.MAX), product.imageSrc)
            .query(`
                INSERT INTO Products (Title, PriceOld, PriceNew, SalePercent, Category, Description, ImageSrc)
                VALUES (@Title, @PriceOld, @PriceNew, @SalePercent, @Category, @Description, @ImageSrc)
            `);

        res.status(200).send({ message: 'Sản phẩm đã được lưu thành công!' });
    } catch (err) {
        console.error('Lỗi khi lưu sản phẩm:', err);
        res.status(500).send({ message: 'Lỗi khi lưu sản phẩm.' });
    }
});

// Khởi động server
app.listen(3000, () => {
    console.log('Server đang chạy trên cổng 3000');
});