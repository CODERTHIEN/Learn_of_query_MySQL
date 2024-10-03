I/ Thế nào là SQL

-- SQL là một ngôn ngữ cơ bản để tạo ra các quản lý cơ sở dữ liệu.
-- SQL dùng thêm, sửa, xoá một CSLD.

II/ Các lệnh cơ bản SQL:

SELECT          -- extracts data from a database    (Chọn bảng từ một CSDL)
UPDATE          -- updates data in a database       (Cập nhật bảng trong CSDL)
DELETE          -- deletes data from a database     (Xóa bảng từ một CSDL)
INSERT INTO     -- inserts new data into a database (Thêm dữ liệu mới tới CSDL)
CREATE DATABASE -- creates a new database           (Tạo mới CSDL)
ALTER DATABASE  -- modifies a database              (Cấp quyền CSDL)
CREATE TABLE    -- creates a new table              (Tạo bảng mới)
ALTER TABLE     -- modifies a table                 (Cấp quyền bảng)
DROP TABLE      -- deletes a table                  (Xóa bảng)
CREATE INDEX    -- creates an index (search key)    (Tạo index)
DROP INDEX      -- deletes an index                 (Xóa index)

III/ SELECT : dùng để gọi ra giá trị cột từ Bảng

    Select <tên cột>... From <bảng> ;

    Select * From <bảng> ;
            ----> chọn tất cả các cột của bảng
     
    SELECT DISTINCT <tên cột>... FROM <bảng> ; 
            ----> Distinct : dùng để tránh vòng lặp giá trị của cột

    SELECT COUNT(DISTINCT <tên cột>) FROM <bảng> ;
            ----> Count : dùng để đếm giá trị
    
IV/ WHERE : dùng để lọc dữ liệu theo dạng điều kiện

    SELECT <tên cột>... FROM <bảng> WHERE <điều kiện>;

    Note: Where cũng có thể áp dụng cho UPDATE, DELETE,...

    SELECT * FROM <bảng> WHERE <tên cột> = 'text';  --> nhập điều kiện kiểu chữ

    SELECT * FROM <bảng> WHERE <tên cột> = 100 ;      --> nhập điều kiện kiểu số

    Các toán tử:

    =	    --> Equal	
    >	    --> Greater than	
    <	    --> Less than	
    >=	    --> Greater than or equal	
    <=	    --> Less than or equal	
    <>	    --> Not equal. Note: In some versions of SQL this operator may be written as !=	
    BETWEEN	--> Between a certain range	
    LIKE	--> Search for a pattern	
    IN	    --> To specify multiple possible values for a column

V/ AND | OR | NOT : Dùng cho Where (nó giống như logic)

    AND : đk.1 and đk.1 --> true 
          đk.0 and đk.1 --> false

    OR  : đk.1 or đk.1  --> true 
          đk.0 or đk.1  --> true

    NOT : not đk.1      --> false 
          not đk.0      --> true

    Có thể kết hợp với ().

VI/ ORDER BY : dùng để sắp xếp dữ liệu theo hướng tăng dần hoặc giảm dần.

    SELECT <cột>... FROM <bảng> Order by <cột> ASC; --> tăng dần (mặc định)

    SELECT <cột>... FROM <bảng> Order by <cột> DESC; --> giảm dần (mặc định)

VII/ INSERT into : dùng thêm giá trị đến bảng.

     INSERT into <bảng> (Cột 1, Cột 2,...) values (giá trị 1, giá trị 2,...);
        ---> Các giá trị sẽ tương ứng theo cái cột.

     INSERT into <bảng> values (giá trị 1, giá trị 2,...);  
        ---> Các giá trị sẽ ứng các cột có sẵn của bản.

VIII/ Null Values: dùng để tìm giá trị không có dữ liệu. (nó khác giá trị 0)   

     SELECT <Cột> FROM <Bảng> WHERE <Cột> Is null;

     SELECT <Cột> FROM <Bảng> WHERE <Cột> Is not null;

    ---> giống như toán tử của Where.

IX/ Update : Dùng để cập nhật dữ liệu.

    Update <bảng> Set <cột> = <giá trị> Where <Điều kiện>;

    ---> Where dùng để tìm cột khi dùng Update nhưng phải ghi rõ <Cột> = <Giá trị> ==> Chính xác.
    ---> Nếu không sẽ gây hiểu lầm khi tích cực.

X/  DELETE : Dùng để xóa dữ liệu của bảng.

    DELETE FROM <Bảng> WHERE <Điều kiện>;
        ---> Xóa dòng

    DELETE FROM <Bảng>;    
        ---> Xóa bảng

XI/ Limit : Đưa ra số lượng chỉ đích để xuất ra.

    SELECT <Cột>... FROM <Bảng> WHERE <Điều kiện> LIMIT <con số>;

XII/ MIN () and MAX () : để lọc dữ liệu theo nhỏ nhất và lớn nhất.

    SELECT MIN (Cột) FROM <Bảng> WHERE <Điều kiện>;


    SELECT MAX (Cột) FROM <Bảng> WHERE <Điều kiện>;

XIII/ Hàm COUNT(), AVG() and SUM()

    SELECT COUNT(Cột) FROM <Bảng> WHERE <Điều kiện>;
        ----> Dùng để đếm kết quả có bao nhiêu dữ liệu dựa theo điều kiện.

    SELECT AVG  (Cột) FROM <Bảng> WHERE <Điều kiện>;
        ----> Dùng để tính trung bình ra kết quả có bao nhiêu dữ liệu dựa theo điều kiện.

    SELECT SUM  (Cột) FROM <Bảng> WHERE <Điều kiện>;
        ----> Dùng để tính tổng ra kết quả có bao nhiêu dữ liệu dựa theo điều kiện.

XIV/ Toán tử LIKE : dùng để so sánh, tìm kiếm cột theo đặc biệt.

    SELECT <cột> FROM <bảng> WHERE <cột> LIKE <các kí tự mẫu>;

    *Chú ý: 
        + WHERE <cột> LIKE 'a%'     --> all, alike, anchor,...
        + WHERE <cột> LIKE '%a'     --> prela, Russia, Ukraina,...
        + WHERE <cột> LIKE '%or%'   --> lord, ford, pord,...
        + WHERE <cột> LIKE '_r%'    --> area
        + WHERE <cột> LIKE 'a_%'    --> area
        + WHERE <cột> LIKE 'a__%'   --> arame
        + WHERE <cột> LIKE 'a%k'    --> arinak


