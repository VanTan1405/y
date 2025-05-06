MỤC LỤC
Tổng quan Explorer...................................................................................................................... 3
A. DATASOURCE.................................................................................................................... 3
1. Name................................................................................................................................ 3
2. Sort................................................................................................................................... 3
3. RowSelected .................................................................................................................... 4
4. PageSize .......................................................................................................................... 4
5. bShowChangeLog ............................................................................................................ 4
6. TreeNodeKeyMember....................................................................................................... 4
7. FilterKey ........................................................................................................................... 4
8. ParentKey......................................................................................................................... 4
9. ChildKey ........................................................................................................................... 4
10. Evaluator .......................................................................................................................... 4
11. CommandValidators ......................................................................................................... 4
12. ServerCommand............................................................................................................... 4
13. Alias.................................................................................................................................. 4
B. LAYOUT .............................................................................................................................. 4
1. navigator........................................................................................................................... 5
1.1. GroupFilter........................................................................................................................ 5
2. panelExplorer/Controls ..................................................................................................... 6
2.1. ClassName.................................................................................................................... 6
2.2. AllowEditing................................................................................................................... 7
2.3. Execute......................................................................................................................... 8
2.4. Items ............................................................................................................................. 8
2.5. DataMember ................................................................................................................. 9
2.6. Cols............................................................................................................................... 9
2.7. AllowDelete ................................................................................................................. 10
2.8. BravoLinkCommand.................................................................................................... 11
3. quickSearchMode........................................................................................................... 12
4. zCustomConnectionName .............................................................................................. 13
5. searchRange. ................................................................................................................. 13
6. BravoDataListControl...................................................................................................... 14
C. TÌM KIẾM........................................................................................................................... 14
1. Ý nghĩa ........................................................................................................................... 14
2. Các loại tìm kiếm ............................................................................................................ 14
3. Tính năng lưu lịch sử tìm kiếm nhanh............................................................................. 15
2
4. Chú ý .............................................................................................................................. 15
5. Bổ sung khai báo............................................................................................................ 16
3
Tổng quan Explorer
- Về thiết kế controls: Mỗi grid là được hiểu là 1 control nên vị trí khai báo hiển thị có thể là ở 
bất cứ đâu, bảng mẹ và con thì chỉ cần khai báo relation.
- Dữ liệu được phân theo trang
- Về tác động dữ liệu tính toán: Explorer có hỗ trợ tác động hiển thị dữ liệu từ các Eval trong 
các sự kiện người dùng tác động trên màn hình. Cụ thể:
✓ Định dạng hiển thị các control: Tham khảo chi tiết trong mục mô tả RowSelected
✓ Hỗ trợ sửa dữ liệu từ Explorer: Tham khảo chi tiết trong mục mô tả AllowEditing
✓ Hỗ trợ kiểm tra sự hợp lệ khi thực hiện các lệnh command: Tham khảo chi tiết trong 
mục mô tả CommandValidators
Lưu ý: 
- DataExplorer tự động truyền tham số cho các lệnh import/export/in/in nhanh/mẫu in dùng 
tham số GETXMLDATA, GETXMLSELECTEDDAT (tham khảo file datasource) để in/xem 
các chứng từ đang được người dùng chọn.
- Tính năng sửa dữ liệu trực tiếp từ Explorer (tham khảo phần mô tả chi tiết của thẻ 
<AllowEditing>).
- Cơ chế và cách thực hiện chức năng import từ Explorer: Tham khảo mô tả chi tiết trong tài 
liệu Editor phần chức năng Import.
- Hỗ trợ tính năng mở file đính kèm từ Explorer.
A. DATASOURCE
Chứa toàn bộ các khai báo liên quan đến việc xử lý dữ liệu, tham khảo phần khai báo ở file 
Datasource những thẻ sau
1. Name
2. Sort 
Ví dụ
Explorer của danh mục vật tư nếu khai báo: 
 <ParentTable>
 <Name>vB20Item</Name>
 <DisplayMember>Name</DisplayMember>
 <FilterKey>{=BRANCHFILTER('BranchCode')}</FilterKey>
 <Sort>Code,Name</Sort>
……
4
- Thì khi mở Explorer thì dữ liệu sẽ được sắp xếp theo cột Code và cột Name
- Khi mở Explorer thì thứ tự sắp xếp mặc định luôn với các danh mục dạng cây (Ví dụ Danh 
mục tài khoản) thì thứ tự sort sẽ là cột _TreeNode.
3. RowSelected
Ghi chú
- Thường các Evaluator được sử dụng để định dạng hoặc ẩn hiện các thông tin trên 
explorer.
- Việc thực thi các Evaluator khi chọn dòng có thể làm ảnh hưởng đến tốc độ load dữ liệu ở 
Explorer. Cần cân nhắc kỹ khi sử dụng tính năng này.
4. PageSize
5. bShowChangeLog
6. TreeNodeKeyMember
7. FilterKey
8. ParentKey
9. ChildKey
10. Evaluator
11. CommandValidators
12. ServerCommand
13. Alias
B. LAYOUT
Chứa toàn bộ các khai báo liên quan đến phần hiển thị các control trên màn hình Explorer. Phần 
tài liệu này chỉ trình bày các thẻ khác biệt, những thẻ tương tự như Editor vui lòng tham khảo trong 
tài liệu liên quan.
5
1. navigator
Khai báo phần hiển thị các chức năng ở panel bên trái (khi người dùng Click vào hình 3 dấu gạch 
Cụ thể các thẻ hỗ trợ khai báo như sau:
1.1. GroupFilter
Ý nghĩa
Khai báo các thông tin nhóm dữ liệu ở panel bên trái của màn hình Explorer (ngoài các thông tin 
mặc định).
Cú pháp
<root>
 <navigator>
 <GroupFilter>
 <Items>
 <Tên_Item1>
 <Text>
 <Vietnamese>Tiêu_đề_nhom</Vietnamese>
 </Text>
 <FilterKey>Bieu_thuc_dieu_Kien</FilterKey>
 </Tên_Item1>
. . .
Ví dụ
Explorer của phiếu xuất đang khai báo: 
 <navigator>
 <GroupFilter>
 <Items>
 <Item_MyDocuments>
 <Text>
 <Vietnamese>Chứng từ của tôi</Vietnamese>
 <English>My vouchers</English>
 </Text>
 <FilterKey>vB30AccDoc_Explore.CreatedBy={=USER('Id')}</FilterKey>
Ghi chú.
- Có thể khai báo nhiều Item hiển thị trong GroupFilter, trong đó các Item có thể khai báo 
lồng nhau. VD: tham khảo phần hiển thị chứng từ theo từng tháng ở Explorer của các 
chứng từ.
Commented [NTHH1]: 
6
- Biểu thức viết trong thẻ FilterKey chính là mệnh đề sau Where khi truy vấn dữ liệu, trong đó 
cần chỉ rõ các cột trong biểu thức thuộc bảng dữ liệu nào (hỗ trợ biểu thức lọc cho cả bảng 
con) 
2. panelExplorer/Controls
Về cơ bản các control trên Explorer tuân theo nguyên tắc tương tự ở Editor. Vì vậy cách khai báo 
và sử dụng các thẻ tham khảo thêm trong phần tài liệu của Editor. Nội dung của phần tài liệu 
Controls của Explorer chỉ trình bày các trường hợp đặc biệt và hay dùng.
2.1. ClassName 
Ý nghĩa
Khai báo các loại ClassName xử lý dữ liệu cho Explorer. 
Cú pháp
<root>
 <panelExplorer>
 <Controls>
 <Control_Explorer>
 <Assembly>Bravo.DataExplorer</Assembly>
 <ClassName>Ten_Class</ClassName>
. . .
 </Control_Explorer>
 </Controls>
 </panelExplorer>
</root>
Các giá trị hỗ trợ
Stt Tên thẻ con Nội dung
1 BravoExplorerControl Khai báo kiểu hiển thị Explorer có nhiều Grid, bảng con, 
tab liên quan. VD: Explorer của chứng từ Phiếu xuất.
2 BravoExplorerGrid Khai báo kiểu hiển thị Explorer chỉ có 1 Grid, không có 
bảng mẹ, bảng con…
3 BravoPreviewHost Là control để hiển thị Báo cáo hoặc Editor trên Explorer
4 DataExplorer Khai báo kiểu Form là Explorer khi được gọi từ các form 
kiểu Wizard. VD: Chức năng Hạch toán bút toán khóa 
7
sổ, bước đầu tiên sẽ list các danh sách các bút toán 
khóa sổ từ danh mục nên sẽ khai báo để gọi đến màn 
hình explorer nên sẽ khai báo: 
 <navigator>
 <Items>
 <SelectClosingEntry>
 <Assembly>Bravo.DataExplorer</Assembly>
 <ClassName>DataExplorer</ClassName>
 . . . 
2.2. AllowEditing 
Ý nghĩa
Tính năng cho phép sửa dữ liệu trực tiếp từ Explorer. 
Cú pháp
<root>
<panelExplorer>
 <Controls>
 <Control_Explorer>
 <Assembly>Bravo.DataExplorer</Assembly>
 <ClassName>BravoExplorerControl</ClassName>
 <AllowEditing>True</AllowEditing>
. . .
Ghi chú
- Các giá trị có thể nhận là True/False. Trong đó giá trị ngầm định ở Explorer là False. Thẻ 
này khai báo cho Grid hoặc control. 
- Khi người dùng đứng ở màn hình Explorer và kích hoạt tính năng sửa nhanh (QuickEdit) 
bằng việc ấn Shift + F3 hoặc click vào tính năng sửa nhanh thì màn hình Explorer sẽ 
chuyển sang chế độ QuickEdit nếu Grid đó có khai báo AllowEditing = True.
- Khi màn hình Explorer ở chế độ QuickEdit: thì các cột không thỏa mãn điều kiện sửa sẽ bị 
ẩn đi. Khi đó các thuộc tính của control sẽ được đọc từ khai báo ở màn hình Editor chứ 
không phải ở Explorer (các khai báo <Editor> ở Explorer chỉ có ý nghĩa với tính năng lọc). 
Nếu cột nào có khai báo AllowEditing= False thì cũng không Edit được.
- Khi thực hiện lưu dữ liệu các sự kiện, cơ chế sẽ được thực hiện tương tự như khi lưu 
chứng từ ở Editor.
8
- Tính năng sửa dữ liệu trực tiếp từ Explorer: chỉ hỗ trợ với bảng mẹ.
- Lưu ý: khi thực hiện chế độ nhập liệu ở Explorer không hỗ trợ tính năng theo khai báo của 
thẻ allowEditingMultiCells như Grid ở Editor.
2.3. Execute 
Ý nghĩa
Khai báo thực thi các lệnh khi tác động đến Explorer. 
Cú pháp
<root>
 <panelExplorer>
 <Controls>
 <Control_Explorer>
 <Assembly>Bravo.DataExplorer</Assembly>
 <ClassName>Ten_Class </ClassName>
<Execute>Danh_sach_Eval</Execute>
. . .
Ví dụ.
Explorer các chứng từ đang khai báo: 
<Execute>
 <Eval_Editor />
 <Eval_Reporter />
</Execute>
Trong đó Eval_Editor là Eval được khai báo trong DataSource:
<Eval_Editor>
 <ClassName>BravoCommandKey</ClassName>
 <CommandKey>EDIT_{=DocCode}</CommandKey>
 <zCtorArgs />
 <Expr>LastCommand() IN ('New', 'NewAsCopy', 'Open')</Expr>
 </Eval_Editor>
Khi đó người dùng thực hiện các lệnh F2, Ctrl+ F2, F3 thì chương trình sẽ thực thi lệnh mở 
command Editor của chứng từ.
2.4. Items
Ý nghĩa
Khai báo các tab dữ liệu con của controls mẹ.
9
Cú pháp
<root>
 <panelExplorer>
 <Controls>
 <Control_Explorer>
 <Assembly>Bravo.DataExplorer</Assembly>
 <ClassName>Ten_Class </ClassName>
<Items>
<Ten_Item>
Danh_sach_the_con_cua_Control
Các thẻ con hỗ trợ
Stt Tên thẻ con Nội dung
1 DataMember Nguồn dữ liệu hiển thị. Có thể là bảng/view hoặc thủ tục
2 childPosition Khai báo căn chỉnh vị trí của đối tượng
3 bAllowGrandTotal Khai báo hiển thị dòng tổng cộng dữ liệu của Tab. Chú ý 
giá trị của dòng tổng cộng sẽ Sum theo phân trang của 
các dòng đang hiển thị trên màn hình. Mặc định các cột 
được Sum là các cột kiểu số. Trường hợp cần chỉ định 
các cột đích danh sẽ sử dụng thêm thẻ Groups
Ghi chú
- Trong thẻ Items chúng ta lại có thể khai báo tiếp các Items con. 
- Thẻ này chỉ có tác dụng khi ClassName = BravoExplorerControl
2.5. DataMember
Ý nghĩa
Khai báo nguồn dữ liệu hiển thị của Tab dữ liệu. Có thể là bảng/view hoặc thủ tục trả về bảng dữ 
liệu
2.6. Cols
Ý nghĩa
Khai báo hiển thị các cột trên Grid của màn hình Explorer. Các thẻ khai báo cụ thể tham khảo 
trong phần tài liệu liên quan đến Editor.
10
2.7. AllowDelete 
Ý nghĩa
Tính năng cho phép xóa dữ liệu ở các tab con ở Explorer. 
Cú pháp
<root>
 <panelExplorer>
 …
 <Items>
 <Items_Detail>
 <DataMember>… </DataMember>
 <AllowDelete>True/False</AllowDelete>
. . .
Ghi chú
- Các giá trị có thể nhận là True/False. Trong đó giá trị ngầm định ở Explorer là False (hiện 
tại chỉ có tác dụng với tab con của Explorer) 
- Cơ chế thực hiện của tính năng hỗ trợ đình chỉ/ phục hồi ở tab con của Explorer như sau: 
✓ Mặc định giá trị ngầm định sẽ là False, tức là không hỗ trợ đình chỉ/ khôi phục dữ liệu 
ở tab con của Explorer. Muốn bật tính năng thì trước tiên phải khai báo thẻ này về giá 
trị True
✓ Tiếp theo, do chế độ đình chỉ và khôi phục dữ liệu được thực hiện qua cơ chế Editor, 
nên để sử dụng được tính năng này ở tab con của Explorer bắt buộc layout của tab 
con phải gọi đến các eval để mở Editor nhập liệu tương ứng.
✓ Tiếp theo, View/ bảng dữ liệu của tab con ở Explorer phải có cột IsActive và cột 
IsActive phải được lấy từ bảng mẹ (Bảng dữ liệu mẹ của màn hình Editor). Tên view/ 
bảng của tab dữ liệu liên quan và Tên bảng/view của bảng mẹ ở Editor phải được đặt 
theo đúng nguyên tắc. VD: Parent của Editor là vB30abc thì View/ bảng của tab dữ 
liệu liên quan ở Explorer của Editor đó phải đặt là vB30abc_xxxx. Trường hợp các 
điều kiện bị vi phạm chương trình sẽ cảnh báo lỗi và không thực hiện được.
✓ Khi thực hiện đình chỉ hoặc khôi phục từ Explorer chương trình sẽ bỏ qua validator dữ 
liệu ở editor, lần lượt đọc các khai báo trong CommandValidator của command 
Delete/Recall trong Explorer sau đó đến Editor của màn hình tương ứng
11
2.8. BravoLinkCommand
Ý nghĩa
- Hỗ trợ khai báo BravoLinkCommand với thẻ <Execute> để thực hiện các evaluator ở 
Explorer (Hiển thị một nút trên Explorer để thực hiện một Eval)
Cú pháp
<root>
 <panelExplorer>
 …
<Controls>
 <CommandExplorer>
<Text>
<Vietnamese>Ten_cua_nut</Vietnamese>
</Text>
<Assembly>Bravo.DataExplorer</Assembly>
 <ClassName>BravoLinkCommand</ClassName>
<Execute>
<Ten_Eval />
Ví dụ
Trên explorer của phiếu xuất, muốn thêm khai báo một nút hiển thị ở Explorer để đứng ở chứng từ 
nào click nút để xem tồn kho tức thời của các vật tư của chứng từ đó thì khai báo như sau:
Bước 1: Khai báo hiển thị nút “xem tồn tức thời” ở Layout\Root\panelExplorer\Controls
<CommandExplorer>
<Text>
<Vietnamese>Xem tồn tức thời</Vietnamese>
</Text>
<Assembly>Bravo.DataExplorer</Assembly>
<ClassName>BravoLinkCommand</ClassName>
<Execute>
<Eval_Report_CurrentStock />
</Execute>
</CommandExplorer>
Bước 2: Trong DataSource của explorer khai báo thêm Eval
12
 <Eval_Report_CurrentStock>
 <ClassName>BravoCommandKey</ClassName>
<CommandKey>REP00_CurrentStock</CommandKey> 
<zCtorArgs>DocDate='{=DocDate}';StartupCommandKey=Refresh;</zCtorArgs>
 <Text />
</Eval_Report_CurrentStock>
Ghi chú
- Trường hợp gọi đến Editor hoặc mẫu in: Đối với việc gọi DataEditor và Reporter có tự xử lý việc 
truyền các tham số StartupCommandKey và PrimaryKeyValue tư động trong code. Do vậy nếu 
sử dụng manual BravoLinkCommand thì phải khai báo thêm 2 tham số này để DataEditor và 
Reporter hiểu.
VD: 
✓ Trường hợp gọi đến 1 Repoter thì khai báo thêm
<zCtorArgs>PrimaryKeyValue={=ISNULL(CurrentValue('Ct', 'Id'),-
1)};StartupCommandKey=Refresh;</zCtorArgs>
✓ Trường hợp gọi đến 1 Editor thì khai báo thêm: 
<zCtorArgs>PrimaryKeyValue=-1;StartupCommandKey=New;</zCtorArgs>
- LinkCommand hỗ trợ tự động thực hiện các evaluator bằng timer, để sử dụng khai báo các 
thuộc tính bAutoExecuteTimer, nAutoExecuteInterval (mili giây).
3. quickSearchMode
Ý nghĩa
Khai báo chế độ tìm kiếm mặc định của Form. Thẻ này áp dụng cho tất cả các form, có thể khai 
báo ở từng layout hoặc template.
Cú pháp
<root>
<quickSearchMode>ByDisplayContent</quickSearchMode>
</root>
Ghi chú:
- Các giá trị có thể nhận: 
+ ByDisplayContent: chế độ tìm kiếm theo nội dung hiển thị
 + ByAllColumns: chế độ tìm kiếm tất cả các cột
13
 + ByColumn: chế độ tìm kiếm theo cột hiện thời.
4. zCustomConnectionName
Ý nghĩa: Khai báo chuỗi kết nối hiển thị dữ liệu trên Explorer.
Ví dụ: trong command Explorer của danh mục đối tượng ở chương trình bản Quản trị, nếu muốn 
hiển thị dữ liệu explorer này từ một chương trình bản tài chính thì làm như sau: 
- Bước 1: Trong File Config.exe khai báo một chuỗi kết nối cho bản Tài chính :
 <connectionStrings>
 <add name="Bravo10_TC" connectionString="Data Source=bravosrv\srv2014;Initial 
Catalog=Bravo8;Integrated Security=True;Connect Timeout=15"
 providerName="System.Data.SqlClient" />
- Bước 2: Trong layout của command Explorer của danh mục đối tượng bản Quản trị khai 
báo như sau:
<root>
<zCustomConnectionName>Bravo10_TC</zCustomConnectionName>
</root>
Ghi chú: Với khai báo khi sử dụng zCustomConnectionName thì riêng với layout và dữ liệu phân 
quyền thì vẫn luôn dùng kết nối hệ thống khi đăng nhập, Riêng với các Eval hoặc lookup có hỗ trợ 
khai báo zCustomConnectionName riêng, vui lòng tham khảo các tài liệu liên quan.
5. searchRange.
Ý nghĩa: Khai báo phạm vi tìm kiếm nhanh dữ liệu (Ctrl+ F) ở Explorer
Cú pháp
<root>
<searchRange>Thuoc_Tinh</searchRange>
…
</root>
Chú ý
- Thuộc tính: 
14
Default – tìm trong nhóm đang chọn
IncludeSubGroup – tìm trong nhóm đang chọn và tất cả các nhóm con
All – tìm tất cả danh mục
6. BravoDataListControl
DataExplorer kết hợp với BravoDataListControl cho phép hiển thị dữ liệu dưới dạng list diagram 
(từng khối item) là ListLayout, TableLayout và OrgChartLayout. Tham khảo tài liệu Diagram
C. TÌM KIẾM
1. Ý nghĩa
Tính năng hỗ trợ người sử dụng phần mềm thực hiện tìm kiếm dữ liệu theo điều kiện. Người dùng 
có thể thực hiện tìm kiếm theo phím tắt Ctrl+ F hoặc tính năng Lọc ở pannel trên màn hình 
Explorer.
2. Các loại tìm kiếm
Tên thuộc tính Nội dung
1 Tìm trong nội dung hiển thị - Thực thi việc tìm kiếm trên toàn bộ nội dung hiển thị ở 
màn hình. Chú ý khi dữ liệu được hiển thị phân trang thì 
việc tìm kiếm theo nội dung hiển thị chỉ có hiệu lực với 
trang hiện thời đang hiển thị dữ liệu.
- Hỗ trợ tìm kiếm với tất cả các cột hiển thị trên màn 
hình. Kết quả tìm kiếm sẽ được bôi vàng
- Nếu dữ liệu màn hình đang hiển thị chế độ phân trang 
thì kết quả tìm kiếm theo chế độ này sẽ chỉ tìm kiếm với 
những bản ghi đang hiển thị các trang đang mở.
2 Tìm theo tất cả các cột - Thực thi việc tìm kiếm trong cơ sở dữ liệu, kết quả chỉ 
lọc ra các bản ghi thỏa mãn và bôi vàng các dữ liệu 
thỏa mãn.
- Chế độ tìm kiếm trong cơ sở dữ liệu. Cộng thêm các 
điều kiện trong FilterKey và các điều kiện của nhóm dữ 
liệu đang chọn.
- Không hỗ trợ tìm kiếm với các cột được định nghĩa 
trong TempColumn và ServerLoading, các bảng dữ liệu 
trả về từ hàm hoặc thủ tục
15
3 Tìm theo cột hiện thời Tương tự như chế độ tìm kiếm theo tất cả các cột. Chỉ 
khác là chỉ được tìm kiếm theo cột hiện thời (cột mà con 
chuột đang đứng)
4 Chức năng lọc ở Panel của 
Explorer
- Nguyên tắc tìm kiếm: là tìm kiếm theo cơ sở dữ liệu, 
không hỗ trợ đối với các cột được định nghĩa trong 
TempColumn hoặc ServerLoading, hoặc các bảng dữ 
liệu trả về từ hàm hoặc thủ tục, các cột ở explorer 
không tồn tại trong view/bảng mà được lấy từ lookup 
(tương tự như tìm kiếm nhanh.
- Hỗ trợ tìm kiếm với toán tử, biểu thức chứa, bắt đầu, 
kết thúc….. tương tự như chức năng tìm kiếm nhanh 
(bằng cách click và tên của chỉ tiêu đang tìm kiếm)
3. Tính năng lưu lịch sử tìm kiếm nhanh
- Khi người dùng thao tác tìm kiếm nhanh bằng phím Ctrl+ F chương trình có hỗ trợ tính 
năng lưu nhật ký tìm kiếm. Nội dung lưu lại bao gồm giá trị gõ tìm kiếm và chế độ thực hiện 
(Chế độ tìm kiếm chứa/ bắt đầu/ kết thúc…...). Về cơ bản nhật ký tìm kiếm được lưu theo 
từng user, tối đa số lần tìm kiếm là 10 lần.
- Hỗ trợ tính năng xóa lịch sử tìm kiếm.
4. Chú ý
- Với các cột được định nghĩa trong trong TempColumn hoặc ServerLoading hoặc các tab 
dữ liệu mà được trả về từ một thủ tục sẽ không hỗ trợ chế độ tìm kiếm theo Tất cả các cột/ 
và Tìm kiếm theo cột hiện thời.
- Với chế độ Tìm kiếm theo cột hiện thời: Trường hợp cột kiểu ngày nhưng khai báo dịnh 
dạng hiển thị khác cơ sở dữ liệu thì chương trình vẫn chuyển về hỗ trợ tìm kiếm từ ngày -> 
đến ngày. 
16
- Khi đang chọn nhóm hiển thị dữ liệu ở panel sau đó mới thực hiện tìm kiếm thì chương 
trình sẽ hiểu là phép tính AND trong điều kiện tìm kiếm (tìm kiếm trong nhóm dữ liệu đang 
chọn)
- Chức năng tìm kiếm nhanh theo cột (Ctrl+F) cho phép tùy chọn luôn tìm theo một cột duy 
nhất hay tìm kết hợp AND/OR nhiều cột.
5. Bổ sung khai báo
- bQuickSearchAlwaysDisplay=True: Cho phép luôn hiển thị và gắn cố định thanh tìm kiếm 
nhanh trong form 
- Khai báo chọn mục tìm kiếm ngầm định bằng các khai báo 
quickSearchDefaultCompareText, quickSearchDefaultCompareNumeric, 
quickSearchDefaultCompareDateTime tương ứng với các kiểu dữ liệu
- Hỗ trợ tự động thực hiện tìm kiếm nhanh ngay khi người dùng gõ nội dung tìm kiếm mà 
không cần bấm Enter hoặc click nút tìm với khai báo quickSearchAutoApply=AsTyping và 
bQuickSearchAutoDropDown=False – trong trường hợp này sẽ phải tắt menu gợi ý tìm 
kiếm và con trỏ sẽ giữ nguyên ở thanh ô tìm kiếm
- bShowAllFilterParameters : (đọc/ghi profile) để “Hiển thị tất cả điều kiện lọc” ở màn hình 
“Lọc”
<bShowAllFilterParameters>False</bShowAllFilterParameters>