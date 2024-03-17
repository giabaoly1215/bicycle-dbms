# Overview
### Database bao gồm các bảng liên quan đến quản lý cửa hàng và sản phẩm xe, bao gồm thông tin về cửa hàng, nhân viên, danh mục sản phẩm, thương hiệu, sản phẩm, khách hàng, đơn hàng và tồn kho.
![ERD](https://github.com/giabaoly1215/bicycle-dbms/assets/133854191/4f888123-679b-4552-b91b-a4788c0d0af8)

**store:** Lưu trữ thông tin về các cửa hàng, bao gồm tên cửa hàng, thông tin liên hệ như số điện thoại và email, và địa chỉ 

**staff:** Chứa thông tin cần thiết về nhân viên bao gồm tên và họ. Nó cũng chứa thông tin liên lạc như email và số điện thoại. Mỗi nhân viên làm việc tại một cửa hàng được xác định bởi giá trị trong cột store_id.
Một nhân viên có thể báo cáo cho một quản lý cửa hàng được xác định bởi giá trị trong cột manager_id.

**category:** Các danh mục sản phẩm như xe đạp trẻ em, xe đạp thoải mái và xe đạp điện.

**brand:** Thông tin về các thương hiệu của xe 

**product:** Lưu trữ thông tin về sản phẩm bao gồm tên, thương hiệu, danh mục, năm sản xuất và giá niêm yết.

**customers:** Thông tin về khách hàng bao gồm tên và họ, số điện thoại, email và địa chỉ.

**orders**: Thông tin chung về đơn hàng bao gồm khách hàng, trạng thái đơn hàng, ngày đặt hàng, nhân viên tạo đơn hàng.

**item:** Lưu trữ các mục chi tiết của đơn hàng, bao gồm sản phẩm, số lượng đặt hàng, giá niêm yết.

**stock:** Thông tin tồn kho, bao gồm số lượng của một sản phẩm cụ thể tại một cửa hàng cụ thể.
