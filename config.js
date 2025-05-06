const config = {
    user: 'BRAVO\tannv', // Tên đăng nhập SQL Server
    password: '', // Mật khẩu SQL Server
    server: 'TANNV-BSG\TAN', // Tên hoặc địa chỉ IP của máy chủ SQL Server
    database: 'Data_QLTN', // Tên cơ sở dữ liệu
    options: {
        encrypt: true, // Nếu sử dụng Azure
        trustServerCertificate: true, // Nếu là máy chủ cục bộ
    },
};

module.exports = config;