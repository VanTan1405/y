MỤC LỤC
1 TỔNG QUAN EDITOR ............................................................................................................ 5
A. LAYOUT .............................................................................................................................. 5
1. navigator ................................................................................................................................. 6
2. panelEditor.............................................................................................................................. 7
3. panelCommand....................................................................................................................... 9
4. showCommandButtons ......................................................................................................... 10
5. zSubLayout ........................................................................................................................... 11
6.verifyWorkingData .................................................................................................................. 12
7.zCustomConnectionName...................................................................................................... 12
8.Execute .................................................................................................................................. 12
9. bFullScreenMode .................................................................................................................. 13
10.bShowStatusStrip................................................................................................................. 13
11. TextFormat .......................................................................................................................... 13
12. zDefaultCommandButton..................................................................................................... 14
14. bLoadPermissionForAllTables............................................................................................. 14
B. CONTROLS....................................................................................................................... 15
1. Dock................................................................................................................................... 16
2. Rows .................................................................................................................................. 16
3. Cols.................................................................................................................................... 17
4. Text.................................................................................................................................... 18
5. Column............................................................................................................................... 19
6. Row.................................................................................................................................... 19
7. ClassName......................................................................................................................... 20
7.1.BravoKeyInputBox ........................................................................................................... 20
7.2.BravoLookupBox.............................................................................................................. 20
7.3.BravoQuantityInputBox .................................................................................................... 25
7.4.BravoBarCodeBox ........................................................................................................... 26
7.5.BravoBarCodeInputBox ................................................................................................... 26
7.6.BravoCheckBox ............................................................................................................... 27
2
7.7.BravoLabel....................................................................................................................... 27
7.8.BravoDataLabel ............................................................................................................... 28
7.9.BravoDateInputBox.......................................................................................................... 29
7.10.BravoExpandingPanel.................................................................................................... 29
7.11.BravoLinkLabel .............................................................................................................. 30
7.12.BravoNumericInputBox .................................................................................................. 31
7.14.BravoOptionBox............................................................................................................. 31
7.16.BravoPictureInputBox .................................................................................................... 31
7.17.BravoRichTextBox ......................................................................................................... 33
7.18.BravoSaveFileBox ......................................................................................................... 34
7.19.BravoTextBox ................................................................................................................ 34
7.20.BravoLinkCommand....................................................................................................... 36
7.21.BravoPassCodeReader ................................................................................................. 37
7.22.BravoOptionControl........................................................................................................ 38
7.23.BravoDocInputBox ......................................................................................................... 39
7.24. BravoDataServiceTextBox ............................................................................................ 41
7.25.BravoScaleReader......................................................................................................... 42
7.26.BravoOpenServerDirBox................................................................................................ 44
7.27. BravoOnlineSourceViewer ............................................................................................ 45
7.28. BravoPictureEditor........................................................................................................ 46
7.29.BravoDialogDataButton.................................................................................................. 46
7.30. BravoPhysicalInventoryReader ..................................................................................... 47
7.31. BravoCodeInputBox...................................................................................................... 47
7.32. BravoButton .................................................................................................................. 47
7.33. BravoWebView /BravoOauth2WebView........................................................................ 47
7.34. BravoDataCollectionControl..................................................................................... 48
7.35. BravoScheduleControl............................................................................................. 48
7.36. BravoLookupList...................................................................................................... 48
3
7.37. BravoCheckList........................................................................................................ 48
7.38. BravoHtmlEditor....................................................................................................... 49
8. ColumnSpan ...................................................................................................................... 50
9. Controls.............................................................................................................................. 51
10. DataMember................................................................................................................... 51
11. Name.............................................................................................................................. 51
12. Pages ............................................................................................................................. 52
13. RowSpan........................................................................................................................ 53
14. Style ............................................................................................................................... 54
15. Anchor............................................................................................................................ 55
16. BackColor....................................................................................................................... 56
17. BorderStyle..................................................................................................................... 56
18. Enabled .......................................................................................................................... 57
19. Font ................................................................................................................................ 58
20. fontStyle.......................................................................................................................... 58
21. ForeColor........................................................................................................................ 59
22. ImageAlign...................................................................................................................... 59
23. Margin ............................................................................................................................ 60
24. MaximumSize. ................................................................................................................ 60
25. MinimumSize .................................................................................................................. 61
26. nFontScale ..................................................................................................................... 61
27. Size ................................................................................................................................ 62
28. TextAlign......................................................................................................................... 62
29. Visible............................................................................................................................. 63
30. ReadOnly........................................................................................................................ 63
31. TabStop.......................................................................................................................... 64
32. bDisableClipboardUpdated ............................................................................................. 64
F. GRID ........................................................................................................................................ 65
1. Cols.................................................................................................................................... 66
4
2. DataMember ...................................................................................................................... 67
3. zOpenRelatedChild ............................................................................................................ 67
4. zCarryingColumns.............................................................................................................. 68
5. Text.................................................................................................................................... 69
6. Nhóm các thẻ cho phép thao tác trên Grid ......................................................................... 70
7. Nhóm các thẻ hiển thị dữ liệu trên Grid .............................................................................. 70
8. Styles ................................................................................................................................. 72
9. allowEditingMultiCells......................................................................................................... 73
10. DynamicColX.................................................................................................................. 73
11. bDoubleClickActivateCell................................................................................................ 75
12. dataRelationMode........................................................................................................... 76
13. bShowRowIndicator, bMarkDataRowState, rowHeaderNumbering................................. 76
G. CÁC TÍNH NĂNG KHÁC ......................................................................................................... 76
1. Tính năng lưu tạm trên Editor............................................................................................. 76
2. Chức năng import............................................................................................................... 76
3. Tính năng khai báo hiển thị phân biệt phiên bản sử dụng .................................................. 77
4. Tính năng khóa màn hình................................................................................................... 78
5. Khai báo CustomFlags trong bảng B00Command.............................................................. 79
6. Cho phép khai báo thay đổi giá trị cột dữ liệu của các bảng khi truyền dữ liệu ra............... 79
5
LƯU Ý: 
− Tài liệu kỹ thuật dành cho phiên bản B10 mô tả tác dụng, ý nghĩa và các thao tác khi sử 
dụng các thẻ khai báo trên layout. Do trong quá trình phát triển và hoàn thiện sản phẩm 
nên có thể sẽ có những điểm khác biệt với sản phẩm trên thực tế. Trong tình huống này 
cán bộ kỹ thuật nên tham khảo các chỉ dẫn trên phần mềm.
1 TỔNG QUAN EDITOR
- Phiên bản Bravo 10 thì các sự kiện <ServerLoaded />, <RowAdded />, <RowCopied />, 
<RowImported />, <RowDeleting />, <ColumnChanging />, <ColumnChanged />: giữ 
nguyên cơ chế như bản trước và được mô tả bên dưới
- Luồng chạy các sự kiện khi cập nhật dữ liệu:
- <BeforeTransaction />: danh sách các evaluators được kích hoạt tại client trước khi dữ 
liệu được gửi lên backend.
- <BeforeCommit />: danh sách các thủ tục được kích hoạt tại backend sau khi dữ liệu đã 
được cập nhật thành công nhưng trước khi commit transaction.
- <AfterCommit />: danh sách các thủ tục được kích hoạt tại backend sau khi transaction 
được committed thành công.
- <AfterTransaction />: danh sách các evaluators được kích hoạt tại client sau khi quá 
trình cập nhật dữ liệu tại backend thành công.
Mục datasource có thể tham khảo file tài liệu của Datasource
A. LAYOUT
Toàn bộ các nội dung khai báo ở giao diện người dùng đều được lưu trong B00Layout và 
B00LayoutData theo cơ chế như bản 7. Tuy nhiên các bản ghi được phân biệt nhau bằng cột 
IsTemplate tương ứng với từng loại. Cụ thể như sau:
+ IsTemplate = 0: Lưu các thông tin layout chính (thiết kế các control)
+ IsTemplate = 1: Lưu các thông tin khai báo Template (Các thiết lập chung cho nhiều form)
+ IsTemplate = 2: Lưu các logo của company.
+ IsTemplate = 3: Lưu các thông tin khai báo DataSoure
+ IsTemplate = 4: Lưu các thông tin khai báo dạng Sublayout (là là một dạng layout khai báo các 
control nhưng tách biệt với layout chính và được tùy gọi ở layout chính theo một điều kiện nào đóTham khảo chi tiết trong phần mô tả thẻ zSubLayout)
Ngoài ra, chương trình còn có B00LayoutEdit để lưu các layout nháp (layout và DataSource): Một 
layout khi sửa đổi và lưu sẽ bắt buộc lưu thành bản nháp và chỉ có tác dụng với người dùng hiện 
thời đang soạn thảo (hoặc có thể chỉ định thêm phạm vi những người dùng bị tác động- bổ sung 
sau). Với những người dùng đang sử dụng user khác sẽ không bị ảnh hưởng bởi những thay đổi 
nháp này. Và chỉ khi người dùng thực hiện “Lưu chính thức” thì mới có tác dụng với tất cả người 
6
dùng. (trừ trường hợp sử dụng tính năng soạn thảo layout trên BravoTool thì khi lưu các thông tin 
sửa đổi trên layout sẽ luôn là lưu thật)
1. navigator 
Ý nghĩa
Dùng để khai báo các chức năng khai báo ở panel của màn hình Editor
Cú pháp
 <navigator>
 <LinkCommand>
 <Items>
 <Ten_Item>
 <Caption>
 <Execute>
 Danh_sach_cac_Evaluator>
 </Execute>
<Visible>Bieu_Thuc </Visible>
 <Select>Bieu_thuc</Select>
 <Text>
<Vietnamese>Cau thong bao</Vietnamese>
. . .
 </Text>
 </Ten_Item>
 </Items>
 </LinkCommand>
 </navigator>
Ví dụ:
Editor của Hóa đơn dịch vụ đang khai báo chức năng Lấy chi tiết đơn đặt hàng ở panel như sau:
 <Item_SO>
 <Caption>
 <Vietnamese>Chọn đơn hàng bán</Vietnamese>
 <English>Select sales order</English>
 </Caption>
7
 <Execute>
 <Eval_SaleOrder_GetData />
 <Eval_Sales_Select />
 </Execute>
 <Visible>ISNULL(UsingBizDocId_SO,0)=2</Visible>
 </Item_SO
Với khai báo này thì chức năng chỉ hiển thị khi trong danh mục chứng từ đang khai báo hiển thị 
thông tin đơn đặt hàng ở dưới Grid. Đồng thời, dù đứng ở bất cứ tab nào của Grid thì khi thực hiện 
chức năng này con trỏ sẽ đứng ở tab “Chi tiết”
Thuộc tính
Tên thuộc tính Nội dung
1 Caption Tiêu đề hiển thị chức năng, khai báo theo từng giao diện 
ngôn ngữ
2 Execute Khai báo danh sách evaluator sẽ thực thi khi click đúp 
vào chức năng
3 Visible Biểu thức điều kiện để ẩn hiện chức năng. Nếu biểu thức 
trả về False thì không hiển thị chức năng này.
4 Select Khai báo biểu thức tương ứng với các chức năng được 
hiển thị mặc định. VD: trên Editor danh mục đối tượng 
đang khai báo <Select>IsGroup=True</Select>
Thì khi đứng ở bản ghi nhóm ấn F2 thì màn hình luôn trở 
về màn hình nhập liệu nhóm đối tượng. Còn khi đứng ở 
bản ghi chi tiết để F2 thì luôn mặc định màn hình nhập 
liệu là đối tượng chi tiết.
5 Text Khai báo câu hiển thị dưới tên của chức năng. VD: Editor 
danh mục đối tượng ở pannel đang hiển thị câu “Thêm 
mới nhóm đối tượng” ở bên dưới câu Nhóm đối tượng.
Ghi chú
- Các Evaluator được khai báo trong thẻ Execute được định nghĩa trong DataSource. Khi thực 
thi các Evaluator thì các Evaluator tác động đến các control sẽ được ưu tiên thực hiện trước.
2. panelEditor
Ý nghĩa
8
Khai báo toàn bộ các nhóm đối tượng trên màn hình Editor (Parent, Grid, Summary). Chi tiết các 
đối tượng này được khai báo trong thẻ Controls. Về mặt bản chất panelEditor cũng được hiểu là 1 
control trên layout nên các thẻ con hỗ trợ tương tự như 1 control bình thường. Chi tiết các thẻ vui 
lòng tham khảo trong mục Controls.
Các dạng control cơ bản
Tên thuộc tính Nội dung
1 BravoExpandingPanel Nhóm hiển thị các đối tượng có khung bao quanh nhóm 
và có hiển thị tiêu đề, có thể đóng mở khung các nhóm 
đối tượng này.VD: Editor của danh mục đối tượng đang 
khai báo nhóm các thông tin chung và nhóm các thông 
tin chi tiết.
2 BravoGridContainer Khai báo các Grid nhập liệu có nhiều cấp (có bảng mẹ 
bảng con). Để khai báo Class này phải khai báo 
Assembly là Bravo.DataEditor. 
3 BravoEditingGrid Khai báo chỉ có một Grid nhập liệu đơn thuần (không có 
bảng mẹ bảng con). Để khai báo Class này phải khai 
báo Assembly là Bravo.DataEditor.
VD: Tham khảo khai báo Editor của danh mục đối 
tượng
4 BravoLinkCommand Khai báo các control hiển thị dạng đường Link.
VD: Báo cáo Tờ khai thuế Giá trị gia tăng đang khai báo 
Chức năng ‘Chỉ tiêu tự nhập’ ở tham số như sau:
<linkCommandKyTruoc>
 <ClassName>BravoLinkCommand</ClassName>
 <Assembly>Bravo.Reporter</Assembly>
 <Text>
 <Vietnamese>Chỉ tiêu tự nhập</Vietnamese>
 <English>Manual input data</English>
 </Text>
 <Execute>
 <OpenDefineFormula />
 </Execute>
</linkCommandKyTruoc>
9
5 DataEditor Chỉ định kiểu form là Editor. Thường sử dụng trong các 
khai báo của chức năng Wizard để chỉ định kiểu form cho 
màn hình hiển thị của một bước nào đó.
3. panelCommand
Ý nghĩa
Dùng để khai báo hiển thị các control ở phần summary
Cú pháp
 <panelCommand>
 <Items>
 <Ten_Commandkey />
 <Ten_Control>
 <Khai_bao_Control>
 </Ten_Control>
 </Items>
 </panelCommand>
Ví dụ
Trên Editor các phiếu chứng từ đang khai báo: 
 <panelCommand>
 <Items>
 <SaveAndNew />
 <SaveAndClose />
 <SaveLocal />
 <CloseWindow />
 <chkAutoPrintVoucher>
 <ClassName>BravoCheckBox</ClassName>
 <DataMember>AutoPrintVoucher</DataMember>
 <Text>
 <Vietnamese>In sau khi lưu</Vietnamese>
 <English>Print after saving successfully</English>
 </Text>
 </chkAutoPrintVoucher>
 </Items>
10
 </panelCommand>
Đồng thời khai báo trong thẻ <Root>: <showCommandButtons>Custom</showCommandButtons>
Thì tất cả các Item sẽ được hiển thị ở dòng cuối cùng của Editor.
Ghi chú
- Các đối tượng được khai báo trong <Items> có thể là chức năng được khai báo trong 
B00Command hoặc là các control tự định nghĩa. 
- Trường hợp khai báo Control vui lòng tham khảo các tài liệu liên quan
- Trường hợp khai báo các nút thì chỉ cần khai báo tên CommandKey của nút đó trong 
B00command.
4. showCommandButtons
Ý nghĩa
Dùng để khai việc ẩn hiện các đối tượng được khai báo trong phần panelCommand.
Cú pháp
 <showCommandButtons>Thuoc_tinh</showCommandButtons>
Thuộc tính
Stt Tên thuộc tính Nội dung
1 Off Không hiển thị bất kỳ Item nào.
2 Default Chỉ hiển thị các command mặc định trong B00Command 
<SaveAndNew />
<SaveAndClose />
<SaveLocal />
<CloseWindow />
3 Custom Hiển thị tất cả các Item được khai báo trong panelCommand
Ví dụ
Trên Editor của chứng từ hóa đơn bán hàng đang khai báo:
 <panelCommand>
 <Items>
 <SaveAndNew />
 <SaveAndClose />
11
 <SaveLocal />
 <CloseWindow />
 <chkAutoPrintVoucher>
 . . . . . .
 </chkAutoPrintVoucher>
 <chkDocumentViewStyle>
 . . . . .. 
 </chkDocumentViewStyle>
 </Items>
 </panelCommand>
 <showCommandButtons>Custom</showCommandButtons>
 Thì phần dưới cùng của form sẽ hiển thị các nút : Lưu và thêm mới/Lưu và quay ra/Lưu 
tạm/Thoát/nút in sau khi lưu và nút Xem rút gọn
Ghi chú: Trường hợp không khai báo thẻ này sẽ tương đương với khai báo với thuộc tính Default
5. zSubLayout
Ý nghĩa
Dùng để khai biểu thức lựa chọn tên của Sublayout
Cú pháp
<root>
 <zSubLayout>Bieu_thuc</zSubLayout>
. . . . 
<root>
Ví dụ
Trên Editor của danh mục sản phẩm công trình đang khai báo ở layout
<zSubLayout>CASE(ProductType, '', 'GroupLayout1', '', 'GroupLayout3',
'GroupLayout4')</zSubLayout>
Điều đó được hiểu là tùy theo giá trị của cột ProductType mà sẽ dùng Sublayout nào.
Nếu = 0 thì trả về giá trị trắng.-> chương trình sẽ mặc định gọi đến Layout1
Nếu = 1 thì giá trị trả về 'GroupLayout1' và chương trình sẽ sử dụng đến khai báo của GroupLayout1 
trong Sublayout.
12
6.verifyWorkingData
Ý nghĩa
Thuộc tính quy định việc khi đang thêm mới/sửa/đã có bước thực hiện mà thay đổi dữ liệu làm việc 
thì form sẽ bị khóa và hiển thị cảnh báo. 
Cú pháp
<root>
 <verifyWorkingData>Gia_Tri</verifyWorkingData>
</root>
Ghi chú:
- Các giá trị có thể nhận: 
✓ FiscalyearChanged: Khóa form và hiển thị cảnh báo nếu thay đổi năm làm việc.
✓ BranhchChanged: Khóa form và hiển thị cảnh báo nếu thay đổi đơn vị cơ sở.
✓ None: Không cảnh báo gì cả.
- Riêng với Editor và Wizard, Repoter thì giá trị mặc định là FiscalyearChanged| 
BranhchChanged.
7.zCustomConnectionName
Ý nghĩa: Khai báo chuỗi kết nối để hiển thị, chỉnh sửa dữ liệu từ một kết nối khác
Ví dụ: trong command của danh mục đối tượng ở chương trình bản Quản trị, nếu muốn hiển thị, 
chỉnh sửa dữ liệu Editor này từ chương trình bản tài chính thì làm như sau: 
- Bước 1: Trong File Config.exe khai báo một chuỗi kết nối cho bản Tài chính :
 <connectionStrings>
 <add name="Bravo8_TC" connectionString="Data Source=bravosrv\srv2014;Initial 
Catalog=Bravo8;Integrated Security=True;Connect Timeout=15"
 providerName="System.Data.SqlClient" />
- Bước 2: Trong layout của Editor của danh mục đối tượng bản Quản trị khai báo như sau:
<root>
<zCustomConnectionName>Bravo8_TC</zCustomConnectionName>
</root>
Ghi chú
Với khai báo khi sử dụng zCustomConnectionName thì riêng với layout và dữ liệu phân quyền thì 
vẫn luôn dùng kết nối hệ thống khi đăng nhập, Riêng với các Eval hoặc lookup có hỗ trợ khai báo 
zCustomConnectionName riêng, vui lòng tham khảo các tài liệu liên quan.
8.Execute
Ý nghĩa: Hỗ trợ các lệnh về in (Print, QuickPrint, Viewer) trong khi nhập liệu, cách khai báo dùng 
evaluator qua thẻ <Execute> (cho layout hoặc template) tương tự như trong DataExplorer hay 
Reporter tuy nhiên chi ở cấp form (DataEditor)
13
Ví dụ: Khi đứng từ báo cáo bảng kê chứng, người dùng muốn click đúp mở chứng từ lên và có 
thể ấn lệnh in luôn từ màn hình Editor. Để làm được việc này khai báo như sau ở editor để hỗ trợ
các lệnh xem mẫu in, in, in nhanh khi nhập liệu (phần biểu thức LastCommand() IN 
('Viewer','Print', 'QuickPrint') trong <Expr>) và chỉ cho phép khi đã lưu (phần biểu thức 
RowState()='Unchanged' trong <Expr>): 
<DataSource>: 
<root>
<Tables>
<ParentTable>
<Evaluators>
<Eval_Reporter>
<ClassName>BravoCommandKey</ClassName>
<CommandKey>AccDocViewer_PT</CommandKey>
<Expr>LastCommand() IN ('Viewer','Print', 'QuickPrint')</Expr>
</Eval_Reporter>
</Evaluators>
</ParentTable>
</Tables>
</root>
Layout hoặc template <Voucher>: 
<root>
<Execute>
<Eval_Reporter />
</Execute>
</root>
9. bFullScreenMode
Ý nghĩa: Để hiển thị các layout form ở chế độ toàn màn hình
<root>
<bFullScreenMode>True/False</bFullScreenMode>
</root>
10.bShowStatusStrip
Ý nghĩa: Để hiển thị/ẩn thanh trạng thái (ví dụ layout main thì sẽ là các thông tin đơn vị cơ sở, 
chuỗi kết nối.. ở góc dưới cùng bên phải màn hình)
<root>
<bShowStatusStrip>True/False</bShowStatusStrip>
 </root>
11. TextFormat
Ý nghĩa: Để dùng biểu thức nhúng và sẽ được refresh khi hiển thị trên menu/toolbar (để hiển thị 
đơn vị cơ sở hiện thời, năm làm việc hiện thời…), tuy nhiên chiều dài item sẽ cố định như ban đầu
Ví dụ: Khi muốn khai báo hiển thị thông tin trên thanh công cụ của đơn vị cơ sở hiện thời và có 
thể tự Refresh khi đổi đơn vị có thể khai báo như sau:
14
12. zDefaultCommandButton
Ý nghĩa: Cho phép khai báo property của form zDefaultCommandButton là nút lệnh ngầm định ở
panelCommand sẽ được thực hiện khi người dùng bấm phím Ctrl+Enter (lệnh phải tồn tại trong 
panelCommand), nếu không khai báo thì nút ngầm định là nút lệnh ‘Lưu và thêm mới’ khi thêm 
mới và nút lệnh ‘Lưu và quay ra’ khi sửa.
Ví dụ: Khi muốn khi F2 Editor thì nút mặc định luôn là “lưu và quay ra” thì khai báo như sau:
14. bLoadPermissionForAllTables
Ý nghĩa: tùy chỉnh có tải dữ liệu phân quyền của tất cả các bảng con/cháu… hay không hay chỉ 
riêng cho bảng mẹ (ngầm định bLoadPermissionForAllTables=False)
15
B. CONTROLS
Ý nghĩa
- Là thẻ mẹ, dùng để khai báo định nghĩa các control hoặc nhóm các control ở bên trong. Việc 
định nghĩa các control trong thẻ này có thể được sử dụng ở rất nhiều nơi. Có thể các control 
được khai báo trong navigator/ panelEditor hoặc panelCommand trong Editor… Các control có 
thể được khai báo lồng nhau nhưng về cơ bản đều hỗ trợ tất cả các thẻ chung khi định nghĩa 
control. Tuy nhiên còn tùy theo ClassName mà các thẻ được hỗ trợ có thể khác nhau.
- Chú ý: Việc thiết lập trạng thái của controls ngoài việc sử dụng các thẻ chung phần Controls, 
người dùng có thể sử dụng Eval để thiết lập linh hoạt hơn theo các điều kiện thay vì chỉ có thể
lựa chọn True/False (tham khảo mục Eval : BravoEvaluator). Ngoài ra người dùng có thể khai 
báo thay đổi giá trị một thuộc tính nào đấy áp dụng cho nhiều control ở nhiều loại màn hình 
khác nhau hoặc ở tất cả các màn hình nhưng theo từng ClassName bằng cách khai báo thuộc 
tính đó ở Template
- Khi Load form thì các Eval bảng mẹ mà có khai báo thẻ Controls sẽ được ưu tiên thực hiện 
trước. Như vậy khi có các Eval thiết lập các control ở các bảng con và bảng cháu thì cần phải 
đặt ở bảng Parent, nếu đặt trong các sự kiện ServerLoaded hoặc RowAdded…. ở bảng con/ 
bảng cháu đều không được do lúc đó các control chưa được khởi tạo hoặc chưa sẵn sàng nhận 
các dữ liệu.
Cú pháp
 <Controls>
 <Ten_Control>
Khai báo các thẻ trong control
 </Ten_Control>
 </Controls>
Ví dụ
Trên Editor của chứng từ trong phần panelEditor/Controls đang khai báo 3 nhóm là :
+ <panelParent>: Định nghĩa các control ở đầu phiếu
+ <BravoGridContainer>: Định nghĩa các control là Grid nhập liệu
+ <panelSummary>: Định nghĩa các control ở cuối phiếu
16
Việc phân định như này hoàn toàn là do người dùng tự đinh nghĩa, đây là quy ước chung khi thiết 
kế màn hình Editor của chứng từ, nhưng ở màn hình khác người dùng hoàn toàn có thể định nghĩa 
và đặt tên khác
Mỗi một nhóm đó được coi là 1 control trong màn hình Editor nên cũng sẽ được hỗ trợ đầy đủ các 
thẻ chung của control tương ứng với từng ClassName. Trong mỗi nhóm đó lại tiếp tục định nghĩa 
tiếp các nhóm đối tượng hoặc đối tượng tiếp
1. Dock
Ý nghĩa
Dùng để xác định vị trí hiển thị các control trên phông nền
Cú pháp
 <panelEditor>
 <Dock>Gia_tri</Dock>
…
 </panelEditor>
Ví dụ
Trên Editor các chứng từ đang khai báo để tràn kín màn hình nền của các đối tượng
<panelEditor>
 <Dock>Fill</Dock>
Ghi chú
- Giá trị có thể nhận của thẻ là:
+ None: Không tự động căn chỉnh
+ Top: Căn lên trên cùng
+ Bottom: Căn xuống dưới
+ Left: Căn sang bên trái
+ Right: Căn sang bên phải
+ Fill: tràn kín màn hình
- Thẻ này là thẻ chung của control nên thẻ mẹ có thể là panelEditor hoặc các thẻ định nghĩa 
các control hoặc nhóm control bất kỳ.
2. Rows
Ý nghĩa
17
Dùng để định nghĩa các khung của dòng trên màn hình nền của control.
Cú pháp
 <panelEditor>
 <Rows>
 <Row_X>
 <SizeType>Gia_tri</SizeType>
 <Height>Gia_tri</Height>
 </Row_X>
 </Rows>
…
 </panelEditor>
Ghi chú
- Việc định nghĩa các dòng là do người dùng chủ động vẽ khung, Dòng ở đây không phải là 
dòng thật mà là dòng định dạng. Chủ yếu để dùng trong việc khai báo cố định hoặc đánh 
dấu các dòng khi muốn căn chỉnh các control.
- Các thẻ con hỗ trợ:
Tên thẻ Nội dung
1 SizeType Thiết lập kiểu kích thước của dòng. Giá trị có thể nhận là 
số hoặc chuỗi:
+ 0 hoặc AutoSize: Độ rộng tự động
+ 1 hoặc Absolute: Độ rộng tuyệt đối
+ 2 hoặc Percent: Tương đối theo phần trăm của các 
dòng
2 Height Khai báo chiều cao của dòng
3. Cols
Ý nghĩa
Dùng để định nghĩa các cột trên màn hình nền của control. Cấu trúc và cách thức sử dụng tương 
tự như thẻ Rows (tham khảo tài liệu liên quan)
18
4. Text
Ý nghĩa
Dùng để khai báo hiển thị tên của control
Cú pháp
 <Ten_Control>
 <Text>
 <Vietnamese> Chuoi_ky_tu</Vietnamese>
 <English>Chuoi_ky_tu </English>
 .………
 </Text>
. . . .
 </Ten_Control>
Ví dụ
Editor của Phiếu xuất có cột thành tiền đang khai báo:
 <OriginalAmount9>
 <Text>
 <Vietnamese>Thành tiền {=ISNULL(CurrencyCode,'VND')}</Vietnamese>
 <English>Amount {=ISNULL(CurrencyCode,'VND')}</English>
 </Text>
…….
</OriginalAmount9>
Ghi chú
- Trong thẻ khai báo theo từng ngôn ngữ có thể khai báo biểu thức nhúng. Biểu thức nhúng 
có thể được viết trong dấu nháy chương trình vẫn hiểu được. 
- Chỉ duy nhất khi hiển thị tiêu đề các cột trong Grid thì không cần khai báo điều kiện như phần 
ví dụ. Tuy nhiên khi sử dụng biểu thức nhúng cho thẻ Text khác chú ý phải khai báo thêm 
điều kiện Expr="True". 
VD: ở phần khai báo layout báo cáo Tổng hợp Nhập Xuất Tồn
<lblShowBaseCurrency>
 <Text Expr="True">
 <Vietnamese>Hiển thị giá trị {=CONFIG('M_Ma_Tte0')}</Vietnamese>
19
 …
 </Text>
…
</lblShowBaseCurrency>
5. Column
Ý nghĩa
Dùng để khai báo số thứ tự đặt control ở cột nào. 
Cú pháp
 <Ten_Control>
 <Column>So_thu_tu</Column>
…
 </Ten_Control>
Ghi chú
- Số thứ tự cột được hiểu là số thứ tự cột trong đối tượng mà control được đặt vào. Vì control 
hoàn toàn có thể được khai báo lồng trong nhau.
VD: Trên Editor của phiếu xuất đang có khai báo
Trong thẻ mẹ <panelParent> đang khai báo <Column> = 0: được hiểu là panelParent được 
đặt ở cột thứ 0 trong panelEditor.
Trong <panelDocDate> đang khai báo <Column>= 1: Được hiểu là cột 1 tính từ trái sang 
của panelParent.
- Số thứ tự cột luôn được bắt đầu từ 0 (tính từ trái sang phải). Giá trị mặc định là 0
6. Row
Ý nghĩa
Dùng để khai báo số thứ tự đặt control ở dòng nào. 
Cú pháp
 <Ten_Control>
 <Row>So_thu_tu_dong</Row>
20
…
 </Ten_Control>
Ghi chú
- Số thứ tự dòng được hiểu là số thứ tự dòng trong đối tượng mà control được đặt 
vào. Vì control hoàn toàn có thể được khai báo lồng trong nhau. Việc định nghĩa 
thuộc tính/tính chất các dòng có thể được người dùng đinh nghĩa lại trong thẻ Rows
- Số thứ tự dòng luôn được bắt đầu từ 0 (tính từ trái sang phải, từ trên xuống dưới). 
Trường hợp muốn đối tượng được trình bày xuống dòng vẫn phải khai báo <Row />
7. ClassName
7.1.BravoKeyInputBox
Ý nghĩa
Khai báo các control nhập liệu các ký tự (ngoại trừ các ký tự đặc biệt)
Cú pháp
 <Ten_Control>
 <ClassName>BravoKeyInputBox</ClassName>
 <DataMember>Ten_truong</DataMember>
 <Row>So_thu_tu_dong</Row>
 <Column> So_thu_tu_cột</Column>
. . .
 </Ten_Control>
Ghi chú
- Danh sách các ký tự đặc biệt được khai báo trong tham số hệ thống ở biến 
M_InvalidCharacters.
- Với các ô có kiểu nVarchar thì chương trình không hỗ trợ gõ các ký tự Unicode (có thể dùng 
bRestrictedUnicode = True để hỗ trợ người dùng gõ các ký tự Unicode). Các ký tự Unicode 
ở chế độ gõ tiếng Việt như gõ DD, AW,AJ…
7.2.BravoLookupBox
Ý nghĩa
Khai báo các control nhập kiểu lựa chọn các giá trị từ các cơ sở dữ liệu.
21
Cú pháp
 <Ten_Control>
 <ClassName>BravoLookupBox</ClassName>
 <DataMember>Ten_truong</DataMember>
 <Row>So_thu_tu_dong</Row>
 <Column> So_thu_tu_cột</Column>
 <bindingMembers>
 <Ten_cot1>Ten_Cot2</Ten_cot1>
. . .
 </bindingMembers>
 <LookupKey>Customer</LookupKey>
 <SelectKey>Bieu_thuc</SelectKey>
. . .
 </Ten_Control>
 Các thẻ hỗ trợ
stt Tên thẻ Nội dung
1 LookupKey Khai báo giá trị cột LookupKey trong B00Lookup
2 DataMember Khai báo cột hiển thị dữ liệu
3 FilterKey Điều kiện lọc dữ liệu của bảng dữ liệu truy vấn. Có thể 
khai báo trực tiếp trên layout hoặc cột FilterKey trong 
bảng B00Lookup. Hiểu một cách đơn giản là với các 
lookup khai báo thẻ này thì khi mở form chỉ hiển thị và 
tích chọn được các bản ghi thỏa mãn điều kiện
4 SelectKey Điều kiện lọc dữ liệu của bảng dữ liệu truy vấn. Có thể 
khai báo trực tiếp trên layout hoặc cột SelectKey trong 
bảng B00Lookup. Hiểu một cách đơn giản là với các 
lookup khai báo thẻ này thì khi mở form sẽ hiển thị hết 
các bản ghi nhưng chỉ tích chọn được các bản ghi thỏa 
mãn điều kiện
5 bindingMembers - Để gán giá trị cho các trường từ giá trị Lookup. Nếu 
khai báo : 
<bindingMembers> 
<Ten_cot1>Ten_Cot2</Ten_cot1>
22
</bindingMembers>
Được hiểu là: Gán giá trị Cột 1 (cột 1 ở bảng dữ liệu 
được khai báo tại cột LookupTable trong bảng 
B00Lookup hoặc bảng được khai báo trong thẻ 
zLookupSource) cho cột 2 (Cột 2 là cột của bảng dữ liệu 
hiện tại)
- Trường hợp người dùng muốn các giá trị binding theo 
điều kiện thì có thể sử dụng Eval có ClassName = 
BravoBindingMember (tham khảo chi tiết ở mục 
Evaluator)
6 zCustomConnectionName Khai báo kết nối đến Server khác. VD: khi nhập liệu luôn
chỉ định ô lookup lựa chọn giá trị từ 1 Database khác. 
Cơ chế này hỗ trợ cả trong Lookup, Eval, kết nối Form. 
(tham khảo chi tiết ở mục zCustomConnectionName)
7 zLookupSource - Khai báo bảng lookup trực tiếp từ layout. Nghĩa là 
không cần tạo 1 dòng trong B00Lookup mà khai báo 
trực tiếp bảng dữ liệu muốn lookup từ khai báo thẻ này.
- Giá trị của cột này tương đương với giá trị khai báo 
cột LookupTable trong B00Lookup.
- Không sử dụng khai báo đồng thời cả zLookupSource 
và LookupKey vì lúc đó chương trình luôn ưu tiên thực 
hiện LookupKey.
8 zValueMember Khai báo các cột tìm kiếm dữ liệu khi người dùng gõ 
vào các ô lookup (tìm kiếm theo mã). Chỉ sử dụng khi 
khai báo lookup trực tiếp từ layout. Tác dụng của thẻ 
này tương đương với khai báo cột ValueMember ở 
bảng B00Lookup.
9 zDisplayTextMember Khai báo các cột tìm kiếm dữ liệu khi người dùng gõ 
vào các ô lookup (tìm kiếm theo kiểu ký tự ). Chỉ sử 
dụng khi khai báo lookup trực tiếp từ layout. Tác dụng 
của thẻ này tương đương với khai báo cột 
DisplayTextMember ở bảng B00Lookup.
10 zExtraMemberList Khai báo các cột mở rộng hiển thị thêm ở màn hình 
show dữ liệu khi người dùng gõ vào các ô lookup (bao 
gồm cả các cột khai báo ở zValueMember, 
zDisplayTextMember). Chỉ sử dụng khi khai báo lookup 
23
trực tiếp từ layout. Tác dụng của thẻ này tương đương 
với khai báo cột ExtraMemberList ở bảng B00Lookup.
11 bShowCommand Khai báo xác định có hỗ trợ show các lệnh command 
khi lookup hay không. Giá trị có thể nhận:
+ True: Luôn hiển thị các chức năng command (nếu có 
khai báo ở NewCommand hoặc LinkCommand) và là 
giá trị mặc định khi lookup từ B00Lookup.
+ False: Không hiển thị các chức năng command (kể cả 
có khai báo trong NewCommand hoặc LinkCommand) 
và là giá trị mặc định khi lookup trực tiếp từ khai báo 
layout (sử dụng zLookupSource)
12 zNewCommand Hỗ trợ tính năng thêm mới khi lookup. Chỉ sử dụng khi 
khai báo lookup trực tiếp từ layout và chỉ hiển thị khi 
bShowCommand = True. Tác dụng của thẻ này tương 
đương với khai báo cột NewCommand ở bảng 
B00Lookup. 
13 zLinkCommand Hỗ trợ tính năng mở LinkCommand khi lookup. Chỉ sử 
dụng khi khai báo lookup trực tiếp từ layout và chỉ hiển 
thị khi bShowCommand = True. Tác dụng của thẻ này 
tương đương với khai báo cột LinkCommand ở bảng 
B00Lookup. VD: Lookup danh mục đối tượng nếu cho 
phép người dùng mở danh mục đối tượng thì khai báo 
cột LinkCommand là “Customer”
14 zDisplayTextFormat - Khai báo chuỗi định dạng hiển thị nội dung.
+ Nếu là {0} tương ứng với cột ở ValueMember
+ Nếu là {1} tương ứng với cột ở DisplayMember
- Chỉ sử dụng khi khai báo lookup trực tiếp từ layout. 
Tác dụng của thẻ này tương đương với khai báo cột 
DisplayTextFormat ở bảng B00Lookup.
15 LookupMode Khai báo xác định cách thức tìm kiếm giá trị khi lookup. 
Các giá trị có thể nhận:
+ 0-ExactValueMember: Giá trị mặc định của thẻ, tìm 
chính xác giá trị đang gõ và chỉ lựa chọn được 1 giá trị 
từ lookup.
+ 1-PartialValueMember: Cho phép gõ một phần các ký 
tự đầu của mã, thường dùng trong báo cáo.
24
+ 2-ChecklistValueMember: Chỉ cho chọn danh sách 
các giá trị và chọn được nhiều hơn 1 giá trị.
+ 3-SuggestValueMember: chỉ cho chọn 1 giá trị từ 
lookup nhưng hiển thị mã và cho phép gõ lại thành giá 
trị khác.
+ 4-SuggestDisplayMember: cho chọn 1 giá trị từ 
lookup và hiển thị giá trị Display, đồng thời cho phép gõ 
lại giá trị (VD như ô đối tượng thuế trên các màn hình 
nhập liệu chứng từ)
16 bAutoSwitchChecklistMode Khai báo tự động chuyển đổi kiểu LookupMode từ 
ExactValueMember/PartialValueMember/ 
ChecklistValueMember khi gõ ký tự dấu phẩy. Giá trị có 
thể nhận:
+ True: có thể chuyển đổi kiểu LookupMode 
+ False: Không hỗ trợ chuyển đổi kiểu LookupMode (giá 
trị mặc định)
17 bAutoCheckMatchedValue Khai báo để bật/tắt tính năng tự động tích chọn giá trị ở 
dropdown với lookupMode=ChecklistValueMember
18 bWaitLookupToCloseDropDow
n
Nếu = True thì khi người dùng gõ nhanh giá trị display 
member và Enter trước khi dropdown tìm và hiển thị kết 
quả thì sẽ không đóng được dropdown (giá trị ngầm 
định là False.
19 bLookupDistinct Nhận giá trị True/False cho lookup để thêm mệnh đề 
DISTINCT cho câu lệnh query nhằm loại trừ giá trị trùng 
nếu có, chỉ dùng khi thực sự cần thiết vì DISTINCT có 
thể sẽ làm chậm tốc độ lệnh query
20 zLookupExcludedColumns Là danh sách các cột sẽ bỏ qua khi thực hiện tìm kiếm 
(ví dụ các cột số/ngày giờ…)
21 <bAlwaysOpenDropdown> Cho phép thả xuống khi người dùng nhập văn bản (mặc 
định là False)
22 zLookupBindingSource Khai báo BravoLookupBox lấy nguồn dữ liệu lookup từ 
một bảng/view đang nhập liệu.
<zLookupBindingSource>tên bảng|tên 
view|alias</zLookupBindingSource>
Sẽ phải bỏ trắng khai báo <zLookupSource>
25
Ghi chú
- Với các control kiểu lookup thì hỗ trợ khai báo thêm kiểu lookup trực tiếp từ layout mà không 
cần khai báo thêm dòng trong B00Lookup
- Hỗ trợ người dùng gõ tìm kiếm giá trị bằng ký tự % và _ (hỗ trợ nếu tìm đích danh ký tự % 
thì chỉ cần gõ ABC[%] thay vì phải gõ %ABC[%]%)
- Lookup hỗ trợ tìm kiếm display member theo dạng “chuỗi-hoặc-chuỗi” khi khai báo 
zLookupCombineSeparator, ví dụ khai báo zLookupCombineSeparator=+ và gõ cuỗi tìm 
kiếm “công+nghệ” thì lookup sẽ tìm các kết quả có chứa “công” cùng các kết quả có chứa 
“nghệ”, như “Công dân” và “Nghệ An”. Chế độ này bắt buộc phải khai báo DisplayMember 
và có thể khai báo để tìm cả các cột ExtraMemberList
- Hỗ trợ
✓ Nếu lookup có khai báo zLookupCombineSeparator sẽ hiển thị thêm “Gõ 
A<zLookupCombineSeparator>B để tìm A hoặc B.”
✓ Grid nhập liệu sẽ chỉ hiển thị ValueMember hoặc DisplayMember (nếu có) cho các cột 
dùng lookup có khai báo HiddenValueMember mà không phụ thuộc vào khai báo 
zDisplayTextFormat – nội dung hiển thị đầy đủ theo zDisplayTextFormat sẽ chỉ áp dụng 
khi hiển thị tooltip. Hỗ trợ hiển thị giá trị nhóm khi nhóm cột lookup với 
HiddenValueMember. Hỗ trợ tìm kiếm các cột lookup với HiddenValueMember trong grid 
nhập liệu chỉ khi lookup có khai báo bindingMembers chứa ValueMember hoặc chứa 
DisplayMember - giá trị nào sẽ hiển thị trên grid
7.3.BravoQuantityInputBox
Ý nghĩa
Khai báo các control nhập liệu kiểu số lượng
Cú pháp
 <Ten_Control>
 <ClassName>BravoQuantityInputBox</ClassName>
 <DataMember>Ten_truong</DataMember>
 <Row>So_thu_tu_dong</Row>
 <Column> So_thu_tu_cột</Column>
. . .
 </Ten_Control>
Ghi chú
26
- Các control khai báo ClassName này thì dữ liệu luôn căn phải, định dạng hiển thị luôn ăn 
theo khai báo biến M_DefaultQuantityFormat trong tham số hệ thống
7.4.BravoBarCodeBox
- Khai báo các control hiển thị dữ liệu mã vạch (Barcode). (Tương tự như 
BravoBarCodeInputBox)
7.5.BravoBarCodeInputBox
Ý nghĩa
Khai báo các control hiển thị và nhập liệu kiểu mã vạch (BarCode)
Cú pháp
 <Ten_Control>
 <ClassName>BravoBarCodeInputBox</ClassName>
 <DataMember>Ten_truong</DataMember>
 <Row>So_thu_tu_dong</Row>
 <Column> So_thu_tu_cột</Column>
. . . .
 </Ten_Control>
Ví dụ
Editor màn hình Cập nhật phiếu bán lẻ đang khai báo ô để tít mã vạch ở đầu phiếu:
 <txtItemInfo>
 <ClassName>BravoBarCodeInputBox</ClassName>
 <DataMember>ItemInfo</DataMember>
 <Column>0</Column>
 <Row />
 <Style>Font:"Arial Black",20pt,style=Bold;</Style>
 <bAllowUsingEnterAsTabKey>False</bAllowUsingEnterAsTabKey>
 <bAlwaysOpenDropdown>False</bAlwaysOpenDropdown>
 <ReadOnly>False</ReadOnly>
 </txtItemInfo>
27
7.6.BravoCheckBox
Ý nghĩa
Khai báo các control hiển thị và nhập liệu kiểu check box
Cú pháp
 <Ten_Control>
 <ClassName>BravoCheckBox</ClassName>
 <DataMember>Ten_truong</DataMember>
 <Row>So_thu_tu_dong</Row>
 <Column> So_thu_tu_cột</Column>
. . . .
 </Ten_Control>
Ghi chú
- Trường hợp control là một ô nhập liệu kiểu Checkbox thì bắt buộc phải khai báo ClassName.
- Trường hợp control là 1 cột ở Grid: Để hiển thị ô dữ liệu kiểu checkbox chỉ cần khai báo 
<Style>DataType:System.Boolean;ImageAlign:CenterCenter;…..</Style>. 
Nếu cho phép nhập liệu ở Editor thì kết hợp thêm thẻ <Editor>
<CheckAlign>: khai báo vị trí xuất hiện của dòng nội dung trong thẻ text
7.7.BravoLabel 
Ý nghĩa
Khai báo các control hiển thị caption dạng text
Cú pháp
 <Ten_Control>
 <ClassName>BravoLabel</ClassName>
 <Text>
 <Vietnamese>…. </Vietnamese>
. . .
 </Text>
 <Row>So_thu_tu_dong</Row>
 <Column> So_thu_tu_cột</Column>
. . .
28
 </Ten_Control>
Ghi chú
- Các control dạng này không có khai báo DataMember. Là ClassName mặc định nên có thể 
bỏ qua không cần khai báo nếu chỉ hiển thị caption dạng text thông thường. Khi có các kiểu 
định dạng, biểu thức… thì vẫn cần khai báo ClassName.
- Chú ý với trường hợp có nhúng biểu thức thì cần phải chỉ định thuộc tính (attribute) cho thẻ 
Text. 
- VD: Ở tham số của Báo cáo kiểm tra giá xuất kho theo phương pháp NTXT đang khai báo: 
 <lblAttention2>
 <ClassName>BravoLabel</ClassName>
 <Text Expr="True">
 <Vietnamese>{=FISCALYEAR()}</Vietnamese>
 <English>{=FISCALYEAR()}</English>
 </Text>
 <Column>3</Column>
 <Style>Font:,,style=Bold;ForeColor:Blue;</Style>
 </lblAttention2>
7.8.BravoDataLabel
Ý nghĩa
Khai báo các control hiển thị vừa caption dạng text vừa giá trị của DataMember
Cú pháp
 <Ten_Control>
 <ClassName>BravoDataLabel</ClassName>
 <DataMember>Ten_truong</DataMember>
 <TextFormat>Cau_text({0:P0})</TextFormat>
 <Row>So_thu_tu_dong</Row>
 <Column> So_thu_tu_cột</Column>
. . . .
 </Ten_Control>
Ví dụ
29
Editor của phiếu xuất, Caption của ô Tổng tiền thuế ở Summary sẽ hiển thị cả Text và giá trị của ô 
TexRate khi người dùng nhập liệu phần thuế. Do vậy đang khai báo: 
 <lblTotalOriginalAmount3>
 <ClassName>BravoDataLabel</ClassName>
 <TextFormat>VAT ({0:P0})</TextFormat>
 <DataMember>TaxRate</DataMember>
 <Row>1</Row>
 <Column>11</Column>
 </lblTotalOriginalAmount3>
Với khai báo như này khi TaxRate trắng/null/0 thì ô sẽ hiển thị VAT(0%), và sẽ hiển thị theo giá trị 
của ô TaxRate khi người dùng nhập liệu
7.9.BravoDateInputBox
Ý nghĩa
Khai báo các control hiển thị và nhập liệu kiểu Date
Cú pháp
 <Ten_Control>
 <ClassName>BravoDateInputBox</ClassName>
 <DataMember>Ten_truong</DataMember>
 <Row>So_thu_tu_dong</Row>
 <Column> So_thu_tu_cột</Column>
. . . .
 </Ten_Control>
Ghi chú
- Với các ô khai báo kiểu ClassName này thì ngoài việc hỗ trợ người dùng nhập liệu theo định 
dạng kiểu Date ra, người dùng có thể lựa chọn các giá trị từ thanh lịch cuộn.
- Định dạng hiển thị của các ô khai báo kiểu ClassName này theo khai báo của biến 
M_DefaultDateFormat trong tham số hệ thống nếu không có thẻ chỉ định kiểu định dạng.
7.10.BravoExpandingPanel
Ý nghĩa
30
Khai báo các nhóm các control hiển thị trong cùng một panel.
Cú pháp
 <Ten_Control>
 <ClassName>BravoExpandingPanel</ClassName>
 <Row>So_thu_tu_dong</Row>
 <Column> So_thu_tu_cột</Column>
 <nLockColumn>0</nLockColumn>
 <bExpanded>False/True</bExpanded>
 <Text>
 <Vietnamese>…. </Vietnamese>
. . .
 </Text>
 <Controls>
 . . .
 </Controls>
. . .
 </Ten_Control>
Các thẻ hỗ trợ
Tên thẻ Nội dung
1 Text Khai báo hiển thị caption ở tiêu để của nhóm control.
Trong đó có hỗ trợ khai báo theo từng ngôn ngữ.
2 bExpanded Khai báo thuộc tính mặc định là mở panel hay đóng khi 
mở form. Giá trị có thể nhận: 
+ True: Mặc định là mở panel
+ False: Mặc định là đóng panel
3 Controls Thẻ mẹ, khai báo tiếp các control trong cùng hiển thị 
trong pannel. Cách khai báo tương tự như một control 
thông thường.
7.11.BravoLinkLabel
- Các control khai báo dạng ClassName này tương tự như BravoLabel (tham khảo tài liệu liên 
quan). Chỉ có khác là Caption hiển thị dạng đường link (chữ màu xanh, gạch chân)
- Hỗ trợ thêm tính năng Grid cho phép hiển thị và click link tại một cột với khai báo editor cho cột 
là BravoLinkLabel hoặc khai báo Format:link; trong thẻ Style (tương tự với khai báo BravoButton 
31
với bIsLink=True). Khi sử dụng cell type Format:link; thì người dùng vẫn có thể sửa đổi giá trị 
link ở dạng text.
7.12.BravoNumericInputBox
Ý nghĩa
Khai báo các control nhập kiểu số.
Cú pháp
 <Ten_Control>
 <ClassName>BravoNumericInputBox</ClassName>
 <DataMember>Ten_truong</DataMember>
 <Row>So_thu_tu_dong</Row>
 <Column> So_thu_tu_cột</Column>
. . .
 </Ten_Control>
Ghi chú
- Các control khai báo ClassName này thì dữ liệu luôn căn phải, định dạng hiển thị mặc định 
là N2 nhưng có thể khai báo linh động theo N3, N0, P0…
7.14.BravoOptionBox
Ý nghĩa
Khai báo các control hiển thị và nhập liệu kiểu check box (tương tự như BravoCheckBox nhưng hình 
hiển thị là nút hình tròn)
7.16.BravoPictureInputBox
Ý nghĩa
Khai báo các control nhập liệu kiểu hình ảnh
Cú pháp
 <Ten_Control>
 <ClassName>BravoPictureInputBox</ClassName>
 <DataMember>Ten_truong</DataMember>
32
 <Row>So_thu_tu_dong</Row>
 <Column> So_thu_tu_cột</Column>
 <FileSizeLimit>5242880</FileSizeLimit>
 <FileOverwriteOption>Overwrite</FileOverwriteOption>
 <DestinationFolder>
CONFIG('M_DefaultSubFolder_Data') + '/' + NEWID()
</DestinationFolder>
<selectedMembers>
<the con>
</selectedMembers>
. . . .
 </Ten_Control>
Các thẻ hỗ trợ
Tên thẻ Nội dung
1 imageValueType Thiết lập kiểu kích thước của dòng. Giá trị có thể nhận là 
số hoặc chuỗi.
+ 0 hoặc AutoSize: Độ rộng tự động
+ 1 hoặc Absolute: Độ rộng tuyệt đối.
+ 2 hoặc Percent: Tương đối theo phần trăm của các 
dòng
+ 3 hoặc FileLocation: Chỉ định lưu đường dẫn file ảnh
2 Height Khai báo chiều cao của dòng
3 nMaximumImageSize Kích cỡ lớn nhất của file ảnh được chấp nhận(tính bằng 
bytes), nếu lớn hơn sẽ bị thu nhỏ lại
4 maximumImageDimension Kích thước lớn nhất của file ảnh được chấp nhận(tính 
bằng pixed), nếu lớn hơn sẽ bị thu nhỏ lại
5 selectedMembers Khai báo các property của ảnh cần được cập nhật cho 
các cột của dữ liệu binding khi người dùng chọn 1 ảnh 
từ dropdown. Cụ thể các thẻ con:
- FileName: tên file ảnh
-FileNameWithoutExtension: tên file đã cắt bỏ extension
- FileLocation: tên file gồm cả đường dẫn
- FolderName: tên folder
- FileContent: nội dung file (mảng byte)
33
- FileReadTime/FileReadTimeUTC: thời gian đọc file
- FileWriteTime/FileWriteTimeUTC: thời gian ghi file
- ImageDimension: kích cỡ ảnh
- ImageResolution: độ phân giải
- ImagePixelFormat: định dạng pixel.
Các tagvalue là danh sách tên các cột sẽ được cập nhật 
giá trị.
Ghi chú
- Trường hợp control là 1 cột ở Grid: Để hiển thị ô dữ liệu kiểu ảnh cần khai báo thêm định 
dạng format: img VD: chỉ cần khai báo : <Style>TextAlign:LeftTop;Format:img;</Style>
- Nếu imageValueType=FileLocation thì các property maximumImageDimension và 
nMaximumImageSize sẽ bị bỏ qua.
- Thêm tính năng chụp ảnh từ webcam của máy tính khi mở dropdown của 
BravoPictureInputBox (có thể phụ thuộc vào từng loại máy tính/wc và hệ điều hành). Các 
thuộc tính của ảnh tham khảo từ khai báo thẻ selectedMembers
- Các control BravoOpenFileBox, BravoPictureInputBox, BravoDocInputBox đều có thể nhập 
liệu bằng cách drag files từ Windows Explorer và drop vào control
7.17.BravoRichTextBox
Ý nghĩa
Khai báo các control nhập liệu kiểu text (tương tự như BravoTextBox) nhưng có hỗ trợ thêm các 
tính năng cao cấp hơn khi nhập liệu và hiển thị văn bản như cách định dạng ký tự và đoạn văn.
Cú pháp
 <Ten_Control>
 <ClassName>BravoRichTextBox</ClassName>
 <DataMember>Ten_truong</DataMember>
 <Row>So_thu_tu_dong</Row>
 <Column> So_thu_tu_cột</Column>
. . . .
 </Ten_Control>
Ghi chú
- Các thẻ con hỗ trợ tương tự như control chung.
34
- Có thể sử dụng tính năng xuống dòng khi nhập liệu, hoặc định dạng văn bản bằng cách bôi 
đen văn bản và lựa chọn các tính năng hỗ trợ định dạng văn bản.
- Với các control kiểu này các ký tự đầu tiên không được tự động viết hoa, không tự động cắt 
các khoảng trắng trước ở đầu và cuối như BravoTextBox
7.18.BravoSaveFileBox
Ý nghĩa
Khai báo các control nhập kiểu kiểu mở đường dẫn và lưu thông tin file chọn
Cú pháp
 <Ten_Control>
 <ClassName>BravoSaveFileBox</ClassName>
 <DataMember>Ten_truong</DataMember>
<zDialogFilter>Định dạng file cần lọc</zDialogFilter>
 <Column> So_thu_tu_cột</Column>
. . . .
 </Ten_Control>
Ví dụ
Trên màn hình của chức năng gửi dữ liệu ra đang khai báo ô chọn file:
 <txtPath>
 <ClassName>BravoSaveFileBox</ClassName>
 <zDialogFilter>*.001|*.001|All Files(*.*)|*.*</zDialogFilter>
 <DataMember>Path</DataMember>
 <Column>1</Column>
 </txtPath>
Ghi chú
- Các thẻ con hỗ trợ tương tự như control chung.
7.19.BravoTextBox
Ý nghĩa
Khai báo các control nhập liệu kiểu chuỗi ký tự.
35
Cú pháp
 <Ten_Control>
 <ClassName>BravoTextBox</ClassName>
 <DataMember>Ten_truong</DataMember>
 <Row>So_thu_tu_dong</Row>
 <Column> So_thu_tu_cột</Column>
. . . .
 </Ten_Control>
Các thẻ thường hỗ trợ
Tên thẻ Nội dung
1 autoCorrectOptions Quy định thuộc tính có tự động viết hoa chữ cái đầu hay 
không. Giá trị có thể nhận là 
+ None-0:Không tự động viết hoa chữ cái đầu
+ CapitalizeFirstLetter: Tự động viết hoa chữ cái đầu 
(mặc định)
+ CapitalizeTitle: Viết hoa chữ cái đầu của tất cả các chữ.
2 CharacterCasing Quy định thuộc tính có thể chuyển đổi hiển thị tất cả các 
ký tự viết hoa hay viết thường
+ Normal-0: Dạng ký tự viết thường (chữ cái đầu có thể 
viết hoa hay không phụ thuộc vào khai báo thẻ 
autoCorrectOptions (mặc định)
+ Upper: Tự động viết hoa hết các ký tự
+ Lower: Không viết hoa bất cứ ký tự nào.
3 CharCategory Quy định thuộc tính có thể lọc các ký tự gõ vào (gõ qua 
bàn phím, còn không lọc được nếu thực hiện chức năng 
paste). Các giá trị có thể nhận:
+ Number: Chỉ nhận các ký tự gõ vào là số.
+ Letter: Chỉ nhận các ký tự gõ vào là văn bản 
+ UpperCase: Chỉ nhận các ký tự gõ vào là chữ viết hoa 
(bao gồm cả số)
 …
Ghi chú
- Các thẻ con hỗ trợ tương tự như control chung.
36
- Với các control kiểu này, chương trình sẽ tự động cắt các ký tự trắng ở 2 đầu của chuỗi ký 
tự. Đồng thời ký tự đầu tiên của control hoặc ký tự đầu tiên sau dấu chấm sẽ được tự động 
viết hoa.
7.20.BravoLinkCommand
Ý nghĩa
Khai báo các control để thực hiện một lệnh command nào đó (VD như Click vào sẽ gọi đến một báo 
cáo, hoặc mở ra một màn hình Editor…)
Cú pháp
 <Ten_Control>
 <ClassName>BravoTextBox</ClassName>
 <DataMember>Ten_truong</DataMember>
 <Row>So_thu_tu_dong</Row>
 <Column> So_thu_tu_cột</Column>
<Execute>
 <Ten_Eval />
 </Execute>
. . . .
 </Ten_Control>
Ví dụ
Muốn khai báo hiển thị một control là 1 nút và thực thi một lệnh nào đó (mở báo cáo, mở explorer…) 
thì có thể khai báo 
<linkCommandForm>
 <ClassName>BravoLinkCommand</ClassName>
 <Assembly>Bravo.DataEditor</Assembly>
 <Text>
 <Vietnamese>Khai báo công thức</Vietnamese>
 </Text>
 <Row />
 <Column>0</Column>
 <ColumnSpan>2</ColumnSpan>
 <Execute>
 <EditForm />
 </Execute>
37
 </linkCommandForm>
Trong đó EditForm là Eval được khai báo trong DataSource
Ghi chú:
- Control nút bấm BravoLinkCommand trong DataEditor nếu có binding hoặc nhúng trong các dòng 
của grid thì sẽ gọi evaluator cho các dòng đó (như trước đây), nếu không thì sẽ gọi theo cơ chế của 
link command ở navigator
- Hỗ trợ khai báo ShortcutKeys để người dùng có thể dùng phím tắt kích hoạt evaluator. 
- Hỗ trợ tự động thực hiện evaluator sau mỗi khoảng thời gian với khai báo bAutoExecuteTimer và 
nAutoExecuteInterval 
- Hỗ trợ khai báo allowEditingMode để chỉ định người dùng sẽ chỉ thực hiện được ở chế độ nào 
trong form nhập liệu, ngầm định là All thì khi bấm ở chế độ View sẽ hiển thị hộp thoại xác nhận để 
chuyển sang Edit rồi mới thực hiện. Giá trị như sau:
✓ All: khi click nút ở chế độ View (F3 mở lần đầu) sẽ hiển thị hộp thoại xác nhận để chuyển sang 
Edit rồi mới thực hiện (như các phiên bản trước đây) (Ngầm định).
✓ View: chỉ thực hiện được mở
✓ Edit: chỉ thực hiện được khi sửa 
✓ New: chỉ thực hiện được khi thêm mới
Không hỗ trợ allowEditingMode khi đặt BravoLinkCommand trong grid.
7.21.BravoPassCodeReader
Ý nghĩa
Khai báo các control đọc thông tin của file PassCode
Cú pháp
 <Ten_Control>
 <Assembly>Bravo.LayoutEngine</Assembly>
 <ClassName>BravoPassCodeReader</ClassName>
 <DataMember>Ten_truong</DataMember>
 <Row>So_thu_tu_dong</Row>
 <Column> So_thu_tu_cột</Column> . . . .
 </Ten_Control>
Ví dụ
38
Editor của chức năng Danh sách máy truy cập chương trình đang khai báo ô chọn file PassCode 
như sau:
<Control_Identifier>
 <Row>0</Row>
 <Column>1</Column>
 <Assembly>Bravo.LayoutEngine</Assembly>
 <ClassName>BravoPassCodeReader</ClassName>
 <DataMember>Identifier</DataMember>
 <ColumnSpan>2</ColumnSpan>
 <Dock>Top</Dock>
</Control_Identifier>
7.22.BravoOptionControl
Ý nghĩa
Khai báo các control nhưng chỉ được lựa chọn một giá trị duy nhất dưới dạng các option. Hỗ trợ 
binding với cột kiểu số với giá trị theo thứ tự khai báo trong Controls, bắt đầu từ 0. Nếu dùng các 
giá trị khác thì phải khai báo thẻ <Value> cho từng mục và giá trị phải tương thích với kiểu dữ liệu 
của cột binding.
Cú pháp
 <Ten_Control>
 <ClassName> BravoOptionControl </ClassName>
 <DataMember>Ten_truong</DataMember>
 <Row>So_thu_tu_dong</Row>
 <Column> So_thu_tu_cột</Column>
 <Controls>
 <Tên1>
 <Value>Giá_trị</Value>
 <Text>
<Vietnamese>Giá_trị</Vietnamese>
 </Text>
 </Tên1>
 <Tên2>
 . . .
 </Tên2>
39
. . . .
 </Ten_Control>
Ví dụ:
Màn hình duyệt chứng từ ở chứng từ có khai báo quy trình thì sẽ cho lựa chọn 1 trong 3 giá trị dạng 
Option.
 <OptionApprove>
 <ClassName>BravoOptionControl</ClassName>
 <DataMember>ApprovalStatus</DataMember>
 <Column>1</Column>
 <Controls>
 <Accept>
 <Value>2</Value>
 <Text>
 <Vietnamese>Duyệt</Vietnamese>
 </Text>
 </Accept>
 <Rollback>
 <Value>1</Value>
 <Text>
 <Vietnamese>Trả lại</Vietnamese>
 </Text>
 </Rollback>
…
 </OptionApprove>
7.23.BravoDocInputBox 
Ý nghĩa
Khai báo các control để attach nội dung 1 trong các kiểu file sau: Pdf, Doc, Docx, Xls, Xlsx, Rtf,Txt
Cú pháp
 <Ten_Control>
 <ClassName>BravoDocInputBox</ClassName>
 <DataMember>Ten_truong</DataMember>
 <allowMultiSelect>Gia_tri</allowMultiSelect>
 <Row>So_thu_tu_dong</Row>
40
 <Column> So_thu_tu_cột</Column>
. . .
 </Ten_Control>
Ví dụ
Editor của chức năng nhập công việc ở các tab Công việc ở Explorer của các chứng từ đang khai 
báo ô chọn file Pdf:
 <BravoBPDFFile>
 <ClassName>BravoDocInputBox</ClassName>
 <DataMember>PdfName</DataMember>
 <Column>1</Column>
 <Row>6</Row>
 </BravoBPDFFile>
Ghi chú
- Control dạng này chỉ để attach nội dung 1 trong các kiểu file sau: Pdf, Doc, Docx, Xls, Xlsx, 
Rtf, Txt, csv. Đây là control binding trực tiếp với cột kiểu dữ liệu binary trong bảng, không hỗ 
trợ selectedMembers (nếu muốn khai báo selectedMembers thì dùng BravoOpenFileBox 
hoặc BravoPictureInputBox)
- Control dạng này cho phép chọn mở nhiều file và nén lại thành một file nén Zip duy nhất với 
khai báo allowMultiSelect = ZipAlways - luôn nén thành một file; ZipMultiOnly - chỉ nén thành 
một file khi mở chọn nhiều hơn một file. Có thể kết hợp với evaluator 
BravoFileWriter/BravoFileReader để upload/download nội dung file trên server thay vì lưu
vào CSDL. Các control BravoOpenFileBox, BravoPictureInputBox, BravoDocInputBox đều 
có thể nhập liệu bằng cách drag files từ Windows Explorer và drop vào control
- Các thẻ hỗ trợ tham khảo mô tả ở BravoOpenFileBox.
- Bổ sung khai báo FlowDirection cho BravoOptionControl để tùy chỉnh cách hiển thị các nút 
chọn bên trong 
✓ TopDow: các optioncontrol hiển thị từ trên xuống dưới 
✓ BottomUp: các optioncontrol hiển thị từ dưới lên trên 
✓ LeftToRight: các optioncontrol hiển thị từ trái qua phải
- Thuộc tính openFileMode gồm các giá trị
✓ Hybrid (ngầm định): thì khi người dùng click đúp mở file ở control, nếu là file zip và chỉ 
chưa duy nhất 1 file thì sẽ tự động unzip để mở file trong file zip
✓ ShellOpen thì sẽ luôn mở file zip như trước
✓ QuickView để xem nhanh nội dung file
<BravoBPDFFile> 
41
<ClassName>BravoDocInputBox</ClassName> 
<DataMember>PDFFile</DataMember> 
<openFileMode>ShellOpen</openFileMode>
- Cơ chế đọc/ghi file trên server để đảm bảo tiêu chuẩn an toàn bảo mật. Đọc/ghi file từ thư 
mục gốc được chỉ định bằng tham số hệ thống M_DefaultDirPath, client chỉ được truyền tên 
sub-folder hoặc tên file.
- Hỗ trợ thêm các định dạng file của OfficeXML vaf OpenOffice: 
*.pdf;*.doc;*.docx;*.docm;*.dotx;*.dotm;*.xls;*.xlsx;*.xlsm;*.xltx;*.xltm;*.xlsb;*.xlam;*.csv;*.ppt
;*.pptx;*.pptm;*.ppsx;*.ppsm;*.potx;*.potm;*.ppam;*.sldx;*.sldm;*.xps;*.odt;*.ods;*.rtf;*.xml;*.t
xt
- Thêm khai báo bAllowMultiSelect=True/False để bật/tắt chế độ chọn nhiều file cùng lúc 
- Khai báo zipMode=Always/MultiFiles/UnknownFile để quyết định chế độ nén các file đính 
kèm.
✓ zipMode=Always: luôn nén file đính kèm vào trong file zip
✓ zipMode=MultiFiles: chỉ nén vào file zip nếu có nhiều hơn 1 file đính kèm
✓ zipMode=UnknownFile: khi đính kèm là loại file không được hỗ trợ
BravoDocInputBox khi chỉ đính kèm 1 file thì sẽ lưu nội dung của file, tuy nhiên nếu file đó 
không thuộc các định dạng được hỗ trợ thì có thể sẽ dẫn tới lỗi khi người dùng click mở 
xem file. Ví dụ: file *.dot, *.xlt... Trong trường hợp này nếu zipMode=UnknownFile thì file 
đính kèm không được hỗ trợ sẽ được nén vào trong file zip và người dùng vẫn có thể click 
mở xem file bình thường.
Khai báo cũ allowMultiSelect=None/ZipAlways/ZipMultiOnly sẽ được giữ để tương thích 
với các khai báo trước đây.
✓ Khai báo zZipPasswordMember: Khai báo zZipPasswordMember là tên cột của bảng dữ 
liệu binding chứa mật khẩu cho file zip đính kèm.
7.24. BravoDataServiceTextBox
Ý nghĩa
BravoDataServiceTextBox trong LayoutEngine hỗ trợ tìm thông tin đăng ký doanh nghiệp trong 
nước bằng mã số thuế trên máy chủ Bravo và tự động điền vào dữ liệu đang nhập liệu
Cú pháp
 <Ten_Control>
 <ClassName>BravoDataServiceTextBox</ClassName>
 <Assembly>Bravo.LayoutEngine</Assembly>
 <selectedMembers>
 <Ten_truong> Ten_truong </ Ten_truong >
42
 . . . . . . .
 </selectedMembers>
 <DataMember>Ten_truong</DataMember>
 <Row>So_thu_tu_dong</Row>
 <Column> So_thu_tu_cột</Column>
. . .
 </Ten_Control>
Ví dụ
Editor của chức năng Danh mục đối tượng, ô mã số thuế khai báo
 <txtTaxRegNo>
 <ClassName>BravoDataServiceTextBox</ClassName>
 <Assembly>Bravo.LayoutEngine</Assembly>
 <selectedMembers>
 <Name>Name</Name>
 <Name_English>Name2</Name_English>
 <RegisteredAddress>Address</RegisteredAddress>
 <ContactAddress>BillingAddress</ContactAddress>
 </selectedMembers>
 <DataMember>TaxRegNo</DataMember>
 <Column>1</Column>
 </txtTaxRegNo>
Sau khi gõ mã số thuế hợp lệ vào ô Mã số thuế=> mở dropdown hoặc bấm F4 để tìm và tải thông 
tin đăng ký doanh nghiệp từ server Bravo. Sau khi tải thông tin bấm ‘Chấp nhận’ để tự động điền 
thông tin vào dữ liệu đang nhập hiện thời ở DataEditor.
7.25.BravoScaleReader
Ý nghĩa
Khai báo để đọc và lấy số liệu cân được kết nối (cần khai báo PortName=COM1|COM2... là tên 
cổng kết nối với cân - ngầm định là cổng COM3
Cú pháp
<Ten_Control>
 <Assembly>Bravo.Device</Assembly>
 <ClassName>BravoScaleReader</ClassName>
 <zReceiveDataPattern>Chuoi_khai_bao</zReceiveDataPattern>
 <PortName>Ten_cổng</PortName>
43
<PortNewLine>Chuoi_ky_tu</PortNewLine>
 <PortBaudRate>gia_tri</PortBaudRate>
 <autoStartReading>Gia_tri</autoStartReading>
 <autoStopReading>Gia_tri</autoStopReading>
 <DataMember>Ten_truong</DataMember>
. . . 
 </ Ten_Control>
Ví dụ
Editor của form muốn khai báo 1 control để nhận các giá trị từ số liệu cân của một cổng kết nối đến 
phần mềm cân như hình bên dưới thì khai báo như sau:
 <txtTotalQuantity>
 <Assembly>Bravo.Device</Assembly>
 <ClassName>BravoScaleReader</ClassName>
 <zReceiveDataPattern>\+(?&lt;data&gt;\d{6})</zReceiveDataPattern>
 <PortName>COM5</PortName>
 <PortBaudRate>4800</PortBaudRate>
 <autoStartReading>Manual</autoStartReading>
 <autoStopReading>GetValue</autoStopReading>
 <DataMember>TotalQuantity</DataMember>
 <Anchor>15</Anchor>
 <Column>1</Column>
 <Row>8</Row>
 <ColumnSpan>3</ColumnSpan>
 <RowSpan>4</RowSpan>
 <Style>Format:N0;</Style>
 <nFontScale>4</nFontScale>
 </txtTotalQuantity>
Ghi chú
44
- Các property khai báo nâng cao gồm: PortBaudRate, PortDataBits, PortParity, 
PortStopBits, PortRtsEnable, PortDtrEnable, zReceiveDataPattern, zUnitText,
PortHandshake, readingType, nReadBufferSize, nReadingTimeout, nReceivingDataDelay, 
nClosingPortDelay
- Các khai báo tùy chọn gồm có 
+ autoStartReading : Tự động đọc dữ liệu
✓ Manual: thủ công, người dùng phải bấm nút để đọc dữ liệu cân
✓ GotFocus: khi control got focus sẽ tự động đọc dữ liệu cân (ngầm định)
✓ Startup: khi mở form và hiển thị control sẽ tự động đọc dữ liệu cân
✓ Always: luôn luôn tự động đọc dữ liệu cân khi có thể
+ autoStopReading : Tự động dừng đọc số liệu
✓ Manual: thủ công, người dùng phải bấm nút để dừng đọc và lấy dữ liệu cân
✓ LostFocus: dừng đọc dữ liệu cân khi người dùng chuyển focus sang control 
khác
✓ GetValue: dừng đọc sau khi đã lấy được dữ liệu cân (Ngầm định là giá trị 
kết hợp LostFocus|GetValue)
- Có thể khai báo layout với expr="True" để chỉ định cổng khác nhau theo từng máy. Lưu ý 
về mặt kỹ thuật khi đọc cổng serial kết nối với thiết bị ngoại vi, tại 1 thời điểm chỉ cho phép 
1 kết nối duy nhất, để sử dụng cần có kiến thức cơ bản về cổng serial để khai báo đúng thì 
control mới hoạt động được.
- Property bAutoUpdateValue cho BravoScaleReader để tự động cập nhật giá trị cân đọc 
được vào cột binding (nhận giá trị true/false). PortNewLine cho BravoScaleReader để khai 
báo ký tự ngắt dòng phù hợp với một số loại cân
7.26.BravoOpenServerDirBox
Ý nghĩa
Khai báo để chọn đường dẫn từ server
Cú pháp
 <Ten_Control>
 <ClassName>BravoOpenServerDirBox</ClassName>
 <Assembly>Bravo.LayoutEngine</Assembly>
 <DataMember>Ten_truong</DataMember>
 <Row>So_thu_tu_dong</Row>
 <Column> So_thu_tu_cột</Column>
45
. . .
 </Ten_Control>
7.27. BravoOnlineSourceViewer
Ý nghĩa
- Dùng để xem một clip từ youtobe hoặc mở một trang Web
Cú pháp
 <Controls>
 <Ten_Control>
 <Assembly>Bravo.Device</Assembly>
 <ClassName>BravoOnlineSourceViewer</ClassName>
 <Url>Địa chỉ Web hoặc đoạn video youtobe </Url>
 <bScrollBarsEnabled>True</bScrollBarsEnabled>
 <onlineSource>Web/YouTubeVideo</onlineSource>
 <Dock>Fill</Dock>
 <Row>0</Row>
 <Column>0</Column>
 </Ten_Control>
 </Controls>
Ví dụ
- Tính năng được ứng dụng trong các trường hợp trên các màn hình thiết kế được 
show ở các màn hình lớn có những khoảng thừa, người dùng muốn chèn các video 
quảng cáo sản phẩm của họ. Hoặc các bài toán liên kết với thanh toán ngân hàng 
điện tử.
46
Ghi chú
- bScrollBarsEnabled: khai báo lựa chọn có hiển thị thanh cuận hay không
- onlineSource: khai báo nguồn dữ liệu từ YouTobe hay Web, giá trị mặc định là 
YouTobe
7.28. BravoPictureEditor
Ý nghĩa
- Để chỉnh sửa ảnh có hỗ trợ binding dữ liệu cột kiểu binary, cho phép người dùng 
xoay, lật ảnh, cắt vùng lựa chọn, tăng giảm kích cỡ, chỉnh độ sáng/tương phản/tông 
mầu/trong suốt, lưu ra file, in. Người dùng có thể dán ảnh từ clipboard, kéo thả ảnh 
từ Windows Explorer, hoặc có thể gán giá trị bằng evaluator
Cú pháp
 <Controls>
 <Ten_Control>
<Column>1</Column>
 <ClassName>BravoPictureEditor</ClassName>
 <DataMember>Tên bảng.Tên_cột</DataMember>
 <Dock>Fill</Dock>
 </Ten_Control>
 </Controls>
7.29.BravoDialogDataButton
Ý nghĩa
- Là một dạng button hỗ trợ data binding với khai báo dialogType nhận các giá trị 
✓ OpenFile - mở hộp thoại chọn file; 
✓ OpenFolder: mở hộp thoại chọn thư mục; 
✓ SaveFile - mở hộp thoại lưu file; 
✓ MessageBox – mở hộp thoại thông báo; giá trị người dùng chọn sẽ được lưu vào Value 
(khai báo DataMember).
Cú pháp
 <Controls>
 <Ten_Control>
 <ClassName>BravoDialogDataButton</ClassName>
 <dialogType>OpenFile/SaveFile/MessageBox</dialogType>
 <bAllowMultiSelect>True/False</bAllowMultiSelect>
47
<zDialogFilter>Định dạng file </zDialogFilter>
<DataMember>Tên_cọt</DataMember>
 <Text>
 <Vietnamese>Caption của nút</Vietnamese>
 </Text>
 <Column>1</Column>
 </Ten_Control>
 </Controls>
Ví dụ: Tham khảo ví dụ trong mục BravoPictureEditor
7.30. BravoPhysicalInventoryReader
Ý nghĩa
- Hỗ trợ đọc dữ liệu từ máy kiểm kê kho, hiện thời mới chỉ hỗ trợ 1 model là CipherLab.
7.31. BravoCodeInputBox
Ý nghĩa
- Cho phép người dùng nhập văn bản đa dạng trên 1 ô nhập liệu 
VD: sử dụng cho control nhập mã vạch ở màn hình hóa đơn bán lẻ
Thêm khai báo <selectedMembers><ValueTiming> cho BravoCodeInputBox, khi đọc mã vạch thời 
gian từ lúc bắt đầu nhận giá trị cho tới lúc kết thúc với phím Enter sẽ được tính và cập nhật vào các 
cột khai báo trong <ValueTiming>. Khi nhận focus và giá trị trống thì control sẽ có mầu nền khác để 
người dùng dễ nhận biết khi quét mã vạch
7.32. BravoButton
Ý nghĩa
- Dạng nút để thực hiện các sự kiện
- Hỗ trợ các khai báo FlatBorderSize, FlatBorderColor, FlatMouseDownBackColor, 
FlatMouseOverBackColor, FlatCheckedBackColor
- Sử dụng khai báo bCloseFormOnClicked sau khi người dùng bấm nút
7.33. BravoWebView /BravoOauth2WebView
Ý nghĩa
- Dùng để xem một clip từ youtobe hoặc mở một trang Web
- Sử dụng Microsoft Edge WebView2 (https://developer.microsoft.com/en-us/microsoftedge/webview2) hỗ trợ HTML, CSS, JavaScript tốt hơn so với 
48
control BravoOnlineSourceViewer và BravoOauth2ResponseTypeCode, máy tính cần phải cài 
đặt Microsoft Edge WebView2 Runtime và thư viện WebView trong phần cài đặt chương trình ở
BravoTools
Ví dụ
BravoWebView BravoOauth2WebView
Thêm mới BravoWebView trong Device
<WebView>
<Assembly>Bravo.Device</Assembly>
<ClassName>BravoWebView</ClassName>
<Url>https://goo.Gl/maps/qWCpbhSoCzavnKKb7</
Url>
<OnlineSource>Web</onlineSource>
<Row />
<Column>0</Column>
<ColumnSpan>3</ColumnSpan>
<Anchor>15</Anchor>
</WebView>
<Oauth2WebView> 
<Assembly>Bravo.Device</Assembly> 
<ClassName>BravoOauth2WebView</ClassNa
me> 
<ZAuthUrl></zAuthUrl> 
<DataMember>Respone</DataMember> 
<Row /> 
<Column>0</Column> 
ColumnSpan>3</ColumnSpan> 
<Anchor>15</Anchor> 
</Oauth2WebView>
7.34. BravoDataCollectionControl
Ý nghĩa
Thay thế cho các control BravoListControl, BravoDataListControl với việc áp dụng kỹ thuật 
dequeue reuseable control để tăng tốc độ vẽ, giảm lag.
7.35. BravoScheduleControl
Ý nghĩa
BravoScheduleControl đáp ứng các bài toán về cập nhật tiến độ với việc sử dụng 2 bảng grid source 
và schedule source, hỗ trợ resizing bar, moving bar, html draw, expression cho các auto columns, 
stacked style, overlap style, status bar... (Device).
7.36. BravoLookupList
- Tương tự BravoLookupBox nhưng sẽ hiển thị danh sách dữ liệu trực tiếp trên grid thay vì phải 
bấm nút dropdown
- Khi cuộn xuống cuối cùng danh sách sẽ tự động tải thêm n bản ghi (n là khai báo số bản ghi trên 
1 trang).
Ngoài ra có hỗ trợ lấy nguồn dữ liệu từ bảng thủ tục trả về hoặc views tạo trên layout.
7.37. BravoCheckList
Ý nghĩa: Tương tự như BravoOptionControl, có hỗ trợ thêm transparent để sử dụng trên Dashboard.
Cú pháp:
<Controls>
 <Ten_Control>
 <ClassName>BravoCheckList/ClassName>
49
Tên thẻ Ý nghĩa
DataMember Khai báo tên cột DataMember.
checkAppearance
(Checkbox/Button)
Khai báo kiểu hiển thị của Checklist là dạng checkbox hay button, 
mặc định là checkbox.
bAllowSelectMultiValue
(True/False)
Khai báo cho phép chọn nhiều hay chọn một, mặc định là True.
bShowCheckAll
(True/False)
Khai báo có hiển thị nút check tất cả hay không, mặc định là True, 
có tác dụng khi bAllowSelectMultiValue = True.
Text Khai báo text cho nút check tất cả (bShowCheckAll = True).
FlowDirection LeftToRight: hiển thị các controls từ trái sang phải.
RightToLeft: hiển thị các controls từ phải sang trái.
TopDown: hiển thị các controls từ trên xuống dưới.
BottomUp: hiển thị các controls từ dưới lên trên.
Lưu ý: Chỉ có tác dụng khi checkAppearance = Button.
Controls Khai báo Value và Text cho Controls tương tự như 
BravoOptionControl (Tham khảo tài liệu Editor).
FlatBackColor Chỉ có tác dụng khi checkAppearance = Button.
FlatCheckedBackColor Chỉ có tác dụng khi checkAppearance = Button.
FlatMouseDownBackColor Chỉ có tác dụng khi checkAppearance = Button.
FlatBorderSize Chỉ có tác dụng khi checkAppearance = Button.
FlatBorderColor Chỉ có tác dụng khi checkAppearance = Button.
FlatMouseOverBackColor Chỉ có tác dụng khi checkAppearance = Button.
7.38. BravoHtmlEditor
Ý nghĩa: Hỗ trợ control nhập liệu html có hỗ trợ HTML5, CSS3. Hỗ trợ binding dữ liệu.
Cú pháp:
 <txtContent>
 <Assembly>Bravo.HtmlEditor</Assembly>
 <ClassName>BravoHtmlEditor</ClassName>
 <DataMember>Content</DataMember>
 <autoCorrectOptions>None</autoCorrectOptions>
 <Row>0</Row>
 <Column>1</Column>
 <EditorMode>Preview</EditorMode>
 <Multiline>True</Multiline>
 <RowSpan>2</RowSpan>
 <Dock>Fill</Dock>
 </txtContent>
Tên thẻ Ý nghĩa
DataMember Khai báo tên cột DataMember.
50
EditorMode Khai báo kiểu của của ô nhập liệu
- Design (Default): Hiện toolbar thiết kế giao diện
- HTMLEdit: Màn hình thiết kế bằng các thẻ HTML
- Preview: Chỉ hiển thị nội dung của trường dữ liệu
8. ColumnSpan
Ý nghĩa
Dùng để khai báo control hiện thời có thể nằm chồng lên mấy cột.
Cú pháp
 <Ten_Control>
 <ColumnSpan>So_cot</ColumnSpan>
. . . .
 </Ten_Control>
Ví dụ
Editor danh mục đối tượng đang khai báo: 
<txtName>
 <ClassName>BravoTextBox</ClassName>
 <DataMember>Name</DataMember>
 <Column>1</Column>
 <ColumnSpan>3</ColumnSpan>
 <Anchor>Top,Bottom,Left,Right</Anchor>
 <Row>1</Row>
 </txtName>
Thì cột Tên đối tượng sẽ được tràn ở cột 1,2,3
Ghi chú
- Số cột khai báo được hiểu là số cột trong đối tượng mà control được đặt vào. Vì control hoàn 
toàn có thể được khai báo lồng trong nhau
- Số cột luôn được mặc định là 1.
51
9. Controls
Ý nghĩa
Dùng để khai báo định nghĩa các control hoặc nhóm các control ở bên trong. Việc định nghĩa các 
control trong thẻ này có thể được sử dụng ở rất nhiều nơi. Có thể các control được khai báo trong 
navigator/ panelEditor hoặc panelCommand trong Editor… Các control có thể được khai báo lồng 
nhau nhưng về cơ bản đều hỗ trợ tất cả các thẻ chung khi định nghĩa control. Tuy nhiên còn tùy 
theo ClassName mà các thẻ được hỗ trợ khác nhau
10. DataMember
Ý nghĩa
Dùng để khai báo tên trường dữ liệu hoặc bảng/view dữ liệu mà control hiển thị
Cú pháp
 <Ten_Control>
 <DataMember>Ten_Truong/Bảng/View</DataMember>
. . . .
 </Ten_Control>
Ghi chú
- Thẻ này là không bắt buộc khi định nghĩa 1 control, chỉ khi nào định nghĩa các control liên 
quan đến hiển thị dữ liệu mới cần khai báo. 
- Riêng các control là các cột ở Grid (các control được định nghĩa trong thẻ Cols) thì chương 
trình sẽ lấy luôn tên control là tên DataMember
11. Name
Ý nghĩa
Dùng để khai báo tên trường dữ liệu hoặc bảng/view dữ liệu mà control hiển thị
Cú pháp
 <Ten_Control>
 <Name>Ten_Truong/Bảng/View</Name>
52
. . . .
 </Ten_Control>
Ghi chú
- Thẻ này là không bắt buộc khi định nghĩa 1 control, chỉ khi nào định nghĩa các control liên 
quan đến hiển thị dữ liệu mới cần khai báo. 
- Riêng các control là các cột ở Grid (các control được định nghĩa trong thẻ Cols) thì không 
cần khai báo thẻ Name để chỉ định trường dữ liệu mà chương trình sẽ lấy luôn tên control là 
tên cột. 
- Chú ý có thể khai báo biểu thức nhúng để định nghĩa tên trường. 
VD:Trong màn hình của chức năng Khai báo tham số hệ thống, cột Nội dung (VarText) sẽ
được hiển thị theo ngôn ngữ hiện tại của chương trình (có nghĩa là nếu đang ở giao diện 
tiếng Việt thì sẽ hiển thị cột VarGroupName, nếu là giao diện tiếng Anh sẽ hiển thị cột 
VarGroupName_English … Để làm được điều đó cần khai báo:
<Cols>
 <VarText>
 <Name expr="True">{=NAMEBYLANG('VarText')}</Name>
12. Pages
Ý nghĩa
Dùng để khai báo các trang trên màn hình. Trong mỗi một trang con được khai báo trong thẻ này lại 
có thể tiếp tục khai báo các control khác.
Cú pháp
 <Ten_Control>
 <Pages>
<Ten_Pages1>
<các thẻ khai báo cho control>
</Ten_Pages1>
<Ten_Pages2>
<các thẻ khai báo cho control>
</Ten_Pages2>
. . . .
</Pages>
53
. . . .
 </Ten_Control>
Ví dụ
Editor của danh mục vật tư phân hiển thị các thông tin của vật tư theo từng trang.
 <BravoTabControl>
 <Row>0</Row>
 <Column>0</Column>
 <AutoSize>True</AutoSize>
 <Pages>
 <GeneralInfo>
 <Text>
 <Vietnamese>Thông tin chung</Vietnamese>
 <English>General information</English>
 </Text>
 . . . . . . . 
 </GeneralInfo>
 <DetailInfo>
 <Text>
 <Vietnamese>Thuộc tính</Vietnamese>
 <English>Properties</English>
 </Text>
 . . . . . . . 
 </DetailInfo>
 . . . . . . . 
 </Pages>
 </BravoTabControl>
Ghi chú
Chỉ hỗ trợ thẻ này cho các control được khai báo trong thẻ <Controls> của panelEditor
13. RowSpan
Ý nghĩa
Dùng để khai báo control hiện thời có thể nằm chồng lên mấy dòng.
54
Cú pháp
 <Ten_Control>
 <RowSpan>So_dòng</RowSpan>
. . . .
 </Ten_Control>
Ví dụ
Editor của phiếu thu đang khai báo ô Diễn giải:
 <txtDescription>
 <autoCorrectOptions>None</autoCorrectOptions>
 <ClassName>BravoTextBox</ClassName>
 <DataMember>Description</DataMember>
 <Column>1</Column>
 <Multiline>True</Multiline>
 <Anchor>Top,Bottom,Left,Right</Anchor>
 <RowSpan>2</RowSpan>
 </txtDescription>
Thì ô Diễn giải sẽ được tràn thành 2 dòng
Ghi chú
- Số dòng khai báo được hiểu là số dòng trong đối tượng mà control được đặt vào. Vì control hoàn 
toàn có thể được khai báo lồng trong nhau
- Số dòng luôn được mặc định là 1.
14. Style
Ý nghĩa
Dùng để khai báo định dạng của control. Mỗi một thuộc tính của control có thể được khai báo bằng 
thẻ riêng biệt hoặc khai báo chung trong thẻ Style này. ( VD Font, fontStyle, ForeColor…)
Cú pháp
 <Ten_Control>
 <Style>Khai báo giá trị các thuộc tính của control</Style>
55
. . . .
 </Ten_Control>
Ví dụ
Trường hợp muốn khai báo định dạng cột có đánh số thứ tự tự động trên Grid thì khai báo: 
<Order1>
<Width>36</Width> 
<Style>TextAlign:CenterTop;ComboList:"Normal:1;Subtotal0:1;GrandTotal:1;";</Style>
</Order1>
Trong đó: 
+ Normal:1: Có đánh số thứ tự các dòng chi tiết hay không
+ Subtotal0:1: Quy định việc điều khiển có đánh số thứ tự của dòng nhóm hay không. 
+ GrandTotal:0: Khai báo việc có đánh số thứ tự dòng tổng cộng của báo cáo hay không
Ghi chú
- Mỗi một thuộc tính của control cách nhau dấu chấm phẩy (;), các thuộc tính đều được gọi 
nhớ khi khai báo và tương đối dễ hiểu nên không nêu cụ thể nữa.
- Có thể khai báo biểu thức khi khai báo thẻ này. 
VD: Trên Editor các chứng từ đang khai báo định dạng cho ô trạng thái chứng từ như sau: 
<Style>IIF(Post_SoCai=False OR
IsCancelled=True,'ForeColor:Red;','ForeColor:Blue;');</Style>
- Chú ý trường hợp có khai báo biểu thức nhúng thì phải khai báo Expr = “True”.
- Bắt đầu từ Ver 4.1.1.0 có hỗ trợ thêm khai báo Format:link; trong thẻ Style để hiển thị và 
click Link tại một cột. Khi sử dụng cell type Format:link; thì người dùng vẫn có thể sửa đổi 
giá trị link ở dạng text
- Trường hợp muốn khai 
15. Anchor
Ý nghĩa
Dùng để cố định control vào các cạnh của khung chứa.
Cú pháp
 <Ten_Control>
 <Anchor>Danh_sách_gia_tri</Anchor>
. . . .
 </Ten_Control>
Ghi chú
- Giá trị có thể nhận của thẻ 
56
 + None - 0: không neo cố định control
 + Top - 1: Neo control lên trên cùng
 + Bottom - 2: Neo control xuống dưới cùng
 + Left - 4: Neo control sang bên trái
 + Right - 8 : Neo control sang bên phải.
- Khi khai báo danh sách nhiều giá trị người dùng có thể khai báo: 
<Anchor>Top,Bottom,Left,Right</Anchor>
Hoặc có thể khai báo <Anchor>15</Anchor>. Tức là Top + Bottom+Left+Right = 1+2+4+8 = 15
16. BackColor
Ý nghĩa
Dùng để xác định màu nền của control.
Cú pháp
 <Ten_Control>
 <BackColor>Gia_tri</BackColor>
. . . .
 </Ten_Control>
Ghi chú
- Giá trị có thể nhận của thẻ là tên tương ứng với các màu. Khi khai báo thẻ này, chương trình 
có show ra các giá trị tương ứng với từng màu để người dùng lựa chọn một cách thuận tiện.
- Thuộc tính này của control có thể khai báo thẻ này, nhưng cũng có thể kết hợp khai báo 
trong thẻ Style
17. BorderStyle
Ý nghĩa
Dùng để xác định kiểu khung viền của control
Cú pháp
 <Ten_Control>
 <BorderStyle>Gia_tri</BorderStyle>
. . . .
57
 </Ten_Control>
Ghi chú
- Giá trị có thể nhận của thẻ là:
✓None: Không có khung viền (giá trị mặc định)
✓FixedSingle: Có khung viền kiểu đường kẻ đơn
✓Fixed3D: Có khung viền kiểu đường kẻ 
18. Enabled
Ý nghĩa
Dùng để xác định trạng thái của control bị mờ đi, không typing được.
Cú pháp
 <Ten_Control>
 <Enabled>Gia_tri</Enabled>
. . . .
 </Ten_Control>
Ghi chú
- Giá trị có thể nhận của thẻ là:
+ True: Không mờ và vẫn typing được (giá trị mặc định)
+ False: Control bị bờ và không tác động được 
- Ngoài ra người dùng có thể sử dụng cách viết biểu thức nhúng để khai báo giá trị cho thẻ 
này. Giá trị của biểu thức trả về cũng là True hoặc False (chú ý phải khai báo Attribute Expr 
=”True” để chương trình dịch biểu thức trong dấu ngoặc nhọn.
VD: Editor của các chứng từ đang khai báo ô tỷ giá ở đầu phiếu sẽ được gõ khi ô mã tiền tệ 
khác với đồng tiền hạch toán.
 <txtExchangeRate>
 <ClassName>BravoNumericInputBox</ClassName>
 <DataMember>ExchangeRate</DataMember>
 <Column>2</Column>
 <Style>Format:N2;</Style>
 <Row>0</Row>
 <Enabled expr="True">{=CurrencyCode&lt;&gt;CONFIG('M_Ma_Tte0')}</Enabled>
 <Anchor>Top,Right</Anchor>
58
 </txtExchangeRate>
19. Font
Ý nghĩa
Khai báo để xác định font chữ của control.
Cú pháp
 <Ten_Control>
 <Font>Ten_font_chữ, Cỡ_chữ,Style</Font>
. . . .
 </Ten_Control>
Ghi chú
- Tham số tên font chữ tương ứng với các Font chữ như trong Word, Style có thể là các thuộc 
tính đậm/ nhạt/ nghiêng…Ví dụ: <Font>Arial,19,style=Bold</Font>
- Thuộc tính này của control có thể khai báo thẻ Font, nhưng cũng có thể kết hợp khai báo 
trong thẻ Style. VD: <Style>Font:"Arial Black",11pt,;</Style>
20. fontStyle
Ý nghĩa
Khai báo để xác định định dạng hiển thị của dữ liệu ở control.
Cú pháp
 <Ten_Control>
 <fontStyle>Gia_tri</fontStyle>
....
 </Ten_Control>
Ghi chú
- Giá trị có thể nhận của thẻ:
+ Regular: Hiển thị thông thường
+ Bold: In đậm
+ Italic: In nghiêng
59
+ Underline: Gạch chân dữ liệu
+ Strikeout: Gạch ngang thân dữ liệu.
21. ForeColor
Ý nghĩa
Khai báo để xác định màu của dữ liệu hiển thị của control.
Cú pháp
 <Ten_Control>
 <ForeColor>Ten_màu</ForeColor>
. . . .
 </Ten_Control>
Ghi chú
- Giá trị có thể nhận của thẻ là tên tương ứng với các màu. Khi khai báo thẻ này, chương trình 
có show ra các giá trị tương ứng với từng màu để người dùng lựa chọn một cách thuận tiện.
22. ImageAlign
Ý nghĩa
Dùng để khai báo căn chỉnh dữ liệu hiển thị của control với hiển thị dữ liệu kiểu ảnh
Cú pháp
 <Ten_Control>
 <ImageAlign>Gia_tri</ImageAlign>
....
 </Ten_Control>
Ghi chú
- Giá trị có thể nhận của thẻ là:
+ LeftCenter: Dữ liệu căn bên trái (là giá trị mặc định với kiểu dữ liệu là ký tự, ngày…)
+ RightCenter: Dữ liệu căn bên phải (là giá trị mặc định với kiểu dữ liệu là kiểu số)
+ CenterCenter: Dữ liệu căn giữa.
60
- Thuộc tính này của control có thể khai báo thẻ ImageAlign, nhưng cũng có thể kết hợp khai 
báo trong thẻ Style. VD: Explorer danh mục tài khoản cột Tích theo dõi ngoại tệ đang khai 
báo:
<Style>TextAlign:RightTop;ImageAlign:CenterCenter;DataType:System.Boolean;</Style>
- Thì kiểu hiển thị dữ liệu là Checkbox và hình nút tích được hiển thị căn giữa của cột.
23. Margin
Ý nghĩa
Dùng để khai báo khoảng cách của control đến các mép lề (được tính bằng đơn vị pixels).
Cú pháp
 <Ten_Control>
 <Margin>Left,Top,Right,Bottom</Margin>
. . . .
 </Ten_Control>
Ví dụ
Editor của các chứng từ phần <panelParent> hoặc <panelSummary> đang khai báo các chỉ số này 
để căn lề cho cá đối tượng ở phần Parent và Summary. 
VD: Trong <panelParent> đang khai báo <Margin>20,5,7,2</Margin>
24. MaximumSize.
Ý nghĩa
Dùng để khai báo cỡ lớn nhất của control (được tính bằng đơn vị pixels).
Cú pháp
 <Ten_Control>
 <MaximumSize>tung độ, hoành độ</MaximumSize>
. . . .
 </Ten_Control>
Ví dụ
61
Editor của phiếu Lắp ráp phần đầu phiếu có Grid nhập thông tin của vật tư nhập (chỉ hiển thị khi mã 
vật tư nhập có tích theo dõi chi tiết các tính chất của vật tư). Khi đó khai báo xác định độ lớn tối đa 
của Grid này để không vượt quá chiều rộng các cột ở đầu phiếu. Cụ thể trong <ItemReceiptInfo> 
đang khai báo : 
<ItemReceiptInfo>
 <Row />
 <Column>0</Column>
 <ColumnSpan>4</ColumnSpan>
 <RowSpan>2</RowSpan>
 <MaximumSize>2000, 135</MaximumSize>
 <Assembly>Bravo.DataEditor</Assembly>
 <ClassName>BravoGridContainer</ClassName>
 <Visible expr="True">{=!EMPTY(VLOOKUP(ItemReceipt,_PhysicalInventory))}</Visible>
</ItemReceiptInfo>
Ghi chú
Thẻ này thường được sử dụng trong các thiết kế Grid
25. MinimumSize
- Dùng để khai báo cỡ bé nhất của control (được tính bằng đơn vị pixels).
- Cú pháp và cách thức sử dụng tương tự như thẻ MaximumSize. Vui lòng tham khảo các tài 
liệu liên quan.
26. nFontScale
Ý nghĩa
Dùng để khai báo tỷ lệ font hiển thị dữ liệu của control so với tỷ lệ chuẩn hiện tại
Cú pháp
 <Ten_Control>
 <nFontScale>tỷ_lệ</nFontScale>
. . . .
 </Ten_Control>
Ví dụ
62
Editor của phiếu Hóa đơn bán lẻ đang khai báo ô Tên của vật tư ở đầu phiếu <txtItemName>
đang khai báo <nFontScale>1.5</nFontScale> thì dữ liệu hiển thị ở ô tên vật tư sẽ gấp 1,5 lần cỡ 
chữ bình thường ở các ô khác.
27. Size
Ý nghĩa
Dùng để khai báo cỡ của control (được tính bằng đơn vị pixels).
Cú pháp
 <Ten_Control>
 <Size>tung độ, hoành độ</Size>
. . . .
 </Ten_Control>
Ghi chú
Thẻ này thường được sử dụng trong các thiết kế báo cáo biểu đồ.
28. TextAlign
Ý nghĩa
Dùng để khai báo căn chỉnh dữ liệu hiển thị của control với dữ liệu kiểu Text
Cú pháp
 <Ten_Control>
 <TextAlign>Gia_tri</TextAlign>
. . . .
 </Ten_Control>
Ghi chú
- Giá trị có thể nhận của thẻ là:
+ Left: Dữ liệu căn bên trái (là giá trị mặc định với kiểu dữ liệu là ký tự, ngày…)
+ Right: Dữ liệu căn bên phải (là giá trị mặc định với kiểu dữ liệu là kiểu số)
+ Center: Dữ liệu căn giữa.
63
- Thuộc tính này của control có thể khai báo thẻ TextAlign, nhưng cũng có thể kết hợp khai 
báo trong thẻ Style
29. Visible
Ý nghĩa
Dùng để xác định trạng thái ẩn hiện của control.
Cú pháp
 <Ten_Control>
 <Visible>Gia_tri</Visible>
. . . .
 </Ten_Control>
Ghi chú
- Giá trị có thể nhận của thẻ là:
+ True: Không bị ẩn (giá trị mặc định)
+ False: Control bị ẩn
- Ngoài ra người dùng có thể sử dụng cách viết biểu thức nhúng để khai báo giá trị cho thẻ 
này. Giá trị của biểu thức trả về cũng là True hoặc False (chú ý phải khai báo Attribute Expr 
=”True” để chương trình dịch biểu thức trong dấu ngoặc nhọn.
VD: Editor của danh mục tài khoản đang khai báo ẩn hiện Grid nhập chi tiết thông tin tài 
khoản ngân hàng theo điều kiện tài khoản ngân hàng. Khi đó trong BravoGridContainer 
đang khai báo:
<Visible expr="True">{=BankAccount=1 OR Code LIKE '112%'}</Visible>
- Chú ý. Việc thiết lập trạng thái ẩn hiện của controls ngoài việc sử dụng thẻ này, người dùng 
có thể sử dụng Eval để thiết lập linh hoạt hơn theo các điều kiện thay vì chỉ có thể lựa chọn 
True/False (tham khảo mục Eval : BravoEvaluator)
30. ReadOnly
Ý nghĩa
Dùng để xác định trạng thái chỉ hiển thị dữ liệu, không sửa dữ liệu của control.
Cú pháp
 <Ten_Control>
64
 <ReadOnly>Gia_tri</ReadOnly>
. . . .
 </Ten_Control>
Ghi chú
- Giá trị có thể nhận của thẻ là:
+ True: Không cho sửa dữ liệu
+ False: Cho sửa dữ liệu (giá trị mặc định)
- Thẻ này tác dụng tương tự như Enabled= False nhưng khi Tab con trỏ vẫn chọn, còn 
Enabled = False thì con trỏ không chọn đối tượng khi tab qua
31. TabStop
Ý nghĩa
Dùng để xác định trạng thái con trỏ có dừng lại ở control hay không khi ấn phím Tab hoặc Enter
Cú pháp
 <Ten_Control>
 <TabStop>Gia_tri</TabStop>
. . . .
 </Ten_Control>
Ghi chú
- Giá trị có thể nhận của thẻ là:
+ True:Có chọn control khi Tab hoặc Enter(giá trị mặc định)
+ False: Không chọn
32. bDisableClipboardUpdated
Ý nghĩa
Cấm sử dụng chức năng phím để copy dữ liệu (gồm Ctrl+C, Ctrl+V, Ctrl+X)
Cú pháp
<bDisableClipboardUpdated>True</bDisableClipboardUpdated>
65
F. GRID
Grid được hiểu là một màn hình bảng lưới để hiển thị hoặc nhập liệu. Do Grid cũng được hiểu là 1 
control nên các thuộc tính và các khai báo tương tự như một control thông thường
1. Một form không cố định 1 Grid mà không hạn chế khai báo, Grid cũng được khai báo ClassName 
và DataMember như một control thông thường. Để khai báo 1 Grid chỉ dùng 2 ClassName sau:
- BravoEditingGrid: Chỉ có 1 Grid nhập liệu thông thường.
VD: Editor của danh mục đối tượng đang khai báo:
<Assembly>Bravo.DataEditor</Assembly>
<ClassName>BravoEditingGrid</ClassName>
- BravoGridContainer: Hiển thị nhiều Grid trên Form, có thể khai báo Grid mẹ và Grid con hiển 
thị Grid theo chế độ mẹ con nhờ khai báo mối quan hệ Relation trong DataSource. 
2. Grid trên Editor hỗ trợ có thể thao tác nhóm dữ liệu, sắp xếp, tổng cộng… bằng cách click chuột 
phải và lựa chọn các đầu mục tương ứng. Khi người dùng sắp xếp dữ liệu và lưu lại, chương 
trình sẽ giữ nguyên thứ tự săp xếp trước khi người dùng lưu.
3. Chế độ thay đổi kiểu của control theo 1 điều kiện nào đó. VD: Trên màn hình Editor của Chính 
sách khuyến mãi bán lẻ có cột Mã ở Grid sẽ thay đổi tùy thuộc vào cột Loại chiết khấu.
4. Trường hợp khai báo Sum cho các cột: Hỗ trợ thêm khai báo loại trừ các cột Sum hoặc chỉ Sum 
các cột nào đó, hỗ trợ thêm khai báo Expr để lấy công thức tính giá trị cho các cột khi Sum để
xử lý các trường hợp tính tỷ lệ % ở các dòng tổng cộng.
5. Hỗ trợ Grid hiển thị theo kiểu GrantChart (Dựng cột chia khoảng thời gian từ ngày nào đến ngày 
nào, và chỉ áp dụng cho phần hiển thị)
VD: Explorer nếu muốn dựng cột chia thời gian theo cột DocDate và FinishedDate có thể khai 
báo:
<ganttBarColorType>Default</ganttBarColorType>
<gridMode>GanttChart</gridMode>
<zBarColorMember>CustomerName</zBarColorMember>
<zStartTimeMember>DocDate</zStartTimeMember>
<zEndTimeMember>FinishedDate</zEndTimeMember>
<zDisplayTextMember>CustomerName</zDisplayTextMember>
<showDataLabel>Outside</showDataLabel>
<nTimeScaleLimit>62</nTimeScaleLimit>
66
6. Hỗ trợ khai báo cột HighPerLink (mở đường link khi click vào cột đó): sử dụng khai báo 
<bIsLink>True</bIsLink> cho control.
1. Cols
Ý nghĩa
Khai báo định nghĩa các cột trong Grid.
Cú pháp
<Cols>
 <Ten_Cot>
 <Editor>
 <bindingMembers>
. . . 
 </bindingMembers>
 <ClassName>Kiểu_Dữ liệu</ClassName>
 <LookupKey>Tên_Lookup</LookupKey>
 . . . 
 </Editor>
 <Width>Giá trị</Width>
 <Row>Giá trị</Row>
 <Column>Giá trị</Column>
 <Rows>
 <Row_0>
. . .
 </Row_0>
 </Rows>
 </Ten_Cột
. . . .
 </ Cols >
Danh sách thẻ
Tên thẻ Nội dung
1 Editor Khai báo kiểu nhập liệu của cột, các sử dụng các thẻ tham 
khảo chi tiết trong phần tài liệu mô tả cách khai báo 
Controls của Editor
67
2 With Khai báo độ rộng của cột, giá trị nhận là kiểu số, đơn vị 
tính Pixcel
3 Row Khai báo dòng hiển thị 
4 Column Khai báo cột hiển thị
Chú ý
- Tên Cols là tên trường trong CSDL mà không cần khai báo DataMember cho cột nữa.
- Chú ý trường hợp khai báo thay đổi kiểu của cột theo một điều kiện nào đó. 
VD: màn hình Editor của Chính sách khuyến mãi bán lẻ đang có khai báo cột ItemCode sẽ thay 
đổi tùy thuộc vào giá trị của ô Loại chiết khấu. Nếu loại chiết khấu là ItemCode-> thì cột ItemCode 
sẽ lookup đến danh mục vật tư, Nếu loại chiết khấu là ItemGroupCode thì cột ItemCode sẽ lookup 
đến danh mục nhóm hàng…..
2. DataMember
Ý nghĩa
Khai báo tên bảng/view dữ liệu hiển thị của Grid. Chính là tên các bảng được định nghĩa trong 
DataSource. Chương trình sẽ căn cứ vào các khai báo này để xác định các relation bảng mẹ con 
để trình bày các Grid khi hiển thị.
Cú pháp
 <Item_Ten_Grid>
 <DataMember>Gia_tri</DataMember>
. . . .
 </ Item_Ten_Grid >
3. zOpenRelatedChild
Ý nghĩa
Khai báo biểu thức điều kiện để cho phép hiển thị nút + để mở bảng con của bảng hiện tại.
Cú pháp
 <Item_Ten_Grid>
 <DataMember>Gia_tri</DataMember>
 <zOpenRelatedChild>Bieu_thức_điều_Kiện</zOpenRelatedChild>
. . . .
68
 </ Item_Ten_Grid >
Ví dụ
Trên Editor của phiếu chi, ở grid chi tiết để hiển thị dấu + để mở bảng cháu để chọn chứng từ thanh 
toán thì dữ liệu phải thỏa mãn điều kiện khai báo trong biểu thức:
<Items>
 <Item_Detail>
 <DataMember>Ct0</DataMember>
 <zOpenRelatedChild>!Empty(CustomerCode) AND !Empty(OriginalAmount9) AND
Empty(IsPrepayment) AND
CASE(DocGroup,0,CustomerCreditAccount,CustomerDebitAccount)=1
 </zOpenRelatedChild>
. . . . 
4. zCarryingColumns
Ý nghĩa
Khai báo các cột sẽ được tự động copy xuống khi người dùng thao tác thêm dòng mới ở Grid.
Cú pháp
 <Item_Ten_Grid>
 <DataMember>Gia_tri</DataMember>
 <zCarryingColumns>Danh_sách_Các_Cọt</zCarryingColumns>
. . . .
 </ Item_Ten_Grid >
Ví dụ
Trên Editor của phiếu chi đang khai báo để tự động copy các thông tin danh sách các cột ở dòng 
trên xuống dòng dưới khi thêm dòng:
<Item_Detail>
 <DataMember>Ct0</DataMember>
 <zCarryingColumns>TransCode,DebitAccount,CreditAccount…</zCarryingColumns>
Ghi chú
69
- Khi gõ giá trị thêm dòng mới ở grid trong form nhập liệu, nếu có khai báo zCarryingColumns thì 
các cột trong zCarryingColumns trừ cột người dùng đang gõ giá trị (nếu có) sẽ được copy sau khi 
dòng thêm mới đã nhận giá trị người dùng gõ vào ở cột hiện thời
- Hỗ trợ thêm khai báo để lựa chọn thứ tự thực hiện các sự kiện khi thêm dòng ở Grid. Các giá trị 
có thể chọn: 
✓ carryingColumnType=AfterRowAdded: Thì khi người dùng thêm dòng mới trong grid, giá trị 
các cột khai báo ở zCarryingColumns sẽ được copy xuống sau khi các evaluator trong 
RowAdded được gọi và các evaluator/lookup của các cột đó sẽ thực hiện tuần tự đúng như
khi gõ giá trị. (giá trị mặc định)
✓ carryingColumnType= BeforeRowAdded: Lúc này giá trị các cột khai báo ở zCarryingColumns 
sẽ được copy xuống trước khi các evaluator trong RowAdded được gọi và các evaluator hay 
lookup của các cột đó sẽ không được thực hiện
VD: Editor phiếu chi nếu khai báo DebitAccount trong ZCarryingColumns 
(carryingColumnType=AfterRowAdded hoặc không khai báo gì) thì khi thêm dòng thứ 2 trở đi 
ô TK nợ sẽ copy từ dòng trên xuống dòng dưới mà không phải là giá trị được binding từ mã 
giao dịch. Ngược lại, nếu carryingColumnType= BeforeRowAdded thì khi thêm dòng thứ 2 trở 
đi thì ô TK nợ sẽ luôn là giá trị binding ra từ mã giao dịch.
✓ bCarryingColumnAsDefaultValue = True: Khi thêm dòng mới ở grid nhập liệu, nếu grid khai 
báo bCarryingColumnAsDefaultValue=True thì cột có khai báo trong zCarryingColumns thì sẽ 
hiển thị ngay giá trị copy từ dòng cuối cùng. 
5. Text
Ý nghĩa
Khai báo hiển thị tên của Grid theo từng ngôn ngữ. Trường hợp không khai báo chương trình sẽ 
hiển thị mặc định là tên bảng/ view được khai báo trong thẻ Name.
Cú pháp
 <Item_Ten_Grid>
 <DataMember>Gia_tri</DataMember>
 <Text>
 <Vietnamese>Hạch toán</Vietnamese>
 <English>Entries</English>
 </Text>
. . . .
 </ Item_Ten_Grid >
70
6. Nhóm các thẻ cho phép thao tác trên Grid
Ý nghĩa
Khai báo cho phép người dùng thực thi một số thao tác trên Grid.
Cú pháp
 <Item_Ten_Grid>
 <DataMember>Gia_tri</DataMember>
 <Ten_the>Gia_tri</Ten_the >
. . . .
 </ Item_Ten_Grid >
Danh sách thẻ
Tên thẻ Nội dung
1 AllowAddNew Cho phép thêm dòng ở Grid hay không. 
+ True: Cho phép thêm dòng (giá trị mặc định)
+ False: Không cho phép thêm dòng
2 AllowDelete Cho phép người dùng xóa dòng ở Grid hay không. 
+ True: Cho phép xóa dòng (giá trị mặc định)
+ False: Không cho phép xóa dòng.
3 AllowEditing Cho phép người dùng typing dữ liệu trực tiếp ở Grid hay 
không. 
+ True: Cho phép nhập liệu (giá trị mặc định với Editor)
+ False: Không cho phép nhập liệu (giá trị mặc định với 
Explorer, Reporter)
4 zAllowDeleteRow Cho phép người dùng xóa dòng trong Grid khi biểu thức 
điều kiện trả về nhận giá trị là True 
7. Nhóm các thẻ hiển thị dữ liệu trên Grid
Ý nghĩa
Khai báo cho phép các lựa chọn hiển thị dữ liệu trên Grid.
Cú pháp
71
 <Item_Ten_Grid>
 <DataMember>Gia_tri</DataMember>
 <Ten_the>Gia_tri</Ten_the >
. . . .
 </ Item_Ten_Grid >
Danh sách thẻ
Tên thẻ Nội dung
1 AllowDragging Khai báo đường kẻ ở Grid. 
+ None: Không kẻ đường viền
+ Columns: Kẻ đường viền theo cột
+ Rows: Kẻ đường viền theo dòng
+ Both: Kẻ đường viền theo cả dòng và cột
2 AllowFreezing Khai báo cho phép cố định dòng/ cột (giống trong Excel)
+ None: Không cho phép cố định
+ Columns: Cho phép cố định theo cột
+ Rows: Cho phép cố định theo dòng
+ Both: Cố định theo cả dòng và cột
(khai báo thẻ này chỉ có ý nghĩa với thao tác người dùng 
kéo chọn cột để Free, còn nếu trong layout có khai báo 
cáo thẻ nFreezeCols hoặc nFreezeRows thì sẽ luôn ăn 
theo khai báo layout)
3 nFreezeCols Khai báo vị trí cột cần cố định (cột luôn được đánh số thứ 
tự từ 0).
4 nFreezeRows Khai báo vị trí dòng cần cố định (dòng luôn được đánh số 
thứ tự từ 0).
5 bAllowGrandTotal Khai báo cho phép hiển thị dòng tổng cộng ở Grid. Các giá 
trị có thể nhận: 
+ True: Cho phép hiển thị dòng tổng cộng.
+ False: Không cho phép hiển thị dòng tổng cộng.
Vị trí các dòng tổng cộng và danh sách các cột sum phụ 
thuộc vào khai báo các thẻ (vui lòng tham khảo các tài liệu 
liên quan)
72
6 Groups Khai báo danh sách các cột sẽ Group dữ liệu trên grid. Nếu 
khai báo danh sách các cột thì dữ liệu sẽ được Group theo 
từng cấp theo thứ tự khai báo.
Cú pháp:
<Groups>
 <Cột1 />
 <Cột2 />
</Groups>
7 bExcludeSumColumns Xác định có tính tổng các cột khai báo trong thẻ
SumColumns hay không. Các giá trị có thể nhận:
+ True: Tính tổng tất cả các cột kiểu số của Grid ngoại trừ 
các cột được khai báo trong SumColumns
+ False: Tính tổng tất cả các cột được khai báo trong thẻ 
SumColumn (giá trị mặc định)
8 SumColumns Khai báo danh sách các cột kiểu số sẽ được tính tổng hoặc 
không được tính tổng (phụ thuộc vào giá trị của thẻ 
bExcludeSumColumns). Đặc biệt ở B8 có thể khai báo 
biểu thức tính toán của các cột khai báo trong danh sách 
các cột tính tổng. VD: cột tỷ lệ ở các dòng tổng cộng sẽ 
không sum các dòng chi tiết mà có thể tính lại theo biểu 
thức bằng thẻ Expr.
Chú ý: hỗ trợ khai báo với cả các cột kiểu ký tự với ý nghĩa 
hỗ trợ hiển thị mã nhóm ở các dòng in đậm và sử dụng 
<All> *</All> để sum tất cả các cột kiểu số
8. Styles
Ý nghĩa
- Khai báo định dạng theo điều kiện các cột của grid.
- Khai báo định dạng mẫu cho các màn hình báo cáo.
Cú pháp
 <Item_Ten_Grid>
 <Styles>
<Ten_Style>
<Name>Ten_cot</Name>
 <Expr>khai báo định dạng</Expr>
73
</Ten_Style>
 </Styles>
Trong đó : 
+ Name: khai báo các cột chịu tác động của khai báo định dạng, nếu áp dụng cho tất cả các cột thì 
khì khai báo *
+ Expr: là biểu thức điều kiện trả về định dạng cho style này.
9. allowEditingMultiCells
Ý nghĩa
- Khi nhập liệu, grid hỗ trợ dán (paste) nội dung copy nhiều cells từ Excel, nội dung sẽ được 
paste lần lượt cho các dòng/cột đang hiển thị, tự thêm dòng mới nếu cần
Cú pháp
 <Item_Ten_Grid>
 <Styles>
<allowEditingMultiCells>Gia_tri</allowEditingMultiCells>
 </Item_Ten_Grid>
Ghi chú:
- Trong đó : Gia_Tri có thể nhận các giá trị:
+ None:Không cho phép
+ Paste: Dán (ngầm định)
+ Delete: Xóa
+ TrimEmptyRow: tự động loại bỏ các dòng trắng
- Trường hợp người dùng vừa muốn sử dụng tính năng dán và xóa có thể khai báo nhiều giá trị cho 
thẻ này. VD: <allowEditingMultiCells>Paste,Delete</allowEditingMultiCells>
- Lưu ý là khi Paste dán vào Grid, thì các ô nào, dòng nào không thỏa mãn điều kiện Edit sẽ bị bỏ 
qua không bị xóa và ghi đè.
- Cho phép dán giá trị lặp lại cho vùng dòng/cột được chọn tương tự Excel (copy từ Grid)
- Ngầm định khi paste nội dung copy từ ngoài (Excel…) vào grid sẽ giữ nguyên nội dung, bao gồm 
các dòng trắng, nếu muốn tự động loại bỏ các dòng trắng như trước thì cần khai báo 
allowEditingMultiCells=Paste, TrimEmptyRow
10. DynamicColX
Ý nghĩa
74
- Khai báo layout cột động cho các grid, thay vì phải tạo chuỗi LAYOUT_XML gồm toàn bộ 
các cột từ thủ tục lưu như trước thì chỉ cần khai báo khuôn mẫu trong layout và chương trình 
sẽ tự động quét các cột tương ứng trong bảng dữ liệu để dựng cột grid.
Cú pháp
 <DynamicColX>
 <Name />
 <Pattern>Tên cột động%</Pattern>
 <Style>…</Style>
. . .
</DynamicColX>
Ví dụ:
Explorer của phiếu thu khai báo như sau: 
<DynamicCol0>
 <Name />
 <Pattern>TotalOriginalAmount%</Pattern>
 <Style>BackColor:Red;</Style>
</DynamicCol0>
<DynamicCol1>
 <Name />
 <Pattern>TotalAmount%</Pattern>
 <Style>BackColor:Aqua;</Style>
</DynamicCol1>
Kết quả hiển thị sẽ như sau: 
Ghi chú:
- Mẫu cột động (A, B, C) được nhặt theo thứ tự từ bảng dữ liệu sẽ thành (A1
, B1
, C1
), (A2
, B2
, C2
)… 
(An
, Bn
, Cn
). Các cột động được khai báo với tên trắng <Name></Name> và khuôn mẫu 
<Pattern>like operator</Pattern> hoặc <PatternRegex>regular expression</PatternRegex>. 
75
- Cột động có thể có nhiều nhóm ở các vị trí khác nhau trong grid. Ở ví dụ minh họa nhóm cột động 
gồm mầu đỏ với <Pattern>TotalOriginalAmout%</Pattern> và mầu xanh với 
<Pattern>TotalAmout%</Pattern> sẽ được lặp lại theo các cột thực tế có trong bảng.
- Tiêu đề các cột động có thể sử dụng các hàm UpdatedColumn() để lấy số thứ tự cột động và 
ColumnName() để lấy tên cột động nhưng bắt buộc phải khai báo với expr=”True” vì 2 hàm này sẽ
chỉ có tác dụng ngay khi đọc khai báo layout của grid
- Trường hợp dùng cột động trong grid, có thể dùng hàm UpdatedColumn() để lấy tên cột trong 
grid tại các biểu thức dùng tại chính cột đó như <Editor><Expr>, <Style><Expr>, 
<SumColumns><Expr> và khai báo <Text> khi không dùng expr=”True”. Ví dụ tại <Column_A> có 
khai báo <Text>{=UpdateColumn()}</Text> thì giá trị trả về sẽ là ‘Column_A’, nếu khai báo <Text 
expr=”True”>{=UpdateColumn()}</Text> thì UpdateColumn() vẫn sẽ trả về index cột động như trước 
đây. Nếu dùng <Text expr=”True”> thì tiêu đề cột sẽ cố định sau mỗi lần đọc layout, với cách khai 
báo mới <Text> không expr và dùng hàm UpdateColumn() sẽ hỗ trợ refresh tiêu đề cho cột động 
khi dữ liệu thay đổi. Gantt chart cho phép thực hiện evaluator khi người dùng click đúp/bấm Enter ở
các cột dữ liệu thời gian của dòng nhóm
- Khai báo tên cột động bằng PatternRegex hay Pattern sẽ tương tự nhau, sẽ tự động nhận diện 
khi dùng RegEx. Hỗ trợ các PatternRegex/Pattern tên cột động khi định dạng động theo biểu thức 
trong grid.
Grid có khai báo cột động dùng Pattern hay PatternRegex, muốn định dạng các cột động có mầu 
đỏ khi giá trị âm (cột động có Pattern là CotDong%)
<Style_Test>
 <Name>CotDong%</Name>
 <Expr>IIF({=UpdateColumn()}<0, 'ForeColor:Red;', '')</Expr>
</Style_Test>
11. bDoubleClickActivateCell
Ý nghĩa
- Khai báo lựa chọn chế độ gõ giá trị ở các ô ở Grid trong quá trình nhập liệu. 
Cú pháp
 <bDoubleClickActivateCell>True/False</bDoubleClickActivateCell>
Ghi chú:
- True: Click đúp chuột trái trong grid nhập liệu để vào chế độ gõ giá trị thay vì click đơn như 
trước, click đơn sẽ chỉ chọn ô
- False: Ngược lại, Click đơn sẽ là chế độ gõ giá trị
76
12. dataRelationMode
Ý nghĩa
- Khai báo lựa chọn chế độ mỗi quan hệ bảng con của dữ liệu đã chọn. 
Cú pháp
<dataRelationMode>LinkedGrid</dataRelationMode>
Ghi chú:
- LinkedGrid: Lưới kết nối
- None: hỗ trợ khi ẩn/hiện một grid thì sẽ tự động ẩn hiện tab chứa grid đó, nếu không còn tab 
nào hiển thị thì BravoGridContainer sẽ ẩn đi
13. bShowRowIndicator, bMarkDataRowState, rowHeaderNumbering
Ý nghĩa
Tùy chỉnh độ rộng tự động của cột tiêu đề (Fixed) của grid
Sẽ có giá trị tối thiểu nếu bShowRowIndicator=False, bMarkDataRowState=False và 
rowHeaderNumbering=None
G. CÁC TÍNH NĂNG KHÁC
1. Tính năng lưu tạm trên Editor.
Ý nghĩa
- Lưu tạm các thông tin đang nhập liệu dở dang của người dùng trên màn hình Editor
- Bản chất của việc lưu tạm là lưu các thông tin đang nhập liệu ở Editor đang nhập liệu vào 
profile theo user đăng nhập. 
- Có thể thêm nhiều bản lưu tạm nếu tên khác với tên mặc định
- Tự xóa file lưu tạm sau khi dữ liệu lưu tạm được lưu chính thức thành công vào CSDL
- Cho phép khai báo bAllowDeletingLocalSaveFile=False để không cho người dùng xóa file 
lưu tạm khi nhập liệu trong chương trình – tuy nhiên lưu ý là các file lưu tạm vẫn có thể bị
xóa ngoài chương trình
2. Chức năng import 
Ý nghĩa
- Import dữ liệu từ các định dạng đã được hỗ trợ như *.xls, *.xlsx, *.txt, *.xlsm, *.xlsb,…
77
- Hỗ trợ 2 chế độ import: từ DataExplorer import trực tiếp vào CSDL thông qua CommandKey 
khai báo cho lệnh New, từ DataEditor import vào DataSet đang cập nhật của form (chế độ 
này cho phép import vào 1 bảng bất kỳ không cần theo cây dữ liệu khai báo).
Ghi chú:
- Bản chất của việc import dữ liệu là thực hiện lần lượt các thao tác tương tự như khi người 
dùng F2=> nhập các thông tin=> và ấn nút lưu. Nên việc thực hiện các Eval, kiểm tra 
validator, binding, lookup.. sẽ được thực hiện tuần tự lần lượt theo đúng cơ chế khi người 
dùng thực hiện thao tác thêm mới. Vì vậy người dùng hết sức lưu ý việc sắp xếp trình tự các 
cột ở File excel hoặc lựa chọn các cột dữ liệu ở bảng mẹ và bảng con.
- Do cơ chế layout của B8 tách phần khai báo các sự kiện tác động trong DataSource, layout 
chỉ là hiển thị các thông tin mà DataSource là duy nhất trên một form. Vì vậy việc tách các 
layout trong quá trình import chỉ có ý nghĩa hiển thị và lookup, binding. Trường hợp cần thiết 
phải thay đổi các khai báo trong DataSource khi thực hiện import mà không muốn ảnh hưởng 
đến việc nhập liệu, người dùng vui lòng tạo command riêng.
- Hỗ trợ tính năng lọc dữ liệu import trực quan hơn với người dùng. Sau mỗi lần import người 
dùng có thể lọc dữ liệu import theo trạng thái dữ liệu (lỗi, không lỗi, lỗi dạng cảnh báo)
- Tùy chọn ‘Không ghi nhật ký dữ liệu’ để ưu tiên tốc độ thực hiện khi cần.
- Trong giao diện import, khi lọc các dòng lỗi không import được và lưu ra Excel thì sẽ file 
Excel sẽ thêm một cột phía ngoài cùng bên phải chứa toàn bộ các thông tin lỗi của dòng, 
còn tại các ô thì lỗi sẽ được thể hiện ở chú thích của ô.
- Hỗ trợ import ảnh từ file Excel với điều kiện các ảnh phải đính kèm với một ô, các ảnh dạng 
float sẽ bị bỏ qua
- Hỗ trợ các mục sau:
✓ Hỗ trợ import mã trong các cột lookup có HiddenValueMember=Id
✓ Màn hình import dữ liệu hỗ trợ giá trị giới hạn dòng import theo cú pháp: a-b,h-m,t… cho 
phép chọn các dòng cách nhau
✓ Khi import trong DataEditor cho phép người dùng tùy chọn đóng form import hay không 
sau khi hoàn thành
✓ Danh sách thiết lập import sắp xếp theo thứ tự thời gian cập nhật mới nhất lên trên cùng, 
lưu lại thiết lập đã chọn lần cuối từ danh sách
3. Tính năng khai báo hiển thị phân biệt phiên bản sử dụng
Ý nghĩa
78
- Với mục đích phân biệt các phiên bản sử dụng (ví dụ cùng 1 khách hàng sử dụng 2 phiên 
bản khác nhau khi cùng mở lên)
Cách sử dụng:
Khai báo thêm nội dung sau vào Template hoặc bất kỳ màn hình nào cần phân biệt
<menuStrip1>
 <BackColor>Aqua</BackColor>
</menuStrip1>
4. Tính năng khóa màn hình
Ý nghĩa
- Tự động khóa màn hình B8 khi người dùng rảnh (Khi không bấm phím, click, di chuyển chuột 
trong các form chương trình trong khoảng thời gian nIdleMinuteInterval (là số phút) thì sẽ
được coi là rảnh)
Cú pháp
<root>
<nIdleMinuteInterval>Gia_Tri</nIdleMinuteInterval>
Cách sử dụng:
- Tính năng được khai báo trong form main của chương trình hoặc có thể khai báo trong 
Template của <MainWindow>
- Thời gian khai báo của thẻ nIdleMinuteInterval được tính bằng phút, tính năng sẽ vô hiệu 
nếu không khai báo hoặc nIdleMinuteInterval <=0
- Thẻ có hỗ trợ khai báo biểu thức, nên tính năng có thể linh hoạt lấy thời gian khóa cho nhiều 
trường hợp. VD: nếu muốn khai báo thời gian khóa theo từng user có thể khai 
báo:<nIdleMinuteInterval expr="True">{=User('IdleTime')}</nIdleMinuteInterval>
- Chú ý: 
+ Nếu khai báo cả trong layout và Template thì sẽ ưu tiên lấy ở layout
+ Với mỗi layout main khác nhau mà khai báo khác nhau sẽ ăn theo layout main khi đăng 
nhập. 
+ Trường hợp chuyển layout từ layout không khai báo sang có khai báo hoặc đều có khai 
báo nhưng giá trị khác nhau thì đến lần đếm tiếp theo mới có tác dụng của layout mới. 
Khuyên cáo tốt nhất nên đăng nhập lại chương trình.
79
+ Tính năng lock màn hình sẽ ko lock với màn hình hiển thị lỗi khi chạy chức năng 
(mesegebox)
5. Khai báo CustomFlags trong bảng B00Command
Hỗ trợ thêm khai báo CustomFlags trong bảng B00Command các giá trị
MaximizeFormState=2048 và MinimizeFormState=4096 để luôn mở layout form ở trạng thái 
maximize và minimize
6. Cho phép khai báo thay đổi giá trị cột dữ liệu của các bảng khi truyền dữ liệu ra
Nếu cột UsingValueAsOut=1 thì các mệnh đề dạng <biểu thức> AS <tên cột> trong ValueAsOut 
sẽ được thay thế cho cột có tên tương ứng.
Ví dụ: khai báo ValueAsOut=CAST(0 AS tinyint) AS DocStatus cho bảng B30AccDoc thì lệnh 
SELECT dữ liệu từ bảng B30AccDoc sẽ điền giá trị 0 cho cột DocStatus tại tất cả các dòng dữ
liệu