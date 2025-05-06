MỤC LỤC
A. DATASOURCE........................................................................................................................... 6
I. DataSource .......................................................................................................................... 6
1. TableCollection................................................................................................................. 6
2. ChildCollection.................................................................................................................. 6
3. SelectType........................................................................................................................ 6
4. Limit.................................................................................................................................. 6
5. Name................................................................................................................................ 7
6. Alias.................................................................................................................................. 7
7. Columns ........................................................................................................................... 7
8. SourceCollection............................................................................................................... 7
9. JoinType........................................................................................................................... 7
10. JoinCollection................................................................................................................ 7
11. Source........................................................................................................................... 8
12. FilterKey........................................................................................................................ 8
13. FilterCollection .............................................................................................................. 8
14. Group............................................................................................................................ 9
15. GroupCollection ............................................................................................................ 9
16. Having........................................................................................................................... 9
17. HavingCollection ........................................................................................................... 9
18. Sort ............................................................................................................................... 9
19. SortCollection................................................................................................................ 9
20. dataAccessMode......................................................................................................... 10
21. SourceColumn ............................................................................................................ 10
22. CommandCollection.................................................................................................... 10
23. ForEach ...................................................................................................................... 10
24. ForEachJoin................................................................................................................ 10
25. MaxRecursion ............................................................................................................. 10
26. Recursive .................................................................................................................... 11
2
27. RecursiveJoin.............................................................................................................. 11
28. RetrieveChangeLog .................................................................................................... 11
29. RowSelected............................................................................................................... 11
30. ParentKey ................................................................................................................... 12
31. ChildKey...................................................................................................................... 12
32. CommandType............................................................................................................ 12
33. DefaultFilterKey........................................................................................................... 12
34. PageSize..................................................................................................................... 12
35. bShowChangeLog....................................................................................................... 12
36. TreeNodeKeyMember................................................................................................. 13
37. ParametersTable......................................................................................................... 13
38. RequeryCondition........................................................................................................ 13
II. GlobalTemplate.................................................................................................................. 14
III. Evaluators....................................................................................................................... 14
IV. Evaluator_X.................................................................................................................... 14
1.scopeType .......................................................................................................................... 16
2. allowRunning ..................................................................................................................... 17
3. bSuppressChangeEvents .................................................................................................. 19
4. zScopeExpr ....................................................................................................................... 20
5. Expr ................................................................................................................................... 21
6. commandFormState .......................................................................................................... 21
7. zCtorArgs........................................................................................................................... 23
8. zCustomConnectionName ................................................................................................. 23
9. bSuppressLookupEvents ................................................................................................... 24
V. EvaluatorGroups ................................................................................................................ 25
VI. ServerLoaded ................................................................................................................. 25
VII. ColumnChanging ............................................................................................................ 26
VIII. ColumnChanged............................................................................................................. 26
3
IX. RowAdded...................................................................................................................... 27
X. RowCopied......................................................................................................................... 27
XI. Expressions .................................................................................................................... 28
XII. TempColumns ................................................................................................................ 29
XIII. BeforeTransaction .......................................................................................................... 30
XIV. ServerUpdated................................................................................................................ 31
XV. DefaultValues ................................................................................................................. 31
XVI. CopyList.......................................................................................................................... 32
XVII. CopyListNew............................................................................................................... 32
XVIII. CopyMode................................................................................................................... 33
XIX. ReadOnly........................................................................................................................ 34
XX. RefreshColumnList ......................................................................................................... 35
XXI. ServerCommand............................................................................................................. 35
XXII. RowDeleting................................................................................................................ 36
XXIII. UniqueKey................................................................................................................... 37
XXIV. AssignmentUpdateList ................................................................................................ 38
XXV. FilterKey...................................................................................................................... 38
XXVI. CommandValidators.................................................................................................... 39
XXVII. TempTableCollection .................................................................................................. 40
XXVIII. RowImported ........................................................................................................... 40
B. EVALUATOR............................................................................................................................ 41
1. BravoEvaluator................................................................................................................... 41
2. BravoAddRowEvaluator ..................................................................................................... 44
3. BravoAllocationEvaluator ................................................................................................... 45
4. BravoBindingMember......................................................................................................... 47
5. BravoCommandkey............................................................................................................ 48
6. BravoCopyValue ................................................................................................................ 54
7. BravoDeleteRowEvaluator ................................................................................................. 55
8. BravoMoneyEvaluator........................................................................................................ 56
4
9. BravoSelectRowEvaluator.................................................................................................. 58
10. BravoServerConstraint.................................................................................................... 58
11. BravoTableAggregator.................................................................................................... 67
12. BravoTableOrderer......................................................................................................... 69
13. BravoFileWriter / BravoReadFile..................................................................................... 70
14. BravoPosPromotionProgram .......................................................................................... 72
14.1. zPromoTableName.................................................................................................. 72
14.2. zApplyPromoTableName......................................................................................... 72
14.3. zPromoDiscountRateMember.................................................................................. 73
14.4. ApplyPromoDefaultValues ....................................................................................... 73
15. BravoPortSIPVoIPEvaluator/ BravoPortSIPVoIPInviteIncomingEvaluator....................... 73
16. BravoTimeAttendanceEvaluator ..................................................................................... 75
17. BravoAddFileEvaluator ................................................................................................... 76
18. BravoSendDataChange.................................................................................................. 78
19. BravoOauth2ResponseTypeCode .................................................................................. 78
20. BravoSendMailEvaluator ................................................................................................ 79
21. BravoPasswordPolicyValidator ....................................................................................... 79
C.VALIDATORS............................................................................................................................ 80
1. Assembly............................................................................................................................ 80
2. ClassName......................................................................................................................... 81
2.1.BravoFiscalDateValidator................................................................................................. 81
2.2.BravoNullValidator ........................................................................................................... 82
2.3.BravoServerConstraintValidator....................................................................................... 83
2.4.BravoUniqueKeyValidator................................................................................................ 85
2.5.BravoValidator ................................................................................................................. 86
3. SourceColumn ................................................................................................................... 87
4. TargetColumn .................................................................................................................... 87
5. Caption............................................................................................................................... 88
6. Expr.................................................................................................................................... 88
5
7. zValidateExpr..................................................................................................................... 89
8. Text.................................................................................................................................... 90
9. Command........................................................................................................................... 91
10. Filterkey.......................................................................................................................... 91
11. bValidateIfModify ............................................................................................................ 92
12. bValidateNegate ............................................................................................................. 93
13. bValidateIfNotEmpty ....................................................................................................... 93
14. bValidateWarning ........................................................................................................... 94
15. bEmptyAsNull ................................................................................................................. 94
16. bZeroAsNull.................................................................................................................... 95
17. RestrictedPassword........................................................................................................ 95
6
LƯU Ý: 
− Tài liệu kỹ thuật dành cho phiên bản Bravo 10 mô tả tác dụng, ý nghĩa và các thao tác khi sử 
dụng các thẻ khai báo trên layout. Do trong quá trình phát triển và hoàn thiện sản phẩm nên có 
thể sẽ có những điểm khác biệt với sản phẩm trên thực tế. Trong tình huống này cán bộ kỹ thuật 
nên tham khảo các chỉ dẫn trên phần mềm.
− Do số lượng các thẻ hỗ trợ là rất lớn, nhiều thẻ chưa được ứng dụng vào các bài toán cụ thể, 
do vậy Tài liệu kỹ thuật cố gắng ưu tiên các thẻ có tần suất sử dụng cao. Nội dung của tài liệu 
sẽ tiếp tục được bổ sung trong quá trình hoàn thiện sản phẩm.
A. DATASOURCE
I. DataSource
1. TableCollection
Ý nghĩa Cú Pháp/Ví dụ
Định nghĩa các bảng
<TableCollection>
<Ct template="AccDoc_Edit">
Nếu không khai báo chỉ định Alias thì như khai 
báo trên “Ct” là Alias của bảng này
2. ChildCollection
Ý nghĩa Cú Pháp/Ví dụ
Định nghĩa các bảng con (tương tự
ChildTable của B8)
<ChildCollection>
 <ChildTable_PayDocDetail>
 <Name>vB30PayDocDetail_Explore</Name>
 <Columns>*</Columns>
 <Alias>PayDocDetail</Alias>
 <Sort>PayDocDate DESC,PayDocNo</Sort>
 <FilterKey>IsActive=1</FilterKey>
 <ParentKey>RowId</ParentKey> 
<ChildKey>RowId_SourceDoc</ChildKey>
 </ChildTable_PayDocDetail>
</ChildCollection>
3. SelectType
Ý nghĩa Cú Pháp/Ví dụ
Khai báo kiểu truy vấn
<SelectType>All | Distinct | Except | Intersect | If |With
Default: All
4. Limit 
Ý nghĩa Cú Pháp/Ví dụ
Giới hạn kết quả truy vấn
<Limit>Giá trị</Limit>
Giá trị là kiểu số
7
5. Name
Ý nghĩa Cú Pháp/Ví dụ
Tên bảng hoặc view được sử dụng để truy 
vấn dữ liệu trong trường hợp không chỉ
định <Source>. Ngoài ra còn sử dụng để
phân quyền và ghi nhật ký
<Name>vB30BizDoc_Explore</Name>
Thẻ này còn hỗ trợ cách khai báo dạng 
autotext
<Name Expr=”True”>Ten_{=BranchCode}</Name>
6. Alias
Ý nghĩa Cú Pháp/Ví dụ
Khai báo tên bí danh của bảng dữ liệu trong 
DataSource <Alias>Ten_Bi_Danh</Alias>
Thẻ này còn hỗ trợ cách khai báo dạng 
autotext
<Alias Expr=”True”>Ten_{=BranchCode}</Alias>
7. Columns
Ý nghĩa Cú Pháp/Ví dụ
Danh sách các cột của 
bảng
Có thể viết như sau:
<Columns>Id,IsGroup,IsActive,ParentId,AllocateByCapacity</Columns>
<Columns>*</Columns>
<Columns>Ct.Id, Ct1.BizDocId_DA, Ct1.CustomerId, Dm.Name AS 
CustomerName, Ct.DocCode,
 Ct.DocDate, Ct.DocNo, Ct.Description, Ct.CurrencyCode, 
Ct1.DebitAccount, Ct1.CreditAccount, Ct1.OriginalAmount, Ct1.Amount, 
Ct.IsActive</Columns>
8. SourceCollection
Ý nghĩa Cú Pháp/Ví dụ
Định nghĩa các bảng tạm
Lấy dữ liệu từ nhiều bảng 
kết hợp với nhau theo logic 
<SourceCollection>
 <TempTableName1>
 <Columns>
 <Source>Table_1</Source>
 <Alias>Ct0</Alias>
 <JoinCollection>
 <FilterKey></FilterKey>
</TempTableName1>
 <TempTableName2>
 <Columns>
 <Source>Table_2</Source>
 <Alias>Ct0</Alias>
 <JoinCollection>
 <FilterKey></FilterKey>
</TempTableName2>
9. JoinType
Ý nghĩa Cú Pháp/Ví dụ
Khai báo loại join dữ liệu
<JoinType> Inner|Left|Right|Full|OuterApply|CrossApply </JoinType>
Giá trị ngầm định: Inner
10.JoinCollection
Ý nghĩa Cú Pháp/Ví dụ
8
Lấy dữ liệu từ một bảng kết 
hợp với các bảng khác
Hỗ trợ các loại join: Inner | 
Left | Right | Full | 
OuterApply | CrossApply.
<JoinCollection>
<PRS>
<Source>PRS</Source>
<JoinType>Left</JoinType>
<JoinCondition>PRS.BizDocId_PR = Ct.BizDocId AND 
PRS.RowNum=1</JoinCondition>
</PRS>
Tương đương là LEFT JOIN PRS WHERE PRS.BizDocId_PR = 
Ct.BizDocId AND PRS.RowNum=1
11.Source 
Ý nghĩa Cú Pháp/Ví dụ
Các bảng tạm được định 
nghĩa trong 
<SourceCollection>
Có thể sử dụng như sau:
 <ChildTable_Contract_Detail>
 <Source>CashPayment, CashReceipt, HistoryTrans</Source>
 <SelectType>All</SelectType>
Như ví dụ này thì câu lệnh thực hiện sẽ là
SELECT … CashPayment UNION ALL CashReceipt UNION ALL
HistoryTrans
Hoặc
<SourceCollection>
 <TempTableName>
 <Columns>
 <Source>B30AccDocCashPayment</Source>
Tương đương là <Name>B30AccDocCashPayment</Name> sử dụng 
để phân quyền/ghi log.
Hoặc
<JoinCollection>
<PRS>
<Source>PRS</Source>
<JoinType>Left</JoinType>
<JoinCondition>PRS.BizDocId_PR = Ct.BizDocId AND 
PRS.RowNum=1</JoinCondition>
</PRS>
Tương đương là LEFT JOIN PRS WHERE PRS.BizDocId_PR = 
Ct.BizDocId AND PRS.RowNum=1
12.FilterKey
Ý nghĩa Cú Pháp/Ví dụ
Biểu thức lọc dữ liệu <FilterKey>IsActive=1</FilterKey>
13.FilterCollection
Ý nghĩa Cú Pháp/Ví dụ
Danh sách các biểu thức 
lọc dữ liệu theo điều kiện
<FilterCollection>
<Filter_0>
 <FilterKey>mac.IsActive = 1 AND mac.PostGL = 1</FilterKey>
</Filter_0>
<Filter_1>
 <FilterKey>(mac.DeptId = {=_DeptId})</FilterKey>
 <Expr>ISNULL({=_DeptId},0) &lt;&gt; 0</Expr>
</Filter_1>
9
</FilterCollection>
14.Group
Ý nghĩa Cú Pháp/Ví dụ
Danh sách các cột cần 
nhóm
<Group>Danh_Sach_Cot</Group>
Các nhau bởi dấu “,”
15.GroupCollection
Ý nghĩa Cú Pháp/Ví dụ
Danh sách nhóm dữ liệu 
theo điều kiện
<GroupCollection>
<Group_0>
 <Group>ct.Stt</Group>
</Group_0>
<Group_1>
 <Group>Danh_Sach_Cot</Group>
</Group_1>
</GroupCollection>
16.Having
Ý nghĩa Cú Pháp/Ví dụ
Biểu thức cố định lọc dữ
liệu cho nhóm (tương tự
Having của Select trong 
SQL_Query)
<Having>SUM(Quantity) &lt;&gt; 0</Having>
17.HavingCollection
Ý nghĩa Cú Pháp/Ví dụ
Danh sách các biểu thức 
lọc dữ liệu cho nhóm theo 
điều kiện.
<HavingCollection>
 <Having_0>
 <Having>SUM(Quantity) &lt;&gt; 0</Having>
 </Having_0>
 <Having_1>
 <Having>Điều_Kiện</Having> 
 </Having_1>
</HavingCollection>
18.Sort
Ý nghĩa Cú Pháp/Ví dụ
Khai báo cột sắp xếp mặc 
định.
<Sort>PayDocDate DESC,PayDocNo</Sort>
19.SortCollection
Ý nghĩa Cú Pháp/Ví dụ
Danh sách các biểu thức 
sắp xếp dữ liệu theo điều 
kiện
 <SortCollection>
 <Sort_0>
 <Expr>BRANCH('IsGroup') = 1</Expr>
 <Sort>ci.BranchCode, ci.WarehouseId, ci.ItemId</Sort>
 </Sort_0>
10
 <Sort_1>
 <Expr>BRANCH('IsGroup') = 0</Expr>
 <Sort>ci.WarehouseId, ci.ItemId</Sort>
 </Sort_1>
 </SortCollection>
20.dataAccessMode
Ý nghĩa Cú Pháp/Ví dụ
Chỉ định chế độ tương tác 
với dữ liệu. 
<dataAccessMode>Write|ReadOnly</dataAccessMode>
ReadOnly: chỉ đọc; 
Write: đọc và ghi.
21.SourceColumn 
Ý nghĩa Cú Pháp/Ví dụ
Khai báo danh sách các cột 
cần kiểm tra
<SourceColumn>Danh_Sach_Ten_Cot</SourceColumn>
Phân cách bởi dấu “,”
22.CommandCollection
Ý nghĩa Cú Pháp/Ví dụ
Danh sách các thủ tục / 
hàm / api / ... dùng để truy 
vấn hoặc cập nhật dữ liệu
<CommandCollection>
 <EncryptBIDV2>
 <Command>usp_EBanking_EncryptBIDV</Command>
 <Parameters>
 
 <DataSend>DataSend</DataSend>
 <nUserId>USER('Id')</nUserId>
 </Parameters>
 <DataMember>DataSendEncrypt</DataMember>
 </EncryptBIDV2>
</CommandCollection>
23.ForEach
Ý nghĩa Cú Pháp/Ví dụ
Tên bảng sử dụng cho 
vòng lặp
 <ForEach>FiscalYearScan</ForEach>
24.ForEachJoin
Ý nghĩa Cú Pháp/Ví dụ
Chỉ định kiểu kết hợp kết 
quả qua từng vòng lặp
<ForEachJoin>All|Distinct|Except|Intersect</ForEachJoin>
Giá trị ngầm định: All
25.MaxRecursion
Ý nghĩa Cú Pháp/Ví dụ
Chỉ định số lượng đệ quy 
tối đa khi sử dụng kiểu truy 
vấn đệ quy với With 
<SelectType>With</SelectType>
<MaxRecursion>8</MaxRecursion> Đệ quy tối đa 8 lần
11
26.Recursive
Ý nghĩa Cú Pháp/Ví dụ
Đệ quy với With
<Cte>
<Columns>Column1, Column2, ...</Columns> 
<SelectType>With</SelectType>
<Recursive>Source1,Source2, Source3,...</Recursive>
<MaxRecursion>Limit_Loop</MaxRecursion>
<SourceCollection>
<Source1>
<Source>TableName2</Source> hoặc 
<Name>TableName2</Name>
 <Columns>TableName2_Column1, 
TableName2_Column2,... </Columns>
 <RecursiveJoin>Intersect</RecursiveJoin>
...
 </Source1>
<Source2>
<Source>TableName3</Source> hoặc 
<Name>TableName3</Name>
 <Columns>TableName3_Column1, 
TableName3_Column2,...</Columns>
 <RecursiveJoin>All</RecursiveJoin>
...
</Source2>
<Source3>
<Source>TableName4</Source> hoặc 
<Name>TableName4</Name>
 Columns>TableName4_Column1,TableName4_Column2,... 
</Columns>
...
</Source3>
 </SourceCollection>
</Cte>
27.RecursiveJoin
Ý nghĩa Cú Pháp/Ví dụ
Chỉ định kiểu kết hợp các 
bảng dữ liệu khi sử dụng 
kiểu truy vấn đệ quy với 
With
<SelectType>With</SelectType>
<RecursiveJoin>(All|Distinct|Except|Intersect)</RecursiveJoin>
Giá trị ngầm định: All
28.RetrieveChangeLog
Ý nghĩa Cú Pháp/Ví dụ
Chỉ định có lấy thông tin 
CreatedAt / CreatedBy
ModifiedAt /ModifiedBy vào 
log không
<RetrieveChangeLog>False | True</RetrieveChangeLog>
29.RowSelected
Ý nghĩa Cú Pháp/Ví dụ
12
Khai báo danh sách các 
evaluator được thực thi khi 
bản ghi được chọn
<RowSelected>
 <Danh_sach_evaluator>
</RowSelected>
Việc thực thi các Evaluator khi chọn dòng có thể làm ảnh hưởng đến 
tốc độ load dữ liệu. Cần cân nhắc kỹ khi sử dụng tính năng này
30.ParentKey
Ý nghĩa Cú Pháp/Ví dụ
Khai báo cột liên kết ở 
bảng mẹ. Thẻ này chỉ khai 
báo ở bảng con
<ParentKey>Ten_Cot</ParentKey>
31.ChildKey
Ý nghĩa Cú Pháp/Ví dụ
Khai báo cột liên kết ở 
bảng con. Thẻ này chỉ khai 
báo ở bảng mẹ
<ChildKey>Ten_Cot</ChildKey>
32.CommandType
Ý nghĩa Cú Pháp/Ví dụ
Khai báo loại thực thi câu 
lệnh
<CommandType>GIA_TRI</CommandType>
GIA_TRI: PROCEDURE | INSERT | API | UPDATE | FUNCTION
33.DefaultFilterKey
Ý nghĩa Cú Pháp/Ví dụ
Giá trị ngầm định lọc dữ 
liệu.
<DefaultFilterKey>DocBookingId IS NULL</DefaultFilterKey>
34.PageSize
Ý nghĩa Cú Pháp/Ví dụ
Khai báo số lượng bản ghi 
tối đa trên 1 trang
<PageSize>gia_tri</PageSize>
Giá trị mặc định 1 page: 50 bản ghi
Giá trị tối đa tải: 500 bản ghi
35.bShowChangeLog
Ý nghĩa Cú Pháp/Ví dụ
Khai báo hiển thị hay 
không hiển thị thông tin 
nhật ký ở thanh công cụ
dưới cùng bên trái khi chọn 
bản ghi.
<bShowChangeLog>TRUE | FALSE</bShowChangeLog>
Giá trị ngầm định: True
13
36.TreeNodeKeyMember
Ý nghĩa Cú Pháp/Ví dụ
Khai báo cột để tạo cây dữ
liệu ở grid của Explorer.
<TreeNodeKeyMember>Ten_Cot</TreeNodekeyMember>
Explorer của danh mục tài khoản đang khai báo trong DataSource: 
<ParentTable>
 <Name>vB20ChartOfAccount</Name>
 <TreeNodeKeyMember>_TreeNode</TreeNodeKeyMember>
 ……
Đồng thời phần layout đang khai báo: 
 <Groups>
 <_TreeNode />
 </Groups>
Thì khi mở Explorer dữ liệu ở Grid sẽ được sắp xếp theo hình cây tài 
khoản mẹ/ tài khoản con. Và luôn in đậm ở dòng tài khoản mẹ
Ghi chú
- Cột khai báo trong thẻ này phải là cột được khai báo trong phần Layout (có thể khai 
báo Visible = False để ẩn đi). Tham số Ten_Cot hiện tại mặc định là _TreeNode và 
được tự đông tạo ra căn cứ vào Id và ParentId của các bản ghi.
Khi sử dụng thẻ này nên khai báo kết hợp với thẻ Groups trong layout.
37.ParametersTable
Ý nghĩa
Khai báo các thẻ xử lý dữ liệu của các trường điều kiện lọc báo cáo.
Cú Pháp
<root>
<TableCollection>
<ParametersTable>
<RowAdded>
<DefaultValue>
<TempColumn>
……
</ParametersTable>
Ghi chú: Thẻ RowAdded sẽ thực hiện khi bảng trong parameter thêm 1 dòng dữ liệu. Lưu ý: 
bảng ParametersTable luôn luôn có tối đa 1 dòng dữ liệu.
38.RequeryCondition
Ý nghĩa: Khai báo điều kiện để query lại thủ tục.
Cú pháp:
14
<RequeryCondition>Điều kiện</RequeryCondition>
Ví dụ: 
Nếu ngày DocDate1 hoặc DocDate2 vượt ra ngoài khoảng thời gian mặc định của thủ tục từ
@_DocDate1 đến @_DocDate2 thì thực hiện query thủ tục
<RequeryCondition>DocDate1&lt;&gt;@_DocDate1 OR DocDate2&lt;&gt;@_DocDate2
II. GlobalTemplate
- Global là các khai báo layout dành cho DataSource, mục đích để khai báo 1 nơi và dùng 
nhiều nơi. 
- Có thể dùng cho cả Explore và Editor 
- Thường chỉ dành cho việc lấy dữ liệu, không bao gồm các xử lý như Eval, Validator,...
- Muốn sử dụng cách lấy dữ liệu của Global có sẵn thì khai báo như cú pháp sau:
Glolal khai báo 
<TableCollection>
 <Item> <!--Tên Global-->
 <Name>B20Item</Name>
 <Source>Tbl</Source>
 <Alias>bi</Alias>
…
</Item>
Layout sử dụng khai báo:
<TableCollection>
 <Item template="Tên Global">
III. Evaluators
Ý nghĩa Cú Pháp/Ví dụ
Khai báo các Evaluator 
được thực hiện. Nhóm các 
Evaluator sẽ được khai báo 
riêng trong thẻ
<EvaluatorGroups> ngang 
hàng với thẻ <Evaluators>.
<Eval_Tên bảng chi tiết/Tên trường tác động_Ghi chú>
IV. Evaluator_X
Ý nghĩa
Mô tả thao tác xử lý của chương trình. Các <Evaluator_X> có thể được gọi từ các sự kiện.
<Evaluator_X> tác động đến dữ liệu của bảng nào thì được đặt trong Evaluators của bảng đó. 
Nhưng nó có thể được gọi từ bất cứ đâu.
Thuộc tính
- Các thẻ con được hỗ trợ theo từng ClassName (tham khảo chi tiết trong mục ClassName), dưới 
đây là các thẻ cơ bản:
15
Stt Tên thẻ con Nội dung
1 ClassName Khai báo các Class có sẵn để sử dụng
2 allowRunning Khai báo các trường hợp chạy Evaluator từ thuật toán.
3 Assembly Khai báo các DLL chứa các ClassName có sẵn
4 bSuppressChangeEvents Ngăn chặn việc thực thi các evaluator được gọi ở các sự 
kiện khi có sự thay đổi dữ liệu.
5 Controls Khai báo các điều khiển thuộc tính của control. Tham khảo 
chi tiết ở mục BravoEvaluator
6 DataMember Khai báo tên cột hay tên bảng tác động
7 Expr Điều kiện để thực thi các Evaluator. 
8 scopeType Phạm vi hoạt động 
9 Value Khai báo giá trị mặc định cho các cột
10 zCustomConnectionName Khai báo kết nối đến Server khác 
11 zResultDecimalRound Số thập phân được làm tròn khi tính kết quả
12 zScopeExpr Khai báo biểu thức điều kiện tìm kiếm các dòng thảo mãn 
để thực hiện Evaluator.
…… ….
- Các ClassName hỗ trợ:
Stt Tên thuộc tính Nội dung
1 BravoEvaluator Thực thi việc định nghĩa giá trị cho các cột hoặc điều khiển 
các control
2 BravoAddRowEvaluator Thêm một dòng mới vào một bảng
3 BravoAllocationEvaluator Dùng để phân bổ cho các dòng chi tiết.
4 BravoBindingMember Tự động lấy các thông tin giống như binding trong lookup
5 BravoCommandkey Thực thi một lệnh
6 BravoCopyValue Copy giá trị
7 BravoDeleteRowEvaluator Các tác động xóa dòng chi tiết
8 BravoMoneyEvaluator Thực thi việc tính toán trên các cột tiền
9 BravoSelectRowEvaluator Dùng để chỉ định bảng/ bản ghi được chọn 
10 BravoServerConstraint Thực thi việc đẩy dữ liệu được trả về sau một thủ tục vào 
một cột hoặc 1 bảng
11 BravoTableAggregator Dùng để tập hợp các dòng dữ liệu trước khi thực thi việc 
lưu dữ liệu
12 BravoTableOrderer Dùng để đánh số thứ tự các dòng trong bảng
16
13 BravoPasswordPolicyValidator Kiểm tra một mật khẩu có đáp ứng chính sách bảo mật hay 
không (theo khai báo M_PasswordMinLength và 
M_PasswordComplex)
Ghi chú
- Khi Load form thì các Eval bảng mẹ mà có khai báo thẻ Controls sẽ được ưu tiên thực hiện trước. 
Như vậy khi có các Eval thiết lập các control ở các bảng con và bảng cháu thì cần phải đặt ở bảng 
Parent, nếu đặt trong các sự kiện ServerLoaded hoặc RowAdded…. ở bảng con/ bảng cháu đều 
không được do lúc đó các control chưa được khởi tạo.
- Các thẻ con hỗ trợ trong Evaluator phụ thuộc vào ClassName. Tham khảo chi tiết trong tài liệu 
từng Evaluator.
1.scopeType
Ý nghĩa
Khai báo phạm vi hoạt động của Evaluator. 
Cú pháp
 <Evaluators>
<Eval_X>
<scopeType>Thuoc_tinh</scopeType>
 . . . . .
</Eval_X>
</Evaluators>
Thuộc tính
Stt Tên thuộc tính Nội dung
1 Relation Tác động dữ liệu phụ thuộc vào mối quan hệ giữa bảng gọi các 
Evaluator và bảng khai báo Evaluator. (cơ chế giống bản 7). Vậy cơ 
chế Relation được hiểu như nào. VD: Nếu Eval X được định nghĩa ở 
bảng con. Khi:
17
+ Trong các sự kiện ColumnChanged …. của bảng con được gọi đến 
Eval này thì phạm vi tác động là bản ghi hiện tại của bảng con 
+ Nếu Eval X được gọi ở các sự kiện của bảng cháu: thì phạm vi tác 
động là các dòng cháu của bảng con đó.
+ Nếu Eval X được gọi ở sự kiện của bảng mẹ thì phạm vi tác động là 
toàn bộ các dòng của bảng con của bảng mẹ đó.
2 CurrentView Chỉ thực thi với bảng dữ liệu hiện thời theo trình tự các dòng theo cột 
được sắp xếp.
3 CurrentRowView Chỉ thực thi với bản ghi hiện thời dù được gọi từ bất cứ đâu
4 Table Thực thi với toàn bộ bảng dữ liệu
Ghi chú:
- Giá trị mặc định là Relation (trừ khi Evaluator có CalassName là BravoTableOrderer thì giá 
trị mặc định là CurrentView và ClassName là BravoTableAggregator thì giá trị mặc định là 
Table).
- Chú ý khi các Eval có sử dụng thẻ zScopeExpr thì có thể làm thay đổi phạm vi tác động của 
thẻ scopeType
2. allowRunning
Ý nghĩa
Khai báo cho phép xác định Evaluator sẽ được thực thi khi nào.
Cú pháp
<Evaluators>
<Eval_X>
<allowRunning>Thuoc_tinh</allowRunning >
 . . . . .
</Eval_X>
</Evaluators>
Thuộc tính
Stt Tên thuộc tính Nội dung
18
1 Never Không bao giờ chạy
2 Always Luôn luôn chạy (giá trị ngầm định)
3 Nonnested Chỉ thực thi khi không gọi lồng nhau
4 Nested Chỉ thực thi khi gọi lồng nhau
5 SameTable Chỉ thực thi khi gọi từ bảng có khai báo Evaluator
6 BeginOfScope Chỉ thực thi với dòng đầu tiên trong giới hạn của Evaluator (tùy theo 
scopeType là gì)
7 EndOfScope Chỉ thực thi với dòng cuối cùng trong giới hạn của Evaluator
8 Once Eval chỉ dc chạy 1 lần, ngay sau khi chạy Eval thì chương trình tự 
động set thuộc tính allowRunning = Never
Ví dụ
Trong Editor của chứng từ nếu có khai báo: 
 <Eval_Ct0_Amount>
 <ClassName>BravoMoneyEvaluator</ClassName>
 <DataMember>Amount</DataMember>
 <zResultDecimalRound>Currency('DecimalRound')</zResultDecimalRound>
 <zMoneyValue>OriginalAmount</zMoneyValue> 
<allowRunning>Nonnested</allowRunning> 
<zNumberValue>IIF(ExchangeRateOperator=1,Parent.ExchangeRate,1/Parent.ExchangeR
ate)</zNumberValue> 
<zResultMarginValue>IIF(UpdatedColumn()='Amount',Parent.MoneyDiffValue0,0)</zResult
MarginValue>
 <Expr>Empty(Gia_Tb_Tt)</Expr>
</Eval_Ct0_Amount>
- Evaluator <Eval_Ct0_Amount> sẽ thực thi việc tính cột Amount = giá trị khai báo ở 
<zMoneyValue> * giá trị trả về trong <zNumberValue>
- Evaluator <Eval_Ct0_Amount> đang được gọi đến từ ColumChanged ở <OriginalAmount> 
và <Amount>. Đây là gọi trực tiếp và không lồng nhau. 
- Tuy nhiên nó còn được gọi trong EvaluatorGroups sau:
<EvaluatorGroups>
 <EvaluatorGroup_ExchangeRate>
 <Eval_Ct0_UnitPrice />
 <Eval_Ct0_Amount9 />
19
 <Eval_DiscountAmount />
 <Eval_Ct0_Amount4>TotalAmount4&lt;&gt;0</Eval_Ct0_Amount4>
 <Eval_Ct0_UnitCost />
 <Eval_Ct0_Amount />
 <Eval_TotalAmount3 />
 <Eval_TotalAmount0 />
 <Eval_Prepay_ExchangeRate_DefaultValueFromParent />
 </EvaluatorGroup_ExchangeRate>
Chương trình sẽ thực thi lần lượt các Evaluator theo khai báo. Đầu tiên sẽ thực thi 
<Eval_Ct0_UnitPrice/>. Điều này chắc chắn sẽ làm thay đổi cột Amount nên sẽ gọi đến các 
Evaluator trong ColumnChanged của cột Amount. Tuy nhiên nếu <Eval_Ct0_Amount> đã khai báo
<allowRunning>Nonnested</allowRunning>rồi nên sẽ không bị gọi khi thực thi các Evaluator trong 
Group này nữa. Việc khai báo này sẽ tránh xảy thực thi các Evaluator một cách thừa.
3. bSuppressChangeEvents
Ý nghĩa
Khai báo cho phép ngăn chặn thực thi các Evaluator khi có sự thay đổi. Các giá trị có thể nhận là 
True/Flase, trong đó giá trị mặc định là False
Cú pháp
<Evaluators>
 <Eval_X>
<bSuppressChangeEvents>Thuoc_tinh</bSuppressChangeEvents>
 . . . . .
 </ Eval_X>
</Evaluators>
Ví dụ:
Giả sử Chức năng chọn đơn đặt hàng bán ở Editor của Hóa đơn nếu khai báo:
 <Eval_SaleOrder_GetData>
 <ClassName>BravoServerConstraint</ClassName>
 <CommandKey>BizDocSO</CommandKey>
20
 <zCtorArgs>AutoSearch=True;SelectKey=CustomerCode LIKE
'{=ISNULL(CustomerCode,'%')}' AND DocDate&lt;='{=DocDate}' AND
CurrencyCode='{=CurrencyCode}' AND Post_TheKho=1 AND ISNULL(Closed,0)=0;</zCtorArgs>
 <Command>usp_B30AccDocSales_ImportFromB30BizDoc_SO</Command>
 <DataMember>Ct0</DataMember>
 <zTargetValueMember>BizDocId_SO</zTargetValueMember>
 <zSourceValueMember>BizDocId</zSourceValueMember> 
<zSourceReturnMember>Id,BizDocId,DocNo,Description</zSourceReturnMember>
 </Eval_SaleOrder_GetData> <RowAdded>
Sau khi tích chọn các dòng ở đơn hàng và đóng màn hình chọn lại, các dòng chi tiết sẽ được chèn 
vào Grid của Hóa đơn. Lúc đó chương trình sẽ thực thi việc gọi đến các Evaluator khai báo trong 
RowAdded, ColumnChanged…. Nhưng nếu khai báo 
<bSuppressChangeEvents>True</bSuppressChangeEvents> thì các Evaluator này sẽ không 
được thực thi nữa. Đây là cách khai báo nguồn để ngăn chặn việc thực hiện các tác động không 
cần thiết 
Ghi chú
- Thẻ này sẽ không có tác dụng với Evaluator có ClassName là BravoCommandkey và 
BravoSelectRowEvaluator.
4. zScopeExpr
Ý nghĩa
Khai báo biểu thức điều kiện để tìm các dòng thỏa mãn khi thực thi các Evaluator. Khi sử dụng thẻ
này có thể sẽ làm thay đổi phạm vi hoạt động của các Evaluator đã khai báo trong thẻ
<zScopeType>. (lọc tiếp các dòng trong phạm vi scopeType)
Cú pháp
<Evaluators>
 <Eval_X>
<zScopeExpr>Bieu_thưc_dieu_kien</zScopeExpr>
 . . . . .
 </Eval_X>
21
</Evaluators>
Ví dụ
Trên Editor của các chứng từ Hóa đơn dịch vụ, có Evaluator xử lý tiền chiết khấu đang khai báo: 
<Eval_Ct0_OriginalDiscountAmount_Default0>
 <DataMember>OriginalDiscountAmount</DataMember>
 <Value>0</Value>
 <zScopeExpr>!Empty(OriginalAmount9)</zScopeExpr>
</Eval_Ct0_OriginalDiscountAmount_Default0>
Tức là Evaluator này chỉ chạy với các dòng có tiền hàng.
Ghi chú:
- Khi Evaluator có khai báo đồng thời cả <zScopeExpr> và <Expr> thì <zScopeExpr> sẽ chạy 
trước để tìm dòng thỏa mãn điều kiện, sau khi tìm được dòng rồi sẽ thực hiện <Expr> để
kiểm tra tiếp trước khi chạy Evaluator
- Khi sử dụng thẻ này có thể sẽ làm thay đổi phạm vi hoạt động của các Evaluator đã khai báo 
trong thẻ <scopeType>. VD: Nếu <scopeType> đang nhận giá trị là Relation hoặc không khai 
báo gì, Evaluator được khai báo ở bảng con, thì bất kể Evaluator đó được gọi từ đâu thì tất 
cả các dòng thỏa mãn điều kiện được khai báo trong thẻ <zScopeExpr> đều thuộc phạm vi 
tác động của Evaluator này. (zScopeExpr sẽ luôn là bảng mẹ nếu Eval đặt trong sự kiện 
RowDeleted)
5. Expr 
Ý nghĩa: Biểu thức điều kiện để chạy Evaluator
Cú pháp
 <Eval_X>
 <Expr>Bieu_Thuc</Expr>
 </Eval_X>
6. commandFormState
Ý nghĩa
22
Khai báo trạng thái của form khi được mở.
Cú pháp
 <Eval_X>
 
 <commandFormState>Gia_tri</commandFormState>
. . . . .
 </Eval_X>
Ví dụ
Trên Editor phiếu xuất đang khai báo trong bảng Parent: 
 <AfterCommit>
 <Eval_AutoPrintVoucher>
 <ClassName>BravoCommandKey</ClassName>
<CommandKey>AccDocViewer_PX 
AutoRun=True;StartupCommandKey=QuickPrint;PrimaryKeyValue={=Id};</CommandKey>
 <Expr>ISNULL(AutoPrintVoucher,False)=True</Expr>
 <commandFormState>Minimized</commandFormState>
 </Eval_AutoPrintVoucher>
 </AfterCommit>
 </ServerCommand>
Mục đích là khi lưu chứng từ và có tích vào nút In sau khi lưu thì chương trình sẽ thực hiện Evaluator 
gọi đến Command mẫu in chứng từ. 
Nhưng do mục đích là in luôn nên sẽ ẩn màn hình mẫu in bằng lệnh 
<commandFormState>Minimized</commandFormState>, gọi luôn lệnh QuickPrint để gửi lệnh in 
đến máy in.
Ghi chú
- Thẻ này chỉ hỗ trợ với các Evaluator mà có ClassName là BravoCommandKey. 
- Tham số giá trị có thể nhận:
+ Normal: Giá trị mặc định.
+ Minimized: Màn hình thu nhỏ dưới thanh Taskbar
+ Maximized: Mở rộng toàn màn hình
23
7. zCtorArgs 
Ý nghĩa
Khai báo tham số truyền vào lệnh thực thi một Command. Tương ứng với cột CtorArgs trong bảng 
B00Command
Cú pháp
 <Eval_X>
 
 <zCtorArgs>chuoi_tham_so</zCtorArgs>
. . . . .
 </Eval_X>
Ghi chú
- Trường hợp gọi đến 1 command là một reporter nhưng có đặt thuộc tính AutoRun= True, 
mà muốn ẩn hiển thị in liên tục của báo cáo thì có thể bổ sung khai báo thuộc tính 
DataSelector = False; 
VD: ở màn hình Explorer của Tổng hợp chứng từ ngân hàng điện tử, có chức năng gọi đến 
báo cáo “Nhật ký sử dụng ngân hàng điện tử” đang được khai báo như sau: 
 <REP_EInvoiceLog_Viewer>
 <zCtorArgs>IdList={=GETXMLSELECTEDDATA('Ct', 'Id,DocCode')}; AutoRun=True;
DataSelector=False;</zCtorArgs>
 </REP_EInvoiceLog_Viewer>
- Tham số IgnorePrintSettings=True/False; chỉ định có đọc thiết lập định dạng in hay không 
khi sử dụng class QuickPrinting để in nhanh
8. zCustomConnectionName
Ý nghĩa
Khai báo kết nối đến một kết nối data khác khi thực thi các lệnh
Cú pháp
 <Eval_X>
 
 <zCustomConnectionName>Ten_ket_noi</zCustomConnectionName>
24
. . . . .
 </Eval_X>
Ghi chú
- Để khai báo được kết nối, đầu tiên người dùng phải khai báo một kết nối trong file Config ở 
mục connectionStrings.
- Thẻ này chỉ hỗ trợ với các Evaluator mà có ClassName là BravoServerConstraint, 
BravoBindingMember. Ngoài ra thẻ này còn hỗ trợ cả với Lookup, Explorer, Repoter và 
Validator (BravoServerConstraintValidator, BravoUniqueKeyValidator)
- Với các lookup control, evaluator, validator nếu không có khai báo zCustomConnectionName 
trong Template và trong layout thì sẽ sử dụng giá trị zCustomConnectionName của form.
- Khi sử dụng zCustomConnectionName ở lookup hoặc BravoBindingMember: Trường hợp 
khai báo trực tiếp lookup trên layout thì kết nối sẽ ăn theo khai báo 
zCustomConnectionName. Còn khi khai báo trong B00Lookup thì chương trình sẽ lấy theo 
khai báo kết nối ở cột ConnectionName trong B00Lookup.
9. bSuppressLookupEvents
Ý nghĩa
Khai báo cho phép ngăn các lookup control trong DataEditor không tự động validate và update 
bindingMembers khi thay đổi giá trị, merge, xóa, thêm dòng.
Cú pháp
 <Eval_X>
 
 <bSuppressLookupEvents>Gia_tri</ bSuppressLookupEvents>
. . . . .
 </Eval_X>
Ghi chú
- Gia_tri có thể nhận của thẻ này là True/False. Giá trị mặc định là False
- Trường trường hợp merge dữ liệu lớn vào Grid, để tăng tốc độ insert dòng, người dùng có 
thể sử dụng thẻ này để ngăn việc thực thi các lookup control.
25
V. EvaluatorGroups
Ý nghĩa
Khai báo danh sách các Evaluator sẽ cùng được thực thi khi EvaluatorGroups được gọi.
Cú pháp
<root>
 <TableCollection>
 <Ten_bang>
 <EvaluatorGroups>
 <EvaluatorGroup_X>
<Danh sách các Evaluator>
 </EvaluatorGroup_X>
 </EvaluatorGroups>
. . . . . 
VI. ServerLoaded
Ý nghĩa
Khai báo các tác động sau khi đã tải dữ liệu từ server bằng việc thực hiện danh sách các Evaluator.
Chỉ thực hiện khi F3 hoặc Ctrl+ F2. Mục đích của thẻ để tối ưu việc tải dữ liệu, khi có nhiều bảng 
mẹ, con để view không cần join nhiều
Cú pháp
<root>
 <TableCollection>
 <Ten_bang>
<ServerLoaded>
<Danh sách các Evaluator>
</ServerLoaded>
. . . . . 
Ghi chú
- Các Evaluator tác động đến các định dạng, ẩn hiện, … các control không khai báo trong sự
kiện này. Do khi đó các control chưa được khởi tạo hoặc chưa sẵn sàng, nên các Eval này sẽ
không có tác dụng.
26
VII. ColumnChanging
Ý nghĩa
Khai báo các tác động (bằng Evaluator) khi bắt đầu đang thay đổi giá trị của trường dữ liệu. Sự kiện 
được thực hiện khi chúng ta bắt đầu có sự tác động thay đổi giá trị của trường dữ liệu đó (lưu ý là 
sự thay đổi chưa hoàn thành). 
Cú pháp
<root>
 <TableCollection>
 <Ten_bang>
 <ColumnChanging>
 <Ten_Truong>
<Danh sách các Evaluator>
</Ten_Truong>
</ColumnChanging>
. . . . . 
VIII. ColumnChanged
Ý nghĩa
Khai báo các tác động (bằng Evaluator) khi bắt đầu đã thay đổi giá trị của trường dữ liệu. 
Cú pháp
<root>
 <TableCollection>
 <Ten_bang>
 <ColumnChanged>
 <Ten_Truong>
<Danh sách các Evaluator>
</Ten_Truong>
</ColumnChanged>
. . . . . 
27
IX. RowAdded
Ý nghĩa
Khai báo nhóm các Evaluator sẽ được thực thi khi khởi tạo giá trị. Với bảng mẹ sẽ được gọi khi F2 
thêm mới, còn với bản con thì là thêm dòng. 
Cú pháp
<root>
 <TableCollection>
 <Ten_bang>
 <RowAdded>
<Danh sách các Evaluator>
 </RowAdded>
. . . . . 
Ghi chú:
- Trong RowAdded có thể tự định nghĩa các Evaluator hoặc gọi đến các Evaluator đã định nghĩa 
sẵn.
- Trong trường hợp đẩy dữ liệu vào bảng từ một Eval dạng ServerContraint thì các Evaluator khai 
báo trong RowAdded có thể không được thực thi nếu có sử dụng khai báo bSuppressChangeEvents 
(tham khảo mục bSuppressChangeEvents)
- Khi thêm mới 1 dòng trong bảng (Bằng giao diện, NSD click thêm dòng mới)
✓ Thêm 1 dòng trắng, giá trị cột bằng NULL hoặc DefaultValue.
✓ Thực hiện RowAdded.
✓ Gán giá trị nếu có (zCarryingColumns, Copy/Paste dòng).
✓ Thực hiện các sự kiện ColumnChanging, ColumnChanged nếu bị ảnh hưởng bởi việc gán giá 
trị.
✓ Không gọi TableSummed.
- BravoAddRowEvaluator được coi như NSD click thêm dòng mới => thực hiện tương tự như trên.
- Khi gọi RowAdded, giá trị cột bằng NULL hoặc DefaultValue
X. RowCopied
Ý nghĩa
Khai báo nhóm các Evaluator sẽ được thực thi khi nhân bản giá trị (Ctrl+ F2)
28
Cú pháp
<root>
 <Tables>
 <Ten_bang>
 <RowCopied>
<Danh sách các Evaluator>
 </RowCopied>
. . . . . 
 </Ten_bang>
 </Tables>
</root>
Ví dụ
Khi nhân bản chứng từ (Ctrl+F2). Nếu muốn ô DocDate lấy ngày hiện tại đồng thời số chứng từ tự 
động tăng theo quy luật của DocDate thì trong ParentTable khai báo: 
 <RowCopied>
 <Eval_DocNo_ResetValue>
 <DataMember>DocNo</DataMember>
 <Value>NULL</Value>
 <bSuppressChangeEvents>True</bSuppressChangeEvents>
 </Eval_DocNo_ResetValue>
 <Eval_DocDate_ResetValue>
 <DataMember>DocDate</DataMember>
 <Value>GETDATE()</Value>
 </Eval_DocDate_ResetValue>
 </RowCopied>
Ghi chú
- Các Evaluator được khai báo trong RowCopied sẽ được thực thi lần lượt từng dòng
XI. Expressions
Ý nghĩa
29
Đóng vai trò như một Macro, thay thế cho một chuỗi những biểu thức dài đã được khai báo.
Cú pháp
<root>
 <TableCollection>
 <Ten_bang>
 <Expressions>
 <Ten_Expression>Bieu_Thuc</ Ten_Expression >
</Expressions>
. . . . . 
XII. TempColumns
Ý nghĩa
Khai báo trường tạm để thực hiện tính toán trong các ColumChanged, ColumnChanging, 
Evaluator….Phạm vi sử dụng như các cột thật, tuy nhiên không lưu các cột này.
Cú pháp
<root>
 <TableCollection>
 <Ten_bang>
 <TempColumns>
 <Ten_truong>
<Các thẻ khai báo các thuộc tính của trường>
</Ten_truong>
 </TempColumns>
. . . . . 
Thẻ thuộc tính
Tên thẻ thuộc tính Nội dung
30
1 <DataType> Quy định kiểu của trường tạm. Cú pháp khai báo: 
<DataType>Kieu_Du_Lieu</DataType>. Trong đó các giá trị 
có thể nhận là System.DateTime, System.Boolean, 
System.Byte, System.Char…. (tham khảo tại đường dẫn: 
https://msdn.microsoft.com/enus/library/system.data.datacolumn.datatype(v=vs.110).asp
x)
2 <AllowDBNull> Khai báo cho phép cột tạm nhận giá trị NULL hay không. 
3 <DefaultValue> Khai báo giá trị mặc định cho trường tạm. Cú pháp khai báo 
<DefaultValue>Gia_tri</DefaultValue>. Trong đó giá trị khai 
báo mặc định phải phù hợp với kiểu của trường đã khai báo 
trong DataType.
4 <ReadOnly> Khai báo xác định có cho phép thay đổi giá trị của cột tạm 
khi đã insert dòng mới vào không. Giá trị có thể nhận là True 
hoặc False. Giá trị mặc định là False
5 <Unique> Khai báo xác định có kiểm tra tính duy nhất của cột khi chèn 
thêm dòng mới vào bảng.
6 <MaxLength> Khai báo độ rộng tối đa của trường.
XIII. BeforeTransaction
Ý nghĩa
Khai báo các tác động trước khi lưu dữ liệu.
Cú pháp
<root>
 <TableCollection>
 <Ten_bang>
<BeforeTransaction>
<Danh sách các Evaluator>
</BeforeTransaction>
. . . . . 
Ghi chú
31
- Thường các khai báo trong BeforeTransaction là các tác động tính toán, sắp xếp… lại dữ liệu 
trước khi lưu.
XIV. ServerUpdated
Ý nghĩa
Khai báo các tác động khi đã lưu xong dữ liệu. Thường dùng để tải lại dữ liệu một số trường không 
có sẵn giá trị hoặc thực thi việc lưu dữ liệu vào một bảng khác nào đó.
Cú pháp
<root>
 <TableCollection>
 <Ten_bang>
<ServerUpdated>
<Danh sách các Evaluator>
</ServerUpdated>
. . . . . 
Ghi chú
- Thường dùng để lấy ra một số trường không có sẵn khi thêm mới như Stt, RowId để tính toán, 
hiển thị hoặc cập nhật vào bảng con, cháu….
- Khi dữ liệu đã tải xong thì ServerUpdated sẽ chỉ thực hiện 1 lần và thực hiện đồng loạt cho tất cả
các dòng trong bảng đó.
- nRepeatTableUpdated : để chỉ định số lần lặp lại gọi ServerUpdated khi lưu dữ liệu : khi phát lệnh 
(INSERT/UPDATE/DELETE) lưu xong tất cả các bảng, trước khi commit transaction, ServerUpdated 
sẽ được thực hiện cho tất cả các dòng trong các bảng, sau đó nếu dữ liệu có thay đổi (so với khi đã 
lưu) thì sẽ thực hiện lưu các dòng thay đổi. Ngầm định = 0.
XV. DefaultValues
Ý nghĩa
Khai báo giá trị ngầm định cho các cột.
Cú pháp
32
<root>
 <TableCollection>
 <Ten_bang>
<DefaultValues>
<Ten_Truong>Gia_tri_mac_dinh</Ten_truong> 
</DefaultValues>
. . . . . 
Ghi chú
- Chỉ áp dụng khai báo giá trị mặc định trong thẻ DefaultValues cho các trường được định nghĩa 
trong bảng/view và các trường được khai báo trong ServerLoading. Còn các trường được khai báo 
trong TempColumns được định nghĩa giá trị mặc định luôn trong TempColumns.
XVI. CopyList
Ý nghĩa
Khai báo danh sách các trường sẽ được copy hoặc không được copy khi thực hiện thao tác Ctrl+F2.
Chế độ thực thi của thẻ này sẽ được quy định bởi giá trị khai báo trong thẻ CopyMode
Cú pháp
<root>
 <TableCollection>
 <Ten_bang>
 <CopyList>Danh_Sach_truong</CopyList>
. . . . . 
Ghi chú
- Nếu ko khai báo thì ko copy gì cả trừ các giá trị default
- Khi Ctrl+F2 chương trình sẽ bỏ qua tất cả các trường có khai báo Unique. Nếu khai báo 
CopyMode = Include thì chương trình sẽ copy tất cả các cột được khai báo trong CopyList 
mà không kiểm tra giá trị Unique
XVII. CopyListNew
Ý nghĩa
33
Khai báo danh sách các trường sẽ được copy hoặc không được copy khi thực hiện thao tác F2. 
Chế độ thực thi của thẻ này sẽ được quy định bởi giá trị khai báo trong thẻ CopyMode
Cú pháp
<root>
 <Tables>
 <Ten_bang>
 <CopyListNew>Danh_Sach_truong</CopyListNew>
. . . . . 
Ghi chú
- Nếu ko khai báo thì không copy gì cả trừ các giá trị default
- Khi F2 chương trình sẽ bỏ qua tất cả các trường có khai báo Unique. Nếu khai báo 
CopyMode = Include thì chương trình sẽ copy tất cả các cột được khai báo trong 
CopyListNew mà không kiểm tra giá trị Unique
XVIII. CopyMode
Ý nghĩa
Khai báo cho phép lựa chọn chế độ copy khi thực thi các thao tác F2 hoặc Ctrl+ F2
Cú pháp
<root>
 <Tables>
 <Ten_bang>
 <CopyMode>Thuoc_tinh</CopyMode>
. . . . . 
 </Ten_bang>
 </Tables>
</root>
Thuộc tính
Stt Tên thuộc tính Nội dung
34
1 Never Không bao giờ thực hiện copy mặc dù có khai báo giá trị trong các thẻ 
CopyList, CopyListNew
2 Include Copy các trường dữ liệu được khai báo trong các thẻ CopyList, 
CopyListNew
3 Exclude Copy tất cả không bao gồm các trường dữ liệu được khai báo trong các 
thẻ CopyList, CopyListNew
Ví dụ:
Trên Editor của các chứng từ thì bảng ChildTable_Paybill (bảng tích thanh toán) không cho phép 
copy khi F2 hoặc Ctrl+ F2 sẽ khai báo:
 <ChildTable_Paybill>
 <Name>vB30AccDocPaybill</Name>
 <Alias>Paybill</Alias>
 <ChildKey>RowId</ChildKey>
 <ParentKey>RowId</ParentKey>
 <ParentTable>Ct0</ParentTable>
 <CopyMode>Never</CopyMode>
Ghi chú:
- Khi F2 hoặc Ctrl+ F2 sẽ bỏ qua tất cả các trường có khai báo Unique. Nếu khai báo CopyMode = 
Include thì chương trình sẽ copy tất cả các cột được khai báo trong CopyList hoặc CopyListNew mà 
không kiểm tra giá trị Unique.
- Giá trị mặc định của thẻ này khi không khai báo tương đương với giá trị Exclude và 
CopyList/CopyListNew= ‘’. ( nghĩa là copy tất cả các cột không bao gồm các cột unique)
XIX. ReadOnly
Ý nghĩa
Khai báo cho phép xác định bảng dữ liệu có được lưu hay không.
Cú pháp
<root>
 <TableColection>
35
 <Ten_bang>
 <ReadOnly>Thuoc_tinh</ReadOnly>
....
Thuộc tính
Stt Tên thuộc tính Nội dung
1 True Không thực hiện lưu các thông tin của bảng
2 False Giá trị mặc định, lưu các giá trị của bảng
XX. RefreshColumnList
Ý nghĩa
Khai báo các trường sẽ được tải lại sau khi lưu. Bản chất là việc truy vấn lại dữ liệu sau khi lưu, 
thay vì phải select tất cả các cột thì chỉ select các cột cần sử dụng.
Cú pháp
<root>
 <TableCollection>
 <Ten_bang>
<RefreshColumnList>Danh_Sach_truong</RefreshColumnList>
....
Ghi chú
- Việc truy vấn lại giá trị một số cột sau khi lưu do một số cột chỉ được cấp phát giá trị sau khi lưu 
hoặc giá trị có thể thay đổi bởi tác động từ các trigger…. Vì vậy nếu muốn chỉ đích danh các cột cần 
truy vấn lại để sử dụng vào một mục đích nào khác thì sử dụng thẻ này.
- Bình thường nếu không khai báo gì thì giá trị ngầm định select sau khi update sẽ là các cột Id, các 
RelationKey, CreatedAt, CreatedBy.
XXI. ServerCommand
Ý nghĩa
Khai báo các sự kiện liên quan đến việc tải và lưu dữ liệu
36
Cú pháp
<root>
 <TableCollection>
 <Ten_bang>
<ServerCommand>
……….
</ServerCommand>
....
Các thẻ con
Tên thẻ Nội dung
1 <Select> Lấy dữ liệu từ 1 thủ tục
2 <Merge> Khai báo các thủ tục được thực thi khi thêm dòng. Thẻ này không 
hỗ trợ với bảng mẹ
3 <BeforeCommit> - Khai báo thủ tục được thực thi cùng transaction với việc lưu dữ 
liệu vào bảng chi tiết, chỉ áp dụng cho bảng mẹ (chỉ được 1 thủ 
tục).
- Hỗ trợ khai báo tham số Parameters như 
BravoServerConstraint (tham khảo thêm phần tài liệu về 
BravoServerContraint)
4 <AfterCommit> Khai báo các Evaluator được thực thi sau khi lưu dữ liệu, chỉ áp 
dụng cho bảng mẹ
XXII. RowDeleting
Ý nghĩa
Khai báo danh sách các Evaluator sẽ được thực thi khi bắt đầu xóa dòng ở Grid trên Editor (bắt đầu 
sự kiện xóa dòng và chưa thực thi xong)
Cú pháp
<root>
 <TableCollection>
 <Ten_bang>
 <RowDeleting>
 <Danh_sách_Evaluator>
37
</RowDeleting>
....
Ghi chú
- Danh sách các Evaluator sẽ được thực thi lần lượt trên từng dòng.
- Các Eval khai báo trong sự kiện này sẽ được chạy với các dòng sẽ bị xóa, lúc này các giá 
trị trên các dòng vẫn còn, thường được sử dụng để tính toán.
XXIII. UniqueKey
Ý nghĩa
Kiểm tra trùng dữ liệu ngay trên màn hình nhập liệu ở các máy client
Cú pháp
<root>
 <TableCollection>
 <Ten_bang>
 <UniqueKey>
 <Ten_Unique>Danh_sach_ten_truong</Ten_Unique>
 </UniqueKey>
....
Ghi chú:
- Việc kiểm tra dữ liệu duy nhất của các trường khai báo là việc thực thi kiểm tra trực tiếp dữ 
liệu đang nhập trên màn hình nhập liệu ở từng máy client.
- Việc kiểm tra tính duy nhất chỉ được thực thi khi: người dùng gõ giá trị, khi thêm dòng mới 
trong grid với giá trị ngầm định của cột, khi thêm dòng mới bằng BravoAddRowEvaluator. 
Riêng khi merge dòng bằng BravoServerConstraintEvaluator thì chương trình sẽ căn cứ vào 
thẻ checkUnique để thực thi việc kiểm tra giá trị trùng (check trùng giữa dữ liệu merge vào 
với dữ liệu đang có ở bảng đích). (tham khảo mục BravoServerContraintEvaluator)
- Ngoài việc sử dụng thẻ <UniqueKey> để kiểm tra tính duy nhất của dữ liệu đang nhập trên 
màn hình editor ở các máy client, chúng ta có thể sử dụng định nghĩa tính chất unique của 
các cột được định nghĩa trong TempColumns hoặc từ thuộc tính của cột khi thiết kế cơ sở 
dữ liệu.
38
- VD: Trên màn hình Editor có cột CustomerCode được khai báo trong TempColumns, để kiểm 
tra tính duy nhất có thể khai báo:
 <TempColumns>
 <CustomerCode>
 <UniqueKey>True</UniqueKey>
 </CustomerCode>
 </TempColumns>
- Khi F2 hoặc Ctrl+ F2 chương trình sẽ bỏ qua tất cả các trường có khai báo Unique. Nếu khai 
báo CopyMode = Include thì chương trình sẽ copy tất cả các cột được khai báo trong 
CopyList hoặc CopyListNew mà không kiểm tra giá trị Unique
- Chỉ thực hiện kiểm tra Unique với các khai báo <UniqueKey> của một bảng nhiều hơn 1 cột 
khi và chỉ khi tất cả các giá trị của các cột đều khác trắng.
XXIV. AssignmentUpdateList
Ý nghĩa
Khai báo danh sách các trường có cơ có chế đặc biệt khi update dữ liệu vào bảng 
([ColA=ColA+@_ColdA]) (có nghĩa là khi lưu thì giá trị các cột này sẽ được cập nhật = giá trị cũ + 
phần chênh lệch giữa giá trị cũ và mới)
Cú pháp
<root>
 <TableCollection>
 <Ten_bang>
 <AssignmentUpdateList> Danh_sach_ten_truong</AssignmentUpdateList>
....
XXV. FilterKey
Ý nghĩa: là điều kiện sau Where của mệnh đề lấy dữ liệu từ bảng/view được khai báo trong thẻ 
Name.
Cú pháp
<root>
 <TableCollection>
 <Ten_bang>
<FilterKey>Bieu_thuc</FilterKey>
39
. . . . . 
Ghi chú
- Cú pháp trong phần biểu thức trả về trong thẻ này phải phù hợp với cú pháp của SQL vì mệnh 
đề này được thêm vào phần Where của câu query.
XXVI. CommandValidators
Ý nghĩa: Thẻ CommandValidators chứa toàn bộ các khai báo kiểm tra sự hợp lệ khi thực hiện các 
lệnh command (các lệnh được khai báo trong B00Command).
Cú pháp
<root>
 <TableCollection>
 <Ten_bang>
<CommandValidators>
 <Ten_CommandValidators>
 <CommandName>Cac_lenh </CommandName>
 <Expr>Bieu_thuc</Expr>
 <Text>
 <Vietnamese>Câu thông báo</Vietnamese>
. . . .
 </Text
</Ten_CommandValidators>
</CommandValidators>
. . . . . 
Các thẻ con
Stt Tên thuộc tính Nội dung
1 CommandName Khai báo list các lệnh thực hiện với Form được khai báo trong 
B00Command.
2 Expr Biểu thức điều kiện để kiếm tra tính đúng sai của CommandValidators. 
Nếu biểu thức trả về giá trị False thì CommandValidator lỗi và sẽ ngăn 
không cho thực hiện các lệnh Command cho bản ghi đang chọn
3 Text Câu thông báo lỗi khi CommandValidators nhận giá trị False
40
4 bIgnoreIfNoRow Các thức thực hiện khi không có dòng dữ liệu nào. Giá trị có thể nhận:
+ True: Bỏ qua không thực thi khi không có dòng dữ liệu nào
+ False: Vẫn thực hiện
Ví dụ
-Khi muốn cấm người dùng không được nhập mới chứng từ, sửa chứng từ khi đứng ở đơn vị tổng 
hợp trên phiếu xuất. Chúng ta có thể khai báo: 
<CommandValidators>
 <CreateData>
 <CommandName>New,NewAsCopy,Edit</CommandName>
 <Expr>BRANCH('IsGroup')=0</Expr>
 <Text>
 <Vietnamese>Đơn vị cơ sở tổng hợp không được cập nhập dữ liệu.</Vietnamese>
 </Text>
 </CreateData>
</CommandValidators>
Ghi chú
- CommandValidators khai báo ở bảng nào thì dòng hiện thời của bảng đó sẽ được evaluate với 
biểu thức.
- Chú ý việc khai báo từng lệnh Command trên từng màn hình.VD: các lệnh Delete hoặc Recall 
…là những lệnh command được hỗ trợ ở Explorer, các lệnh Save, Edit… là những lệnh hỗ trợ 
ở Editor
- Có hỗ trợ khai báo Template để có hiệu lực với tất cả các màn hình cùng Template.
XXVII. TempTableCollection
Ý nghĩa: 
Hỗ trợ khai báo bảng tạm. Bảng tạm được tham chiếu bằng Alias còn Name dùng để khai báo tên 
bảng trong CSDL để copy cấu trúc. Bảng tạm hỗ trợ đầy đủ binding, evaluator, validator và các khai 
báo TempColumns, ColumnChanging, ColumnChanged… như bình thường nhưng sẽ bỏ qua khi 
tải và lưu dữ liệu, bảng tạm có thể có hoặc không có relation 
Ghi chú
- Đối với các evaluator tính toán dữ liệu cho bảng TempTableCollection cần khai báo 
scopeType = Table.
XXVIII. RowImported
Ý nghĩa: 
41
- Chứa các evaluators nhưng sẽ chỉ được thực hiện khi thêm dòng mới trong lúc import dữ 
liệu (được thực hiện trước RowAdded/RowCopied). Có thể khai báo evaluator để đánh dấu 
phân biệt dữ liệu được import
Cú pháp
<root>
... 
<ParentTable>
 <RowImported>
 <Ten_Eval…>
 <Ten_Eval…>
. . .
 </RowImported>
</ParentTable>
</root>
Ghi chú
- Sử dụng công cụ này trong trường hợp muốn cập nhật dữ liệu vào cột để đánh dấu dữ liệu 
được import
B. EVALUATOR
- Phần này mô tả chi tiết cách thức sử dụng và ý nghĩa của từng Evaluator theo từng ClassName. 
Nên tham khảo các mô tả về Evaluator/ EvaluatorGroups trong phần DataSource
1. BravoEvaluator
Ý nghĩa
Dùng để thực thi việc định nghĩa giá trị cho một cột hoặc điều khiển các Controls.
Cú pháp
Trường hợp gán giá trị cho một cột:
<Eval_X >
 <DataMember>Ten_bang/Ten_cot</DataMember>
 <Value>Gia_tri</Value>
 <Expr>Dieu_Kien</Expr>
42
</Eval_X>
Trường hợp điều khiển control:
<Eval_X >
 <DataMember>Ten_bang/Danh_sach_cot</DataMember>
 <Controls>
 <Name>Danh_sach_Cot/Ten_bang</Name>
 <Enabled>Bieu_thuc</Enabled>
<Format>Bieu_thuc</Format>
<Select>Bieu_thuc</Select>
<Style>Bieu_thuc</Style>
<Visible>Bieu_thuc</Visible>
….
 </Controls>
</Eval_X>
Thuộc tính
Tên thuộc tính Nội dung
1 DataMember Danh sách cột đích tác động dữ liệu
2 Value Gía trị sẽ nhận của cột đích
3 Name Khai báo danh sách các cột chịu sự tác động dữ liệu. 
Danh sách các control được khai báo trong thẻ 
DataMember là các cột trong bảng mà Eval được khai báo 
còn danh sách các cột khai báo trong thẻ Name có thể là 
cột ở bất cứ đâu. VD: trong ColumnChanged của ô mã tiền 
tệ ở Editor các chứng từ đang khai báo: 
<Eval_Controls_Visible> 
<DataMember>TotalAmount0,TotalAmount3,TotalAmount
</DataMember>
<Controls> 
<Name>BravoGridContainer.Item_Inventory.UnitCost.Am
ount9,BravoGridContainer.Item_AtchDoc.AmountBeforeT
ax.Amount</Name> 
<Visible>CurrencyCode&lt;&gt;CONFIG('M_Ma_Tte0')</V
isible>
43
</Controls>
</Eval_Controls_Visible>
4 Enabled Khai báo tính chất cho edit của control. Nếu biểu thức trả 
về giá trị False thì control sẽ không cho edit và ngược lại. 
VD: Eval để điều chỉnh việc cho gõ ô tỷ giá theo mã tiền tệ 
trên các chứng từ:
<Eval_Enable_ExchangeRate>
 <DataMember>ExchangeRate</DataMember>
 <Controls>
 
<Enabled>CurrencyCode&lt;&gt;CONFIG('M_Ma_Tte0')</
Enabled
 </Controls>
</Eval_Enable_ExchangeRate>
5 Format Khai báo định dạng các control. Kết quả trả về của biểu 
thức là số hiển thị số thập phân (N0, N2..). VD: trên Editor 
các chứng từ đang khai báo 
<Format>FormatCurrency(CurrencyCode)</Format>
Để định dạng các cột theo định dạng đồng tiền trên phiếu.
6 Select Lựa chọn bản ghi được chọn. Các giá trị có thể nhận: 
+ None: Không chọn đối tượng nào cả
+ Indicated: Chọn đối tượng được chỉ định
+ Next: Chọn đối tượng tiếp theo.
+ Previous: Chọn đối tượng trước đó.
VD: trên Editor hóa đơn dịch vụ có Eval: 
<Eval_Prepayment_Select>
 <Controls>
 
<Name>BravoGridContainer.Item_ApplyPrepay</Name>
 <Select>Indicated</Select>
 </Controls>
</Eval_Prepayment_Select>
Được gọi ở LinkCommand <Item_Prepayment>
Nhằm mục đích khi người dùng click tính chiết khấu thì con 
trỏ sẽ chọn sang tab Chiết khấu ở màn hình Editor.
44
7 Style Khai báo về định dạng của các control về màu sắc, nền, 
căn lề…..Biểu thức khai báo tham khảo cú pháp phần 
Control
8 Visible Khai báo tính chất ẩn hiển control. Nếu biểu thức trả về giá 
trị False thì control sẽ không được hiển thị và ngược lại. 
…. .. . . . . . .
Ví dụ
Trên Editor các chứng từ có hỗ trợ hóa đơn điện tử hoặc hóa đơn tự in. Nếu muốn kiểm tra hóa đơn 
điện tử đã phát hành rồi hoặc hóa đơn tự in đã in liên chính rồi thì không cho phép xóa/ thêm dòng 
ở Grid. Khi đó có thể khai báo 1 eval ở bảng mẹ với cú pháp như sau:
 <Eval_GridSales_AllowAddNewWhen>
 <Controls>
 <Name>BravoGridContainer.Item_Sales</Name>
 <AllowDelete>Empty(Printed)</AllowDelete>
 <AllowAddNew>Empty(Printed)</AllowAddNew>
 </Controls>
 </Eval_GridSales_AllowAddNewWhen>
Ghi chú
- Đây là giá trị mặc định của Evaluator nếu không khai báo ClassName
- Với Eval có sử dụng thẻ <Controls> thì có thể hỗ trợ tất cả các thẻ chung của một control, 
các thẻ gợi ý chỉ là các thẻ hay dùng.
- Khi Load form thì các Eval bảng mẹ mà có khai báo thẻ Controls sẽ được ưu tiên thực hiện 
trước. Như vậy khi có các Eval thiết lập các control ở các bảng con và bảng cháu thì cần 
phải đặt ở bảng Parent, nếu đặt trong các sự kiện ServerLoaded hoặc RowAdded…. ở bảng 
con/ bảng cháu đều không được do lúc đó các control chưa được khởi tạo.
2. BravoAddRowEvaluator
Ý nghĩa
Dùng để thêm dòng vào bảng
Cú pháp
45
<Eval_X >
 <ClassName>BravoAddRowEvaluator</ClassName>
 <DataMember>Ten_bang</DataMember>
 <Expr>Dieu_Kien</Expr>
 <DefaultValues>
 <Ten_Cot>Gia_tri</Ten_Cot>
 </DefaultValues>
 </Eval_X>
Thuộc tính
Tên thuộc tính Nội dung
1 DataMember Bảng đích nhận giá trị thêm dòng
2 Expr Điều kiện để thực thi Evaluator
3 DefaultValues Các giá trị của từng cột của dòng thêm mới
4 selectAddedRow Có chọn dòng thêm mới đấy hay không. Có thể nhận 3 giá 
trị:
+ None: không chọn
+ First: chọn dòng đầu tiên (mặc định)
+ Last: Chọn dòng cuối cùng
Ghi chú:
- Khi thêm dòng vào bảng bằng Evaluator thì các Evaluator trong ColumnChanged, 
ColumnChanging, RowAdded… của bảng đích sẽ được thực thi. Nếu muốn ngăn chạy các sự kiện 
này thì có thể khai báo bSuppressChangeEvents= True
- Chỉ dùng cho bảng mẹ và thường được đặt trong ServerUpdated để xử lý sau khi lưu.
3. BravoAllocationEvaluator
Ý nghĩa
Dùng để phân bổ cho các dòng chi tiết.
Cú pháp
<Eval_X >
 <ClassName>BravoAllocationEvaluator</ClassName>
 <DataMember>Ten_Cot</DataMember>
 <Expr>Dieu_Kien</Expr>
46
 <zAllocationBaseMember>Ten_Cot</zAllocationBaseMember>
 <Value>Ten_cot</Value>
 <allocationRemainTarget>Gia_tri</allocationRemainTarget>
 <zResultDecimalRound>Gia_tri</zResultDecimalRound>
 </Eval_X>
Thuộc tính
Tên thuộc tính Nội dung
1 DataMember Trường nhận giá trị phân bổ
2 zAllocationBaseMember Cơ sở để phân bổ (chỉ định cột làm hệ số phân bổ)
3 Value Giá trị cần đi phân bổ
4 zResultDecimalRound Số thập phân cần làm tròn khi phân bổ
5 allocationRemainTarget Quy định việc số dư sau phép chia ở bước phân bổ sẽ 
được xử lý như nào
+ Auto: Giá trị mặc định, tự động lấy dòng bất kỳ
+ Min: (Tổng tiền cần phân bổ- Tổng tiền đã phân bổ cho 
từng dòng) >0 sẽ được cộng vào dòng có tiền phân bổ nhỏ 
nhất
+ Max: (Tổng tiền cần phân bổ- Tổng tiền đã phân bổ cho 
từng dòng) >0 sẽ được cộng vào dòng có tiền phân bổ lớn 
nhất
6 zScopeExpr Điều kiện giới hạn các dòng phân bổ.
Ví dụ
Chức năng phân bổ tổng tiền ở Summary ở Editor của chứng từ Chi phí mua hàng có Evaluator 
khai báo như sau:
<Eval_Ct0_OriginalAmount9_AllocFromParent>
 <ClassName>BravoAllocationEvaluator</ClassName>
 <DataMember>OriginalAmount9,OriginalAmount</DataMember>
<zAllocationBaseMember>AllocationRate</zAllocationBaseMember> 
<Value>IIF(Empty(AllocationRate),0,Parent.TotalCostAllocOriginalAmount)</Value>
 <zResultDecimalRound>Parent.DecimalRound</zResultDecimalRound>
<zScopeExpr>!Empty(AllocationRate)</zScopeExpr>
</Eval_Ct0_OriginalAmount9_AllocFromParent>
Nhằm phân bổ số tiền gõ ở summary theo phương thức lựa chọn cho các dòng chi tiết.
47
4. BravoBindingMember
Ý nghĩa
Tự động lấy các thông tin giống như binding trong lookup
Cú pháp
 <Ten_Eval>
 <ClassName>BravoBindingMember</ClassName>
 <DataMember>Ten_Cot</DataMember>
 <LookupKey>Ten_Lookupkey</LookupKey>
 <FilterKey>Bieu_thuc</FilterKey>
 <bindingMembers>
 <Ten_Cot1>Ten_Cot2</Ten_Cot1>
 </bindingMembers>
 </Ten_Eval>
Thuộc tính
Tên thuộc tính Nội dung
1 DataMember Cột lookup để làm key để lấy thông tin
2 LookupKey Giá trị cột LookupKey trong B00Lookup để xác định bảng 
hoặc view dữ liệu sẽ được truy vấn
3 FilterKey Điều kiện dữ liệu của bảng dữ liệu truy vấn. Có thể khai 
báo trực tiếp trên layout hoặc cột FilterKey trong bảng 
B00Lookup. Hiểu một cách đơn giản là với các lookup khai 
báo thẻ này thì khi mở form thì chỉ hiển thị và tích chọn 
được các bản ghi thỏa mãn
4 SelectKey Điều kiện dữ liệu của bảng dữ liệu truy vấn. Có thể khai 
báo trực tiếp trên layout hoặc cột SelectKey trong bảng 
B00Lookup. Hiểu một cách đơn giản là với các lookup khai 
báo thẻ này thì khi mở form thì cho hiển thị hết các bản ghi 
nhưng chỉ tích chọn được các bản ghi thỏa mãn
5 bindingMembers Khai báo các thông tin được lấy ra. VD: nếu khai báo 
<Person>Person_Customer</Person> thì Person là cột 
trong bảng dữ liệu được khai báo trong B00Lookup tương 
ứng với khai báo ở LookupKey. Còn Person_Customer là 
cột đích nhận giá trị (có thể là 1 danh sách cột của bảng 
Evaluator tác động).
48
6 Expr Điều kiện để thực thi Evaluator
7 zLookupSource Khai báo tên bảng hoặc view sẽ được truy vấn. Hiện tại ở 
bản 8 hỗ trợ 2 kiểu khai báo lookup.
C1: Khai báo LookupKey và khai báo 1 dòng trong 
B00Lookup sẽ được truy vấn
C2: Không cần khai báo trong B00Lookup mà khai báo trực 
tiếp bảng/view trong thẻ zLookupSource. 
Chú ý: việc khai báo đồng thời cả LookupKey và 
zLookupSource chương trình sẽ luôn hiểu theo Lookupkey
8 zCustomConnectionName Khai báo kết nối đến Server khác (tham khảo mục 
zCustomConectionName). Chú ý nếu không khai báo 
zCustomConnectionName ở Eval chương trình sẽ lấy 
thông tin của cột ConnectionName trong B00Lookup.
Ghi chú
- Các thẻ khác hỗ trợ tương tự như các Eval khác (tham khảo các tài liệu liên quan)
- Việc binding các thông tin khi chọn giá trị từ lookup vẫn được khai báo như bản 7 ở các 
control. Chỉ khi việc binding dữ liệu cần có điều kiện để thực thi thì sẽ sử dụng Evaluator để 
khai báo.
- Các binding trong Evaluator được gọi sau khi thực hiện các sự kiện do sự thay đổi của 
Evaluator (giá trị cột thay đổi và các ColumnChanging, ColumnChanged các thành phần liên 
quan)
5. BravoCommandkey 
Ý nghĩa
Dùng để thực thi một lệnh gọi đến một Command khai báo trong B00Command hoặc thực thi một 
Command tự khai báo
Cú pháp
Trường hợp 1: Thực thi lệnh gọi đến Command trong B00Command
 <Ten_Eval>
 <ClassName>BravoCommandKey</ClassName>
 <CommandKey>Gia_tri</CommandKey>
<zCtorArgs>Danh_sach_tham_so</zCtorArgs>
49
 <commandFormState>Gia_tri</commandFormState>
 </Ten_Eval>
Trường hợp 2: Thực thi lệnh gọi đến Command tự định nghĩa (gọi trực tiếp)
 <Ten_Eval>
 <ClassName>BravoCommandKey</ClassName>
 <zCommandAssembly>Bravo.DataEditor</zCommandAssembly>
 <zCommandClassName>DataEditor</zCommandClassName>
 <zCtorArgs>GetDataSet=*;CustomDataSource=True;</zCtorArgs>
 <Text>
 <Vietnamese>Ten_cua_chuc_nang </Vietnamese>
. . .
 </Text>
 </Ten_Eval>
Thuộc tính
Tên thuộc tính Nội dung
1 CommandKey Tương ứng với cột CommandKey trong B00Command
2 zCtorArgs Tham số truyền vào thủ tục hoặc Command được thực thi. 
Tương ứng với cột CtorArgs trong bảng B00Command.
3 commandFormState Trạng thái của màn hình hiển thị. 
+ Normal: Giá trị mặc định.
+ Minimized: Màn hình thu nhỏ dưới thanh Taskbar
+ Maximized: Mở rộng toàn màn hình
4 zCommandAssembly Khai báo tên đích danh Assembly xử lý. Chỉ sử dụng trong 
trường hợp gọi form trực tiếp 
5 zCommandClassName Khai báo tên đích danh Class xử lý. Chỉ sử dụng trong 
trường hợp gọi form trực tiếp
6 zCommandText Khai báo tiêu đề của form được mở. Chỉ sử dụng trong 
trường hợp gọi form trực tiếp
7 customFlags Phương thức xác nhận trước khi thực hiện lệnh (tương tự 
CustomFlags của command). Trường hợp cả command và 
eval đều khai báo thuộc tính này thì sẽ thực hiện theo khai 
báo ở layout. Các giá trị có thể hỗ trợ:
50
- Confirmation: yêu cầu xác nhận trước khi thực hiện 
lệnh
- VerifyPassword: yêu cầu nhập mật khẩu trước khi 
thực hiện lệnh
- VerifyUser: yêu cầu nhập tên và mật khẩu trước khi 
thực hiện lện
commandOwnerType Tùy biến form được mở, gồm các giá trị sau
- Dialog
- commandFormLocation
- commandFormSize
- commandFormState
Ví dụ
Trường hợp 1: Gọi đến 1 Command trong B00Command
Trên màn hình Editor các chứng từ đang có khai báo ở bảng mẹ trong ServerCommand:
<AfterCommit>
 <Eval_AutoPrintVoucher>
 <ClassName>BravoCommandKey</ClassName>
 <CommandKey>AccDocViewer_PX 
AutoRun=True;StartupCommandKey=QuickPrint;PrimaryKeyValue={=Id};</CommandKey>
 <commandFormState>Minimized</commandFormState>
 <Expr>ISNULL(AutoPrintVoucher,False)=True</Expr>
 </Eval_AutoPrintVoucher>
</AfterCommit>
Báo cáo sẽ tự động chạy và ẩn màn hình hiển thị mẫu in mà gọi đến lệnh in luôn.
Trường hợp 2: Gọi đến màn hình khai báo trực tiếp.
Chưa có trường hợp thực tế trên bản chuẩn, nhưng về cơ bản gần giống với bước gọi form trực 
tiếp ở màn hình Wizard, chỉ lưu ý một số điểm để khi nhập liệu ở form này thì các giá trị được binding 
vào form gốc và ngược lại. Giả sử đặt 1 tình huống như sau: thêm 1 chức năng nhập bảng chi tiết 
lô, vị trí… khi Click vào 1 chức năng ở Panel thay vì nhập ở bảng cháu như hiện tại. Khi đó các 
bước khai báo như sau: 
Bước 1: Khai báo 1 Eval ở bảng mẹ với cú pháp: 
51
 <EditInventoryPhys>
 <ClassName>BravoCommandKey</ClassName>
 <zCommandAssembly>Bravo.DataEditor</zCommandAssembly>
 <zCommandClassName>DataEditor</zCommandClassName>
 <zCtorArgs>GetDataSet=*;CustomDataSource=True;</zCtorArgs>
 <zCommandText>
 <Vietnamese>Nhập chi tiết vật tư</Vietnamese>
 </zCommandText>
 </EditInventoryPhys>
Chú ý: Trong thẻ zCtorArgs đang khai báo GetDataSet=*; CustomDataSource=True thì chương trình 
sẽ truyền toàn bộ bảng dữ liệu hiện thời lên form mới và việc thay đổi dữ liệu khi gõ ở form mới này 
sẽ được cập nhật vào form gốc.
Bước 2: Khai báo layout gốc: Khai báo chức năng ở Navigator
<Item_EditInventotyPhys>
 <Text>
 <Vietnamese>Nhập thông tin chi tiết vật tư</Vietnamese>
 </Text>
 <Execute>
 <EditInventoryPhys />
 </Execute>
</Item_EditInventotyPhys>
Bước 3: Khai báo 1 Sublayout để khai báo các control hiển thị ở form 
Chú ý: Tên của Sublayout phải trùng với tên của Eval ở bước 1.Có thể khai báo chi tiết định nghĩa 
các cột hiển thị ở màn hình này. Tuy nhiên có thể khai báo gen các đối tượng luôn như sau: 
<root>
 <panelEditor>
 <Controls>
 <grid1>
 <Assembly>Bravo.DataEditor</Assembly>
 <ClassName>BravoEditingGrid</ClassName>
 <AutoGenerateColumns>True</AutoGenerateColumns>
 <DataMember>vB30AccDocInventoryPhys</DataMember>
 <Dock>Fill</Dock>
 <AllowAddNew>False</AllowAddNew>
 </grid1>
 </Controls>
 </panelEditor>
52
</root>
Chú ý: 
- Trường hợp này không cần khai báo DataSource trong Sublayout như tình huống gọi form 
trực tiếp ở các bước của các chức năng Wizard. Lúc đó các thông tin Tables sẽ được hiểu 
là các khai báo ở Form gốc.
- Trường hợp muốn khai báo các Eval, Validator riêng cho form này có thể khai báo trong 
DataSource của SubLayout như Wizard. Khi đó thì được hiểu là Form độc lập, còn còn ở 
chế độ Share source nữa. 
- Bắt đầu từ 4.2.1.0 chương trình hỗ trợ gọi evaluator từ form nhập liệu gốc bằng link command 
từ navigator hoặc BravoLinkCommand
- Bắt đầu từ 4.5.9.0 cho phép khai báo scopeType, zScopeExpr, ngầm định scopeType sẽ là 
None (tương tự với các phiên bản trước đây tức là sẽ lấy dòng binding hiện thời của bảng 
khai báo evaluator nhưng vẫn thực hiện ngay cả khi không có dòng dữ liệu nào). Trong 
trường hợp BravoCommandKey muốn thực hiện liên tục command theo các dòng của một 
bảng con thì cần khai báo scopeType=Relation, Table, CurrentView hoặc zScopeExpr
Ghi chú
- Với các Evaluator này thì vô hiệu hóa tác dụng của thẻ bSuppressChangeEvents 
bSuppressLookupEvents 
- Các thẻ khác hỗ trợ tương tự như các thẻ chung của Eval (tham khảo tài liệu liên quan)
- Nếu muốn truyền cả bảng làm tham số thì có thể khai báo: 
vB30AccDocSales_Edit=@vB30AccDocSales_Edit.ItemCode.WarehouseCode trong đó 
vB30AccDocSales_Edit là tên tham số, @vB30AccDocSales_Edit là tên bảng đang nhập 
liệu. Nếu khai báo @* hoặc @ thì sẽ truyền cả bảng dataset
- Trường hợp CtorArgs không khai báo tham số GetDataSet/GetData/GetSelectedData nhưng 
lại có khai báo giá trị ngầm định dạng <tên cột>=@… thì chương trình sẽ tự động thêm tham 
số GetDataSet=true; để truyền instance của DataSet cho command key.
- Các tham số truyền vào khi thực hiện 1 command có thể được khai báo từ nhiều nguồn khác 
nhau, ví dụ như được khai báo ở cột CtorArgs trong B00Command hoặc khai báo luôn trong 
thẻ CommandKey hoặc khai báo tường minh ở thẻ CtorArgs. Dù khai báo ở đâu thì các tham 
số truyền vào khi thực thi một command phải tuân thủ theo đúng nguyên tắc khai báo biểu 
thức, tức là các tham số giá trị truyền vào kiểu chuỗi, date… đều phải được đặt trong dấu 
nháy. 
VD: ở báo cáo Bảng tổng hợp tài sản có khai báo Eval để thực thi việc click đúp xem chi tiết 
được khai báo: 
 <Evaluators>
53
 <Eval_Edit_Asset>
 <ClassName>BravoCommandKey</ClassName>
<CommandKey>Asset 
AutoRun=True;FilterKey=Code='{=AssetCode}';</CommandKey>
 </Eval_Edit_Asset>
 </Evaluators>
- Trường hợp LinkCommand gọi đến 1 Editor : Hỗ trợ gọi DataEditor từ link command 
(BravoServerConstraint) để merge dữ liệu vào form nhập liệu, DataEditor mở bằng 
BravoServerConstraint sẽ không có chọn dòng như DataExplorer hay Reporter mà tất cả các 
bảng/các dòng sẽ được truyền vào tham số IdList theo nguyên tắc không tính bảng mẹ ảo -
nếu chỉ có 1 bảng thì tên bảng sẽ là Table, còn nếu nhiều hơn thì sẽ được đánh số từ 0
VD: Khi muốn thực hiện LinkCommand như hình bên dưới để nhập liệu và đẩy vào grid thì 
có thể khai báo như sau: 
54
6. BravoCopyValue
Ý nghĩa
Dùng để thực thi lệnh copy giá trị
Cú pháp
 <Eval_X>
 <ClassName>BravoCopyValue</ClassName>
 <CopyValues>
 <Ten_cot1>Bieu_thuc</Ten_cot1>
. . . . .
 </CopyValues>
 </Eval_X>
Thuộc tính
Tên thuộc tính Nội dung
1 CopyValues Khai báo các thông tin được copy. 
VD: nếu khai báo 
<DocCode>Parent.DocCode</DocCode>thì DocCode là 
cột trong bảng dữ liệu mà Evaluator tác động (cột nhận 
kết quả). Còn Parent.DocCode cột được copy
Ví dụ
55
Trên màn hình Editor của Phiếu thu, trong sự kiện RowAdded của bảng chi tiết có Evaluator:
 <Eval_Ct0_DefaultValueFromParent>
 <ClassName>BravoCopyValue</ClassName>
 <CopyValues>
 <BranchCode>Parent.BranchCode</BranchCode>
 <DocCode>Parent.DocCode</DocCode>
 <DocDate>Parent.DocDate</DocDate>
 <DocGroup>Parent.DocGroup</DocGroup>
 . . .
 </CopyValues>
 </Eval_Ct0_DefaultValueFromParent>
Khi thêm dòng vào Grid thì các giá trị cột được khai báo trong Evaluator sẽ copy từ bảng mẹ xuống.
Ghi chú
- Tham số <Ten_cot1> là tên cột trong bảng mà evaluator tác động.
- Tham số Bieu_thuc: Có thể là tên cột hoặc một biểu thức trả về 1 giá trị
- Các thẻ khác tương tự như tính năng chung của các thẻ ở ClassName = BravoEvaluator
7. BravoDeleteRowEvaluator
Ý nghĩa
Dùng để thực thi lệnh xóa dòng ở bảng.
Cú pháp
<Eval_X>
 <ClassName>BravoDeleteRowEvaluator</ClassName>
 <Expr>Bieu_thuc</Expr>
</Eval_X>
Thuộc tính
Tên thuộc tính Nội dung
1 Expr Điều kiện các dòng sẽ thực thi Evaluator
Ví dụ
56
Trên màn hình Editor của phiếu xuất, ở bảng <ChildTable_AtchDoc> thì khai báo trong 
BeforeTransaction một Evaluator để thực thi việc xóa dữ liệu nếu trắng mã thuế và bảng mẹ không 
có thông tin hạn thanh toán
 <Eval_AtchDoc_DeleteIfEmptyTaxCode>
 <ClassName>BravoDeleteRowEvaluator</ClassName>
 <Expr>Empty(Parent.TaxCode) AND Empty(Parent.DueDate)</Expr>
 </Eval_AtchDoc_DeleteIfEmptyTaxCode>
Ghi chú
- Các Evaluator có ClassName = BravoDeleteRowEvaluator chỉ áp dụng cho bảng con.
- Chú ý: các Eval dạng này được khai báo ở bảng nào thì sẽ thực thi xóa dòng ở bảng đó. Do đó 
không hỗ trợ thẻ DataMember để chỉ đích danh bảng tác động của Evaluator. Nếu có khai báo 
DataMember cũ thì chương trình sẽ báo lỗi nếu giá trị DataMember khác với bảng evaluator được 
khai báo. BravoDeleteRowEvaluator và BravoAddRowEvaluator sẽ báo lỗi nếu xóa/thêm dòng ở 
bảng mẹ
8. BravoMoneyEvaluator
Ý nghĩa
Dùng để thực thi việc tính toán trên các cột tiền
Cú pháp
<Ten_Eval>
<ClassName>BravoMoneyEvaluator</ClassName>
<DataMember>Ten_cọt1</DataMember>
<Expr>Bieu_thuc1</Expr> 
<zNumberValue>Gia_tri1</zNumberValue>
<zMoneyValue>Ten_cot2</zMoneyValue>
<zResultDecimalRound>Gia_tri2</zResultDecimalRound> ` 
<zResultMarginValue>Bieu_thuc2 zResultMarginValue>
 . . . . . 
</Ten_Eval>
Thuộc tính
57
Tên thuộc tính Nội dung
1 DataMember Cột đích tác động dữ liệu
2 Expr Điều kiện các dòng thỏa mãn để thực thi Evaluator
3 zNumberValue Giá trị của tham số trong biểu thức tính toán. Có thể là số lượng, 
tỷ giá, hệ số…
4 zMoneyValue Giá trị tiền để tính toán. Có thể là cột tiền hoặc cột giá…
5 zResultDecimalRound Số làm tròn của kết quả trả về
6 zResultMarginValue Giá trị giới hạn tối đa được sửa lại kết quả từ biểu thức trả về
7 zFormula Công thức tính ngầm định là {0}*{1}. Trong đó:
+ {0}: đại diện cho giá trị khai báo trong zNumberValue
+ {1}: đại diện cho giá trị khai báo trong zMoneyValue
Ví dụ
Trên màn hình Editor của Phiếu thu, có khai báo Evaluator <Eval_Ct0_OriginalAmount3>
<Eval_Ct0_OriginalAmount3>
<ClassName>BravoMoneyEvaluator</ClassName>
 <DataMember>OriginalAmount3</DataMember>
 <Expr>(TaxType IS NULL OR !Empty(TaxRate))</Expr>
<zNumberValue>IIF(ISNULL(PriceIncludeTax,0)=1,TaxRate/(1+TaxRate),TaxRate)</zN
umberValue>
 <zMoneyValue>OriginalAmount9</zMoneyValue>
 <zResultDecimalRound>DecimalRound</zResultDecimalRound>
 <zResultMarginValue>IIF(UpdatedColumn()='OriginalAmount3',Parent.VATDiffValue,
0)</zResultMarginValue>
 <allowRunning>Nonnested</allowRunning>
</Eval_Ct0_OriginalAmount3>
Evaluator này sẽ thực thi việc tính tiền thuế từ cột tiền và mã thuế là giá bao gồm thuế hay chưa 
bao gồm thuế.
Ghi chú
- Evaluator này sẽ thực thi việc lấy cột khai báo trong thẻ zMoneyValue để nhân (*) với giá trị
trả về của thẻ zNumberValue. Và được cho phép sửa lại trong giới hạn làm tròn trong khoảng 
trả về của thẻ zResultMarginValue
- Các thẻ khác hỗ trợ tương tự như BravoEvaluator (tham khảo các tài liệu liên quan)
58
9. BravoSelectRowEvaluator 
Ý nghĩa
Dùng để chỉ định dòng được chọn trên Grid
Cú pháp
 <Eval_X>
 <ClassName>BravoSelectRowEvaluator</ClassName>
 <DataMember>Ten_bang</DataMember>
 <Expr>Bieu_thuc</Expr>
 </Eval_X>
Thuộc tính
Tên thuộc tính Nội dung
1 DataMember Bảng đích tác động dữ liệu
2 Expr Điều kiện các dòng thỏa mãn để thực thi Evaluator
Ví dụ
Trên màn hình Editor của Cập nhật phiếu bán lẻ có khai báo Evaluator để trả về dòng thỏa mãn điều 
kiện trong Expr.
 <Eval_Sales_SelectRow>
 <ClassName>BravoSelectRowEvaluator</ClassName>
 <DataMember>Ct0</DataMember>
 <Expr>ItemId=Parent.LastItemId</Expr>
 </Eval_Sales_SelectRow>
Ghi chú
- Với các Evaluator này thì vô hiệu hóa tác dụng của thẻ bSuppressChangeEvents 
bSuppressLookupEvents
- Các thẻ khác hỗ trợ tương tự như các thẻ chung của Eval (tham khảo tài liệu liên quan)
10. BravoServerConstraint
Ý nghĩa
Thực thi việc đẩy dữ liệu được trả về sau một thủ tục vào bảng hoặc cột 
59
Cú pháp
Trường hợp 1: Dạng mở một command sau đó có thể merge dữ liệu vào bảng hoặc không
 <Eval_Report_CurrentStock>
 <ClassName> BravoServerConstraint</ClassName>
 <CommandKey>Ten_Commandkey</CommandKey> 
<zCtorArgs>Tham_so</zCtorArgs>
 <Command>Ten_thu_tuc</Command>
 <zTargetValueMember>Ten_Cot</zTargetValueMember>
 <zSourceValueMember>Ten_Cot</zSourceValueMember>
 <zSourceReturnMember>Danh_sach_cot</zSourceReturnMember>
</Eval_Report_CurrentStock>
Trường hợp 2: Dạng chạy thủ tục lưu và merge dữ liệu vào bảng.
<Ten_Eval>
 <ClassName>BravoServerConstraint</ClassName>
 <Command>Ten_thu_tuc</Command>
 <Parameters>
 <Ten_Tham_so>Ten_cot</Ten_tham_so>
 <DataMember>Danh_sach_bang/ten_cot</DataMember>
 <mergingData>Gia_tri</mergingData>
 <checkUnique>Gia_tri</checkUnique>
</Ten_Eval>
Thuộc tính
Tên thuộc tính Nội dung
1 DataMember Danh sách cột hoặc bảng đích nhận dữ liệu trả về từ thủ tục
(có thể dùng Alias)
2 Expr Điều kiện các dòng để thực thi Evaluator
3 Command Thủ tục nào được thực hiện để lấy kết quả vào DataMember
4 Parameters Các tham số được truyền vào thủ tục. Có thể gán trực tiếp tên 
cột hoặc tên bảng cho tham số. Ví dụ: 
<DocCode>DocCode</DocCode>
60
Hoặc 
<AccDocDetailViewName>ct0ViewName</AccDocDetailVie
wName>
Hoặc có thể sử dụng thẻ Name để gán (nếu khai báo là * thì 
sẽ truyền toàn bộ dataset, hoặc có thể chỉ đích danh từng cột)
 <AccDocDetailXML>
 
<Name>vB30AccDocItemIssue_Edit.Id.ItemCode.Warehous
eCode</Name>
 </AccDocDetailXML>
Chú ý: Với các tham số kiểu Output trả về từ thủ tục cần khai 
báo tham số này trong phần Paramater và khai báo: 
<Direction>Output</Direction> để Eval trả về giá trị của biến 
Output
5 CommandKey Thực thi việc gọi màn hình của chức năng tương ứng với khai 
báo CommandKey
6 zCtorArgs Tham số truyền vào thủ tục được thực thi. Tương ứng với cột 
CtorArgs trong bảng B00Command.
7 zSourceReturnMember - Danh sách các cột truyền vào trong thủ tục trong Dataset. 
Nếu không khai báo gì thì giá trị mặc định là cột Id.
(để ko phải truy vấn lại từ Id để lấy thông tin trong thủ tục nữa)
- Hỗ trợ khai báo * để lấy tất cả các cột (DataExplorer, 
Reporter ) từ ver 4.1.1.0
8 mergingData Lựa chọn cách thức đẩy dữ liệu vào bảng
+ Reset: Sẽ xóa tất cả các dòng của bảng đích và merge các 
dòng của bảng nguồn 
+ Overwrite: Sẽ so sánh primary Key (thường là cột Id) nếu 
trùng thì ghi đè giá trị các cột của dòng của bảng nguồn, nếu 
không thì thêm mới dòng vào. (Default)
+ RelatedDelete: chỉ xóa các dòng trong bảng đích theo 
relation với bảng mẹ (bổ sung từ v5.2.0.1).
Ví dụ: dùng BravoServerConstraint để merge dữ liệu cho bảng 
cháu C relation với bảng con B...
9 showMessage Xác định trạng thái có hiển thị hộp thoại thông báo sau khi 
hoàn thành eval. Các giá trị có thể nhận:
+ Never: Không bao giờ hiển thị 
61
+ Always: Luôn luôn hiển thị (mặc định)
+ UpdatedOnly: Chỉ hiển thị thông báo khi có sự thay đổi
+ Table: Chỉ hiển thị câu message khi update dạng bảng
+ TableUpdate: Chỉ hiển thị câu message khi update dạng 
bảng và có thay đổi
+ Value: Chỉ hiển thị câu message khi update dạng biến
+ ValueUpdate: Chỉ hiển thị câu message khi update dạng 
biến và có thay đổi
Nội dung thông báo có thể tự khai báo trong thẻ Text. Trường 
hợp không khai báo giá trị ngầm định sẽ là số lượng bản ghi 
được chèn bảng bảng.
10 zTargetValueMember Chỉ định cột trong bảng khai báo ở DataMember để kiểm tra 
tính duy nhất của giá trị . VD trong Eval thực hiện chức năng 
lấy dữ liệu chi tiết đơn hàng đang khai báo:
<zTargetValueMember>BizDocId_SO</zTargetValueMembe
r>
<zSourceValueMember>BizDocId</zSourceValueMember>
➔ Thì khi đã chọn đơn hàng rồi -> click chọn lại thì dòng 
của đơn hàng đó bị mờ đi và không chọn được tiếp.
11 zSourceValueMember Chỉ định cột trong bảng khai ở màn hình mở ra để tích chọn. 
Giá trị này sẽ được so sánh với cột trong thẻ 
zTargetValueMember để kiểm tra tính duy nhất. Khi sử dụng 
tính năng này phải sử dụng đồng thời cả 2 thẻ này trừ khi cột 
ở cả 2 thẻ này trùng nhau thì chỉ cần khai báo 
zTargetValueMember . VD: Chức năng lấy chi tiết báo giá ở 
Editor của đơn đặt hàng bán
12 zUpdateScopeExpr Điều kiện kiểm tra các dòng sẽ được update giá trị. Chỉ áp 
dụng cho việc thủ tục trả về 1 hay nhiều giá trị, không áp dụng 
cho trường hợp thủ tục trả về bảng.
13 autoOutputMember Chỉ định việc sử dụng tham số là biến trả về từ thủ tục. Các 
giá trị có thể nhận:
+ Ignore: Không lấy các biến Output (ngầm định)
+ UpdateScopeRow: Update giá trị các biến Output vào cột 
tương ứng của bảng khai báo Eval
+ UpdateParentRow: Update giá trị các biến Output vào cột 
tương ứng ở bảng mẹ của bảng khai báo Eval
62
+ UpdateRootRow: tương tự như UpdateParentRow nhưng 
mà là bảng mẹ đầu tiên.
Chú ý: phải khai báo các tham số trả về từ thủ tục kiểu Output 
trong phần Paramater
14 selectAddedRow Khai báo phương thức để lựa chọn dòng được chọn khi merge 
dữ liệu. Các giá trị có thể nhận của thẻ:
+ None: Không chọn dòng nào cả
+ First:Chọn dòng đầu tiên trong danh sách các bản ghi được 
merge vào
+Last: Chọn dòng cuối cùng, giá trị mặc định là Last
15 updateScopeType Áp dụng khi thủ tục lưu áp dụng cho biến và update cho những 
dòng nào của bảng. Xác định phạm vi update giá trị. Các giá 
trị lựa chọn có thể tham khảo mục thẻ scopeType.
16 zCustomConnectionName Khai báo kết nối đến Server khác (tham khảo mục 
zCustomConectionName)
17 checkUnique Để tùy chọn việc kiểm tra giá trị trùng khi merge bảng dữ liệu
(check trùng dữ liệu từ bảng merge vào với dữ liệu đang có 
sẵn trên bảng đích)
+ None: Không kiểm tra
+ Error: Báo lỗi khi có giá trị trùng (ngầm định)
+IgnoreDuplicated: Tự động bỏ qua các dòng có giá trị trùng.
18 customFlags Phương thức xác nhận trước khi thực hiện lệnh (tương tự 
CustomFlags của command). Trường hợp cả command và 
eval đều khai báo thuộc tính này thì sẽ thực hiện theo khai báo 
ở layout. Các giá trị có thể hỗ trợ:
- Confirmation: yêu cầu xác nhận trước khi thực hiện 
lệnh
- VerifyPassword: yêu cầu nhập mật khẩu trước khi 
thực hiện lệnh
- VerifyUser: yêu cầu nhập tên và mật khẩu trước khi 
thực hiện lện
19 Text Khai báo câu thông báo khi thực thi xong Eval. Việc hiển thị 
hay không sẽ phụ thuộc vào thẻ showMessage. Thẻ này có 
thể nhúng biểu thức hoặc lấy giá trị của một trường trong 
bảng. 
63
VD: Nếu muốn hiển thị giá trị trong thẻ Text là biểu thức nhúng 
có thể khai báo
<Text Expr="True">
<Vietnamese>Hiển thị giá trị 
{=CONFIG('M_Ma_Tte0')}</Vietnamese>
</Text>
- Trường hợp nếu muốn khai báo cột của một bảng thì bỏ 
phần Expr=”True” đi, vì như vậy Text sẽ được evaluate ngay 
khi đọc khai báo layout. Ví dụ: Đang evaluate bảng con B, 
muốn update cột Out ở bảng mẹ A thì khai báo như sau:
<Text>
<Vietnamese>Hiển thị giá trị 
{=PARENT.Out}</Vietnamese>
</Text>
-Trường hợp thông tin muốn hiển thị là giá trị của một biến 
trong bảng thì giá trị tham số output phải update vào 1 cột 
trong bảng rồi truy xuất như bình thường:
20 nCommandTimeout Chỉ định số thời gian tối đa tính bằng giây chờ câu lệnh query 
thực hiện ở CSDL trước khi báo lỗi timeout
21 transactionLock Khai báo kiểu transaction của Eval. Được sử dụng trong một 
số tình huống lấy dữ liệu từ các kết nối với các ứng dụng khác 
và phần mềm.
Ví dụ
Trường hợp 1: Chức năng lấy chi tiết hóa đơn ở Editor phiếu xuất. Đây là trường hợp mở Command 
sau đó merge dữ liệu vào bảng, Dữ liệu merge cả vào bảng con và bảng cháu.
<Eval_ConvertFromAccDocSales_GetData>
 <ClassName>BravoServerConstraint</ClassName>
 <CommandKey>Sales</CommandKey>
 <Command>usp_B30AccDocInventory_ConvertFromB30AccDocSales</Command>
 <Parameters>
 <IdList />
 <ConvertType>1</ConvertType>
 <DocCode>DocCode</DocCode>
64
 <FiscalYear>FISCALYEAR()</FiscalYear>
 <BranchCode>BranchCode</BranchCode>
 <WarehouseCode>WarehouseCode</WarehouseCode>
 <ShowCurrentINV>Config('M_ShowCurrentINV')</ShowCurrentINV>
 <DataCode>FiscalYear('DataCode')</DataCode>
 <AccDocName>ctViewName</AccDocName>
 <AccDocDetailViewName>ct0ViewName</AccDocDetailViewName>
 <AccDocDetailTableName>ct0Name</AccDocDetailTableName>
 <AccDocXML>
<Name>vB30AccDoc_EditItemIssue.Id.Stt.UsingCheckINVWhenNotEnough.PrevPost_The
Kho.DocDate.DocCode.DocGroup.CustomerCode.DebitAccount.CreditAccount.ItemAccou
ntType.TransCode.UsingProductCostId</Name>
 </AccDocXML>
 <AccDocDetailXML>
 <Name>vB30AccDocItemIssue_Edit.Id.ItemCode.WarehouseCode</Name>
 </AccDocDetailXML>
 </Parameters>
 <DataMember>Ct0,phys</DataMember>
<zCtorArgs>AutoSearch=True;FilterKey=DocCode IN ('HD','H2','XK') AND
DocDate&lt;='{=DocDate}'</zCtorArgs>
 <Expr>!Empty(CurrencyCode)</Expr>
</Eval_ConvertFromAccDocSales_GetData>
Trường hợp 2: Chức năng Tính chiết khấu trên Editor Hóa đơn GTGT
 <Eval_ProcessDiscount>
 <ClassName>BravoServerConstraint</ClassName>
 <Command>usp_B30AccDocApplyDiscount_AddingData</Command>
 <Parameters>
 <Stt>Stt</Stt>
 <BranchCode>BranchCode</BranchCode>
 <DocDate>DocDate</DocDate>
 <CustomerCode>CustomerCode</CustomerCode>
 <TerritoryCode>TerritoryCode</TerritoryCode>
 <CurrencyCode>CurrencyCode</CurrencyCode>
 <TransCode>TransCode</TransCode>
 <TotalAmount0_Temp>TotalAmount0</TotalAmount0_Temp>
65
 <vB30AccDocApplyDiscount>Ct0</vB30AccDocApplyDiscount>
 </Parameters>
 <DataMember>vB30AccDocApplyDiscount</DataMember>
 <mergingData>Reset</mergingData>
 </Eval_ProcessDiscount>
Các tham số được khai báo trong Parameters truyền vào thủ tục sau đó sẽ đẩy vào bảng khai báo 
trong DataMember
Trường hợp 3: Muốn khai báo chức năng ở pannel để lấy dữ liệu từ báo cáo vào Grid trên 
Editor phiếu xuất.
Trong trường hợp này cần khai báo như sau: 
<Eval_Report_CurrentStock>
 <ClassName>BravoServerConstraint</ClassName>
 <CommandKey>REP04_BC_TONKHO</CommandKey>
 <DataMember>Ct0</DataMember>
 <zSourceReturnMember>*</zSourceReturnMember>
 <mergingData>Reset</mergingData>
<zCtorArgs>DocDate2='{=DocDate}';StartupCommandKey=Refresh;</zCtorArgs>
 <Text />
</Eval_Report_CurrentStock>
Trong đó: 
- CommandKey: Khai báo command của Reporter
- DataMember: Khai báo bảng đích sẽ nhận kết quả 
- zSourceReturnMember: Khai báo danh sách các cột sẽ được đẩy vào bảng đích từ kết quả 
của báo cáo. Khi Eval được thực thi sẽ đẩy dữ liệu từ kết quả báo cáo vào các cột tương 
ứng.
- zCtorArgs: Các tham số truyền vào khi thực thi CommandKey của báo cáo.
Ghi chú
- Các Parameters có thể được khai báo tường minh từng tham số. Còn nếu khai báo theo list 
thì phải đảm bảo đúng thứ tự các tham số trong thủ tục. Nếu không khai báo thẻ này thì giá trị 
mặc định là IdList (danh sách Id các dòng được chọn)
66
- Thẻ zSourceReturnMember: Nếu không chỉ định thì chương trình sẽ lấy mặc định là cột Id, 
Thẻ này không áp dụng cho trường hợp DataMember là danh sách các bảng.
- Khi Evaluator vừa trả về một hoặc nhiều bảng đồng thời trả về cả biến (có khai báo kiểu OutPut 
trong thủ tục) thì DataMember sẽ khai báo các bảng, và sử dụng thẻ autoOutputMember để 
chỉ định cách thức lấy giá trị các biến kiểu Output.
- Trường hợp người dùng không khai báo câu thông báo bằng showMessage thì chương trình
luôn có câu thông báo mặc định cho người dùng về số lượng dòng đã insert vào bảng nào.
- Khi sử dụng thẻ zCustomConnectionName cần lưu ý: 
+ Nếu không có khai báo zCustomConnectionName trong Template và trong layout thì sẽ sử 
dụng giá trị zCustomConnectionName của form.
+ Khi mở command từ BravoLookupBox hoặc BravoServerConstraint sẽ không truyền 
zCustomConnectionName cho các form được mở. DataExplorer cũng sẽ không truyền 
zCustomConnectionName cho DataEditor khi thực hiện thêm mới/mở/đình chỉ/khôi 
phục/chuyển nhóm/sửa nhanh. Sẽ luôn là kết nối khai báo của Form nếu có khai báo riêng 
hoặc chuỗi kết nối Login nếu không khai báo gì.
- Nếu thủ tục lưu có 1 bảng mà DataMember có 2 bảng thì sẽ insert vào cả 2 bảng còn nếu đều 
là 2 bảng thì sẽ merge lần lượt. Khi DataMember là 1 bảng chương trình tự xác định Key liên 
kết với bảng mẹ, trường hợp trả về nhiều hơn 1 bảng thì phải chỉ định cột liên kết các bản ghi 
giữa các bảng bằng cột _ParentIdentityKey
- Nếu bSuppressChangeEvents = True thì các Eval trong các sự kiện RowDeleted, RowAdded.. 
sẽ không được thực hiện.
- BravoServerConstraint khi thực hiện command sẽ bỏ qua các tham số GetData, GetDataSet, 
GetSelectedData (luôn truyền DataSet).
BravoServerConstraint hỗ trợ khai báo tham số Parameters lấy giá trị xml DataSet hoặc 1 
bảng (hỗ trợ chỉ định tên cột dạng tên bảng.cột1.cột2…) từ postData bằng tiền tố @ như trong 
khai báo ServerCommand của DataEditor. Cụ thể: 
Cú pháp dạng đầy đủ: 
<Parameters>
<ParamName1>
<ParameterName>tên tham số hỗ trợ biểu thức nhúng</ParameterName>
<Direction></Direction>
...
<Name>post data name bắt đầu bằng @|toàn bộ dataset * hoặc 
NewDataSet|tên bảng với danh sách cột phân cách bởi .|tên bảng|tên cột<Name>
67
<Value>biểu thức</Value>
<Text>giá trị kiểu chuỗi</Text>
<ParamName1>
...
</Parameters>
Cú pháp dạng rút gọn:
<Parameters>
<ParamName1>post data name bắt đầu bằng @|toàn bộ dataset * hoặc 
NewDataSet|tên bảng với danh sách cột phân cách bởi .|tên bảng|biểu thức</ParamName1>
...
</Parameters>
Cú pháp dạng giản đơn kiểu Bravo 7:
<Parameters>post data name bắt đầu bằng @|NewDataSet|tên bảng|tên 
cột,...</Parameters>
Khác với Bravo 7, Bravo 8 không tự động lấy tên tham số thủ tục lưu nên nếu dùng cách giản 
đơn thì các giá trị bắt buộc phải trùng với tên tham số.
- Khi truyền tham số xml dataset/bảng dữ liệu, nếu dùng tên alias thì chuỗi xml sẽ dùng alias 
thay cho tên bảng
11. BravoTableAggregator
Ý nghĩa
Dùng để tập hợp các dòng dữ liệu trước khi thực thi việc lưu dữ liệu
Cú pháp
 <Eval_X>
 <ClassName>BravoTableAggregator</ClassName>
 <DataMember>Ten_bang</DataMember>
 <zScopeExpr>Bieu_Thuc</zScopeExpr>
 <Groups>
 <Ten_Cot1>Ten_Cot2</Ten_Cot1>
. . . . . 
</Groups>
 <SumValues>
 <Ten_Cot1>Ten_Cot2</Ten_Cot1>
. . . . . 
68
 </SumValues>
 </Eval_X>
 Thuộc tính
Tên thuộc tính Nội dung
1 DataMember Cột đích tác động dữ liệu. Chính là bảng sẽ insert dữ liệu 
vào
2 Expr Điều kiện các dòng thỏa mãn để thực thi Evaluator
3 Groups Giá trị tương ứng các cột khi nhóm dữ liệu
4 SumValues Giá trị tương ứng các cột khi Insert
5 Values Từ v4.5.8.0 Hỗ trợ khai báo trong thẻ <Values> với các 
biểu thức được thực hiện chỉ trong phạm vi nhóm
<Values> 
<Col1>SUM(…)</Col1> 
<Col2>AVG(…)+MAX(…)…</Col2> 
… 
</Values> 
6 bAutoResetDataMemberData (ngầm định=True) để chỉ định có xóa hay không các dòng 
trong bảng DataMember trước khi thực hiện
7 zDataSourceName Chỉ định tên nguồn dữ liệu được thực hiện tính tổng: có 
thể là bảng, bảng temp, hoặc view
Ví dụ
Trên màn hình Editor của Hóa đơn giá trị gia tăng có khai báo Evaluator sẽ nhóm các dòng dữ liệu 
tiền thuế Tiêu thu đặc biệt trước khi lưu vào B30AccDocAtchEntry
<Eval_AtchEntry_SumGroupByFromDetail>
 <ClassName>BravoTableAggregator</ClassName>
 <DataMember>vB30AccDocAtchEntry_Edit</DataMember>
 <zScopeExpr>!Empty(Amount6)</zScopeExpr>
 <Groups>
 <DebitAccount>CreditAccount2</DebitAccount>
 <CustomerCode>CustomerCode</CustomerCode>
 <ProductCostId>ProductCostId</ProductCostId>
 </Groups>
 <SumValues>
 <OriginalAmount>OriginalAmount6</OriginalAmount>
 <Amount>Amount6</Amount>
69
 </SumValues>
</Eval_AtchEntry_SumGroupByFromDetail>
Ghi chú
- Đây là một dạng Evaluator đặc biệt, phạm vi scopeType luôn là Table (phạm vi toàn bộ bảng). 
Tuy nhiên bắt đầu từ Ver 4.1.4.0 có hỗ trợ khai báo thẻ scopeType. scopeType=CurrentView 
để lấy thứ tự các dòng theo thứ tự hiển thị trên grid nhập liệu trong DataEditor (nhưng lưu ý 
là sẽ không có tác dụng khi import)
- Việc sử dụng các Evaluator này sẽ làm giảm dung lượng lưu trữ một cách đáng kể 
- Tham số <Ten_Cot1>: Chính là tên cột của bảng được khai báo trong DataMember. Tham 
số Ten_Cot2 là cột ở bảng mà Evaluator được khai báo.
12. BravoTableOrderer 
Ý nghĩa
Dùng để đánh số thứ tự các dòng trong bảng.
Cú pháp
 <Eval_X>
 <ClassName>BravoTableOrderer</ClassName>
 <DataMember>Ten_Cot</DataMember>
<nOrderStartValue>Gia_tri</nOrderStartValue>
<nOrderStepValue>Gia_tri</nOrderStepValue>
 </Eval_X>
Thuộc tính
Tên thuộc tính Nội dung
1 DataMember Cột đích tác động dữ liệu
2 Expr Điều kiện các dòng thỏa mãn để thực thi Evaluator
3 nOrderStartValue Khai báo giá trị bắt đầu đánh số thứ tự
4 nOrderStepValue Khai báo bước giữa các số thứ tự (VD: khai báo là 2 thì 
mỗi dòng giá trị sẽ cách nhau 2 đơn vị)
Ví dụ
70
Editor của Phiếu xuất, có định nghĩa 1 Evaluator trong BeforeTransaction để thực thi việc đánh số 
cho cột BuiltinOrder trước khi lưu: 
 <Eval_Ct0_UpdateBuiltinOrder>
 <ClassName>BravoTableOrderer</ClassName>
 <DataMember>BuiltinOrder</DataMember>
 </Eval_Ct0_UpdateBuiltinOrder
Khi người dùng F3 chứng từ sau đó Click vào tiêu đề các cột ở Grid để sắp xếp (hoặc thao tác như 
nào đó để thay đổi vị trí các dòng chi tiết) sau đó lưu lại, thì cột BuiltinOrder sẽ được đánh lại nên vị 
trí các dòng sẽ được giữ nguyên như người dùng đã thay đổi trước khi lưu.
Ghi chú
- Các thẻ chung khác tác dụng tương tự như Evaluator thông thường (tham khảo tài liệu liên quan)
- Với các Evaluator có sử dụng ClassName này thì scopeType luôn là CurrentView (phạm vi là bảng 
dữ liệu hiện thời)
- Thường được sử dụng trong việc đánh số thứ tự cột BuiltinOrder. Tuy nhiên khi sử dụng tính năng 
này cần khai báo kết hợp với thẻ Sort là cột BuiltinOrder.
13. BravoFileWriter / BravoReadFile
Ý nghĩa
Dùng để ghi/đọc nội dung text hoặc binary ra 1 file
Cú pháp
 <Eval_X>
 <ClassName>BravoFileWriter/BravoReadFile</ClassName>
 <fileAction>Gia_tri</fileAction>
 <overwriteExistingFile>Gia_tri</ overwriteExistingFile >
 <zFileName>Gia_tri</ zFileName >
 <Value>Gia_tri</Value>
 </Eval_X>
Thuộc tính
Tên thuộc tính Nội dung
71
1 fileAction Lựa chọn xử lý sau khi đã ghi file thành công. Các giá trị 
có thể nhận: 
- Nothing: Không làm gì cả
- OpenFile: Mở file đã ghi
- OpenFolder: Mở thư mục lưu file 
2 overwriteExistingFile Lựa chọn xử lý khi file đã tồn tại
3 zFileName Tên và đường dẫn file (nếu chỉ có tên file thì sẽ tự động 
dùng đường dẫn Temp, nếu bỏ trắng thì sẽ tự động dùng 
tên ngẫu nhiên)
4 Value Biểu thức trả về nội dung để ghi vào file
5 fileLocation Lựa chọn lưu đường dẫn lưu file ở đâu. Giá trị có thể nhận 
là :
+ DatabaseServer: lưu file tại server cài đặt CSDL
+ Local: lưu file tại máy client
Lưu ý: khi sử dung Eval để ghi hoặc đọc file thì user đăng 
nhập SQL phải có quyền đọc/ghi file phù hợp. Các file txt, 
xml, csv, tsv sẽ được xử lý như file văn bản
6 fileNotFoundAction Mặc định = Inoge
Lựa chọn việc đọc dữ liệu
- Ignore: Bỏ qua lỗi khi đọc file có lỗi
- SetNull: Cho phép xóa trắng ô chọn file
- Error: Hiển thị lỗi của chương trình
7 zCustomConnectionName Khai báo kết nối đến Server khác (tham khảo mục 
zCustomConectionName). Có tác dụng từ v4.1.7
8 nCommandTimeout Chỉ định số thời gian tối đa tính bằng giây chờ câu lệnh 
query thực hiện ở CSDL trước khi báo lỗi timeout
VD: Dùng để lưu và đọc file từ đường dẫn server, khai báo theo các bước sau
<TempColumns> 
<FileContent>
 <DataType>System.Byte[]</DataType>
 </FileContent>
 </TempColumns>
<ServerLoaded>
 <Eval_FileContent>
 <ClassName>BravoFileReader</ClassName>
 <DataMember>FileContent</DataMember>
 <fileLocation>DatabaseServer</fileLocation>
 <zFileName>G:\DATABASES2\SQL2014\Asset{=Code}.zip</zFileName>
 <fileNotFoundAction>SetNull</fileNotFoundAction>
 </Eval_FileContent>
</ServerLoaded>
72
Khai báo ở ColumnChanged hoặc BeforeTransaction, tuy nhiên thì cho dù lưu hay chưa lưu thì file 
cũng sẽ luôn được lưu vào đường dẫn ở zFileName
 <Eval_BravoFileWriter>
 <ClassName>BravoFileWriter</ClassName>
 <fileLocation>DatabaseServer</fileLocation>
 <zFileName>G:\DATABASES2\SQL2014\Asset{=Code}.zip</zFileName>
 <Value>FileContent</Value>
 <overwriteExistingFile>Confirm</overwriteExistingFile>
 <fileAction>Nothing</fileAction>
 </Eval_BravoFileWriter>
Lưu tên file
 <ColumnChanged>
 <FileContent>
 <Eval_SaveName>
 <DataMember>FileName</DataMember>
 <Value>IIF(FileContent IS NULL, '', 'G:\DATABASES2\SQL2014\Asset' + Code + '.zip')</Value>
 </Eval_SaveName>
 </FileContent>
</ColumnChanged>
Layout:
 <txtFileName>
 <ClassName>BravoDocInputBox</ClassName>
 <Dock>Top</Dock>
 <allowMultiSelect>ZipAlways</allowMultiSelect>
 <DataMember>FileContent</DataMember>
 <Column>1</Column>
 <Width>90</Width>
 </txtFileName>
14. BravoPosPromotionProgram
Ý nghĩa
Dùng để thực hiện tính các chương trình khuyến mại
Cú pháp
<ClassName>BravoPosPromotionProgram</ClassName>
14.1. zPromoTableName
Ý nghĩa
Tên bảng lưu dữ liệu chương trình khuyến mãi. Mặc định là Promo
Cú pháp
<zPromoTableName>ItemGroupPromo</zPromoTableName>
14.2. zApplyPromoTableName
Ý nghĩa
Tên bảng hứng kết quả sau khi tính toán khuyến mại
Cú pháp
73
<zApplyPromoTableName>igApplyPromo</zApplyPromoTableName>
14.3. zPromoDiscountRateMember
Ý nghĩa
Tên cột xác định tỷ lệ chiết khấu (mặc định là DiscountRate)
Cú pháp
<zPromoDiscountRateMember>Tên cột</zPromoDiscountRateMember>
14.4. ApplyPromoDefaultValues
Ý nghĩa
khai báo biến cần bổ sung giá trị. Ví dụ: đối với chương trình TRANSACTION truyền thêm các giá 
trị Tổng tiền hàng, Tiền hàng sau chiết khấu, Tổng tiền các mặt hàng không được chiết khấu
Cú pháp
<ApplyPromoDefaultValues>
 <TotalAmount2>PARENT.TotalAmount2</TotalAmount2>
 <TotalAmount9>PARENT.TotalAmount9</TotalAmount9>
 <TotalAmount0>PARENT.TotalAmount0</TotalAmount0>
 </ApplyPromoDefaultValues>
15. BravoPortSIPVoIPEvaluator/ BravoPortSIPVoIPInviteIncomingEvaluator
Ý nghĩa
- Dùng để thực hiện cuộc gọi voip qua tổng đài PortSIP
- Cần cài đặt thư viện portsipvoip bằng BravoTools
- BravoPortSIPVoIPEvaluator: thực hiện cuộc gọi đi
- BravoPortSIPVoIPInviteIncomingEvaluator: thực hiện nhận cuộc gọi
Cú pháp
 <Eval_X>
 <Assembly>Bravo.Device</Assembly>
<ClassName>BravoPortSIPVoIPEvaluator</ClassName>
 <zUserName>User đăng nhập server tổng đài</zUserName>
 <zPassword Encrypt="True">Pass đăng nhập server tổng đài</zPassword>
 <zSipServer>Tên server tổng đài </zSipServer>
 <zSipServerPort>Cổng kết nối server tổng đài</zSipServerPort>
 <zPhoneNumber>số điện thoại gọi đi</zPhoneNumber>
74
 <DataMember>Tên cột lưu trạng thái cuộc gọi </DataMember>
 </Eval_X>
Ví dụ
- Ở màn hình lệnh sửa chữa, bộ phận chăm sóc khách hàng sẽ thực hiện gọi điện hoặc 
nhận các cuộc gọi. 
- Tính năng sẽ kết nối Bravo đến một tổng đài ảo được cung cấp bởi các nhà cung cấp 
dịch vụ tổng đài (CMC Telecom). Nhà cung cấp sẽ cung cấp cho Bravo một địa chỉ 
server tổng đài, kèm theo một user/ pass. Tính năng sẽ sử dụng địa chỉ tổng đài, 
user/pass để thực hiện các cuộc gọi đi và nhận cuộc gọi đến như một máy điện thoại 
thông thường
- Kết thúc cuộc gọi, nếu có sử dụng tính năng ghi âm, thì file chứa nội dung ghi âm sẽ 
được lưu ở một địa chỉ của server tổng đài ảo tại một đường dẫn đã được khai báo.
Khai báo layout: 
75
Nội dung khai báo eval trong DataSource trong đó
- Eval: Eval_Online và Eval_Offline dùng để thực hiện nhận cuộc gọi ở 2 chế độ online và 
offline (đăng nhập Bravo nhưng không đăng ký nhận cuộc gọi)
- Eval: Eval_Dial và Eval_HangUp dùng để thực hiện cuộc gọi đi, trong đó Eval_Hangup là 
để kết thúc cuộc gọi chủ đích
 
16. BravoTimeAttendanceEvaluator
Ý nghĩa
Dùng để lấy dữ liệu máy chấm công Dahua, Zkemkeeper
Cú pháp
 <Eval_X>
 <Assembly>Bravo.Device</Assembly>
 <ClassName>BravoTimeAttendanceEvaluator</ClassName>
 <DataMember>TimeAttendaceData</DataMember>
 <machineType>Dahua</machineType>
 <zTimeZone>{=TimezoneCheck}</zTimeZone>
 <zIpAddress>{=zIpAddress}</zIpAddress>
 <zPort>{=zPort}</zPort>
 <zUsername>{=zUsername}</zUsername>
 <zPassword Encrypt="True"></zPassword>
76
 <zFromDate>'{=DocDate1}'</zFromDate>
 <zToDate>'{=DocDate2}'</zToDate> 
</Eval_X>
- Output cần có thư mục ...\Camera\DaHua: chứa cái file kết nối đến máy chấm công (sử dụng Bravotool để 
tạo thư viện DLL này)
- Cơ chế: hỗ trợ viết Evaluator kết nối đến máy chấm công, lấy dữ liệu dạng varbinary, sau đó vào thủ tục 
của chức năng sẽ Cast ra chuỗi XML để tự lấy dữ liệu (tham khảo thủ tục usp_B30HrmCheckInOut)
- Viết Eval ở màn hình Uspcaller: 
=> Trong đó 
+ TimeAttendaceData: sẽ là 1 tham số trong thủ tục khi thực hiện chức năng
+ zTimeZone: để khai báo số giờ cộng thêm theo giờ Timezone
+ Các thẻ khác còn lại: là các thông tin kết nối đến máy chấm công
- Thủ thục lấy dữ liệu: 
17. BravoAddFileEvaluator
Ý nghĩa
77
Dùng để đọc các file ở zFileName, nếu có nhiều tên file sẽ phân cách bởi ký tự ; và thêm số dòng 
mới tương ứng với số file vào bảng con, giá trị các cột của dòng mới được khai báo bằng 
selectedMembers
Cú pháp
 <Eval_X>
 <ClassName>BravoAddFileEvaluator</ClassName>
 <zFileName>Name</zFileName>
 <DataMember>Ten_view/bảng</DataMember>
 <selectAddedRow>First</selectAddedRow>
 <nFileSizeLimit>2097152</nFileSizeLimit>
 <selectedMembers>
 <FileName>Comment</FileName>
 <FileContent>BravoPictureEditor</FileContent>
 <ImageThumbnail>Address</ImageThumbnail>
 </selectedMembers>
</Eval_X>
Ví dụ:
Tham khảo ví dụ mô tả ở mục BravoDialogDataButton và BravoPictureEditor. Trong ví dụ này, khi 
ấn nút chọn nhiều file chương trình sẽ merger các file xuống Grid bằng Eval khai báo như sau:
Ghi chú: 
- nFileSizeLimit cho BravoAddFileEvaluator để khống chế dung lượng file cho phép (ngầm định 
=2097152 bytes) tương tự khai báo cho BravoOpenFileBox, BravoPictureInputBox, 
BravoDocInputBox…
78
18. BravoSendDataChange
Ý nghĩa
Dùng để gửi thông báo dữ liệu thay đổi. DataMember sẽ là tên bảng có dữ liệu thay đổi, Value sẽ 
là chuỗi xml chứa danh sách giá trị Id các dòng dữ liệu thay đổi hoặc chuỗi giá trị phân cách bởi dấu 
(,)
Cú pháp
 <Eval_X>
 <ClassName>BravoSendDataChange</ClassName>
 <DataMember>{=DataMember}</DataMember>
 <Value>@IdList</Value>
</Eval_X>
Ví dụ: Chức năng đánh số chứng từ hoặc duyệt ở Explorer của phiếu thu. Khi muốn ở 1 máy client 
đánh số chứng từ xong thì màn hình Explorer ở máy đó và tất cả các máy client khác đang mở 
Explorer của phiếu thu sẽ tự động refresh lại dữ liệu mới. Khi đó cần khai báo như sau:
Chú ý: 
- Bắt đầu từ 4.5.9.0 cho phép khai báo scopeType, zScopeExpr, ngầm định scopeType sẽ là 
None (tương tự với các phiên bản trước đây tức là sẽ lấy dòng binding hiện thời của bảng 
khai báo evaluator nhưng vẫn thực hiện ngay cả khi không có dòng dữ liệu nào)
19. BravoOauth2ResponseTypeCode
Ý nghĩa
Hỗ trợ ký số cho việc tích hợp thanh toán với Vietinbank trong chương trình
Sửa đổi BravoOauth2ResponseTypeCode để kết nối với hệ thống ngân hàng điện tử iBank - BIDV
79
Cú pháp
<Oauth2ResponseTypeCode_BIDV>
<Assembly>Bravo.Device</Assembly>
<ClassName>BravoOauth2ResponseTypeCode</ClassName>
<ZAuthUrl>http://119.17.209.145:8888/bidvauth/authenticate?secure=7afkr6%2ByN60rOq0
t9k9GvI4sV%2BpeEwxHfh9nx4hgBjzjzLCOiOuR20KzXA5/%2BDxop/RucgtfiMMAtMV95
YOCpy75hUW4YAlLTqdJG1bT/u7oMwkHr/WUSXARsnM57CaC</zAuthUrl>
<DataMember>AuthorizeCode</DataMember>
<ZResponseType>authorize_code</zResponseType>
<BScrollBarsEnabled>True</bScrollBarsEnabled>
</Oauth2ResponseTypeCode_BIDV>
Thuộc tính
Tên thuộc tính Nội dung
1 zAuthUrl Url xác thực người dùng
2 zResponseType Key bắt đầu của Query trong Callback Url
3 DataMember Query trong Callback Url được binding vào cột khai báo
20. BravoSendMailEvaluator
Ý nghĩa: Gửi mail tại máy trạm
Cú pháp: <ClassName>BravoSendEmailEvaluator</ClassName>
21. BravoPasswordPolicyValidator
Ý nghĩa: Kiểm tra một mật khẩu có đáp ứng chính sách bảo mật hay không (theo khai báo 
M_PasswordMinLength và M_PasswordComplex)
Cú pháp: < ClassName>BravoPasswordPolicyValidator</ ClassName>
Thuộc tính
Tên thuộc tính Nội dung
1 restrictedPassword Check mật khẩu có chứa tên người dùng (UserName) 
hoặc tên đầy đủ (FullName) hay không
Mặc định None
80
C.VALIDATORS.
Thẻ Validators chứa toàn bộ các khai báo kiểm tra dữ liệu hợp lệ. Bản Bravo7 các khai báo kiểm tra 
dữ liệu được xử lý trong thẻ <ValidateRules> và file Bravo7.Validators trong thư mục _Ouput hoặc 
sử dụng ServerConstraint. Phiên bản Bravo8 toàn bộ các xử lý kiểm tra sự hợp lệ của dữ liệu sẽ 
chỉ được xử lý trong khai báo thẻ Validators trong DataSource.
Validator được hiểu là các cảnh báo đối với người dùng ở Client trên giao diện, còn không đảm bảo 
giá trị tuyệt đối đúng khi dữ liệu được lưu vào bảng. Vì vậy cần phải kết hợp với các khai báo điều 
kiện từ thiết kế cơ sở dữ liệu (VD: các khai báo Unique…). Về nguyên tắc, Validator khai báo ở bảng 
nào thì chỉ có tác dụng ở bảng đó và các Validator sẽ được chạy khi có sự thay đổi giá trị các cột 
được khai báo trong SourceColumn và thỏa mãn các điều kiện khai báo, sau đó Validator sẽ được 
chạy lại trước khi lưu vào server. Ngoài ra Editor còn hỗ trợ đọc các Validator được khai báo trong 
template (với điều kiện các cột tham chiếu trong validator phải tồn tại ở tất cả các form sử dụng 
template)
Do cơ chế của Validator là kiểm tra với tất cả các dòng của bảng khi có sự thay đổi hoặc trước khi 
lưu nên cần cân nhắc việc sử dụng Validator ở các bảng có nhiều dòng.
Các Validator được khai báo trong thẻ mẹ Validators, ngoài các thẻ chung hỗ trợ cho tất cả các 
Validator thì các thẻ con và tác dụng của từng thẻ còn được quy định theo khai báo của thẻ 
<ClassName>. Nếu trong các Validator không khai báo thẻ <ClassName> thì giá trị mặc định của 
thẻ này là BravoNullValidator. Cụ thể các thẻ hỗ trợ như sau:
1. Assembly
Ý nghĩa: Khai báo đích danh file DLL xử lý phần validator.
Cú pháp
 <Validators>
 <Ten_Validator>
 <Assembly>Ten_Assembly</Assembly>
 .......
 </Ten_Validator>
 </Validators>
Ghi chú:
- Ứng dụng trong trường hợp có DLL viết riêng hỗ trợ kiểm tra Validator.
81
- Tùy theo từng form mà thẻ này luôn lấy giá trị mặc định, trường hợp gọi đến các xử lý ở màn 
hình khác thì phải khai báo tường minh. VD: ở các chức năng hạch toán bút toán khóa sổ 
đang khai báo:
<SelectClosingEntry>
 <Assembly>Bravo.DataExplorer</Assembly>
 <ClassName>DataExplorer</ClassName>
. . .
Để khai báo bước chọn bút toán.
2. ClassName
Ý nghĩa: Khai báo các kiểu Validator hỗ trợ.
Cú pháp
 <Validators>
 <Ten_Validator>
 <ClassName>Ten_classname</ClassName>
 .......
 </Ten_Validator>
 </Validators>
Ghi chú: Nếu không khai báo thẻ này thì giá trị mặc định của ClassName là BravoNullValidator
2.1.BravoFiscalDateValidator
Ý nghĩa: Validator kiểm tra sự hợp lệ của dữ liệu trong kỳ hạch toán hoặc khóa dữ liệu
Các thẻ hỗ trợ
Stt Tên thẻ con Nội dung
1 SourceColumn Danh sách các trường cần kiểm tra. Trường hợp là danh sách cột thì 
validator sẽ kiểm tra lần lượt từng trường. (tham khảo mục 
SourceColumn)
2 TargetColumn Danh sách cột hiển thị câu cảnh báo lỗi. (tham khảo mục 
TargetColumn)
3 bAcceptLockedDate Nếu khai báo = True thì giá trị nằm trong ngày khóa dữ liệu và năm 
làm việc vẫn coi là hợp lệ. Giá trị ngầm định là False. (Chú ý trường 
hợp kết hợp với zValidateExpr)
82
4 bAcceptNullValue Nếu khai báo = True thì giá trị NULL cũng được coi là hợp lệ. Giá trị 
ngầm định của thẻ này là là False
5 Caption Khai báo tiêu đề cột hiển thị thông báo lỗi(tham khảo mục Caption)
6 Expr Khai báo điều kiện chạy validator (tham khảo mục Expr)
7 Text Khai báo câu hiển thị lỗi (tham khảo mục Text)
8 zValidateExpr Khai báo biểu thức kiểm tra của validator (tham khảo mục 
zValidateExpr)
9 ClassName BravoFiscalDateValidator
Ví dụ:
Trên Editor các chứng từ đang khai báo validator kiểm tra ô ngày chứng từ trong năm làm việc hiện 
tại và chưa khóa dữ liệu:
 <FiscalDate>
 <ClassName>BravoFiscalDateValidator</ClassName>
 <SourceColumn>DocDate</SourceColumn>
 </FiscalDate>
Ghi chú
- Trường hợp validator không khai báo thẻ zValidateExpr thì chương trình sẽ kiểm tra các cột 
trong SourceColumn với năm tài chính hiện tại và chưa khóa. Lúc này các cột khai báo trong 
thẻ SourceColumn bắt buộc phải kiểu Date
- Trường hợp validator có khai báo thẻ zValidateExpr thì chương trình sẽ kiểm tra biểu thức 
khai báo trong thẻ zValidateExpr. Lúc này Validator xử lý tương tự như BravoNullValidator 
hoặc BravoValidator
- Câu thông báo lỗi mặc định là: “Ngày phải nằm trong kỳ hạch toán hiện thời (từ ngày … đến 
ngày…)”. Trong đó định dạng hiển thị thông tin ngày ăn theo khai báo định dạng ở từng máy 
client (khai báo trong Region).
2.2.BravoNullValidator
Ý nghĩa: Validator kiểm tra dữ liệu Null.
Các thẻ hỗ trợ
Stt Tên thẻ con Nội dung
1 SourceColumn Danh sách các trường cần kiểm tra. (tham khảo mục SourceColumn)
2 TargetColumn Danh sách cột hiển thị câu cảnh báo lỗi. (tham khảo mục 
TargetColumn)
83
3 bEmptyAsNull Nếu = True thì chuỗi giá trị trắng cũng được hiểu là null và không hợp 
lệ. Giá trị mặc định là True. (áp dụng cho các trường kiểu ký tự)
4 bZeroAsNull Nếu = True thì giá trị = 0 cũng được hiểu là null và không hợp lệ. Giá 
trị mặc định là True. (áp dụng cho các trường kiểu số)
5 Caption Khai báo tiêu đề cột hiển thị thông báo lỗi (tham khảo mục Caption)
6 Expr Khai báo điều kiện chạy validator (tham khảo mục Expr)
7 Text Khai báo câu hiển thị lỗi (tham khảo mục Text)
8 zValidateExpr Khai báo biểu thức kiểm tra của validator (tham khảo mục 
zValidateExpr)
9 ClassName Có thể bỏ qua thẻ này, vì giá trị mặc định luôn là BravoNullValidator
Ví dụ:
Trên Editor các chứng từ khai báo kiểm tra không được bỏ trắng ô tài khoản nợ thuế 
 <CheckDebitAccount3>
 <SourceColumn>DebitAccount3,TaxCode</SourceColumn>
 <TargetColumn>DebitAccount3</TargetColumn>
 <zValidateExpr>!(!Empty(TaxCode) AND Empty(DebitAccount3))</zValidateExpr>
 </CheckDebitAccount3>
Biểu thức này sẽ kiểm tra biểu thức trong thẻ zValidateExpr để xác định tính True/False của 
validator, và nó sẽ chỉ chạy khi có sự thay đổi giá trị của cột TaxCode hoặc cột DebitAccount3.
Ghi chú
- Với trường hợp Validator có khai báo ClassName là BravoNullValidator và chỉ khai báo thẻ 
SourceColumn thì chương trình sẽ kiểm tra lần lượt từng cột trong danh sách khai báo ở 
SourceColumn. Còn trường hợp có khai báo kết hợp với các thẻ khác thì validator chỉ chạy 
khi có sự thay đổi của ít nhất 1 cột trong danh sách cột khai báo trong SourceColumn (trừ khi 
có chỉ định của thẻ bValidateIfModify.
- Không cần khai báo ClassName thì được hiểu ngầm định là BravoNullValidator.
2.3.BravoServerConstraintValidator
Ý nghĩa: Validator kiểm tra sự hợp lệ của giá trị trả về từ một hàm hoặc một thủ tục.
Các thẻ hỗ trợ
Stt Tên thẻ con Nội dung
1 SourceColumn Danh sách các trường cần kiểm tra. Trường hợp là danh sách cột thì 
validator sẽ kiểm tra lần lượt từng trường. (tham khảo mục 
SourceColumn)
84
2 TargetColumn Danh sách cột hiển thị câu cảnh báo lỗi. (tham khảo mục 
TargetColumn)
3 Command Khai báo hàm hoặc thủ tục. Nếu thủ tục hoặc hàm trả về = 0 thì dữ 
liệu hợp lệ, ngược lại <> 0 thì giá trị không hợp lệ. (tham khảo mục 
Command)
4 Caption Khai báo tiêu đề cột hiển thị thông báo lỗi (tham khảo mục Caption)
5 Expr Khai báo điều kiện chạy validator (tham khảo mục Expr)
6 Text Khai báo câu hiển thị lỗi (tham khảo mục Text)
7 ClassName BravoServerConstraintValidator
8 zCustomConnection
Name
Khai báo kết nối đến Server khác (tham khảo mục 
zCustomConectionName)
9 Paramater Khai báo các tham số truyền vào trong thủ tục check. Các giá trị và 
cách khai báo tương tự như ở Eval.
Ví dụ
Trong validator của bảng <ChildTable_Phys> trên phiếu xuất đang khai báo
<ItemSerialNo_Unique>
<ClassName>BravoServerConstraintValidator</ClassName>
<Command>ufn_sys_CheckUniqueItemSerialNo</Command>
<SourceColumn>FiscalYear,ItemCode,ItemSerialNo,WarehouseCode,DocGroup,RowId</Sou
rceColumn>
<Expr>!Empty(ItemSerialNo)</Expr>
<Text>
 <Vietnamese>Số serial không có.</Vietnamese>
 <English>Serial number not found.</English>
</Text>
</ItemSerialNo_Unique>
Mục đích: kiểm tra số Serial gõ vào có tồn kho mới cho xuất.
Ghi chú
- Danh sách các cột khai báo trong thẻ SourceColumn tương ứng với các tham số truyền vào 
hàm hoặc thủ tục được khai báo trong thẻ Command.
- Validator này chỉ được chạy khi có sự thay đổi giá trị của các cột khai báo trong SourceColumn. 
- Nếu muốn chạy thì cần kết hợp khai báo thẻ bValidateIfModify.
- Với Validator này thì ngầm định bValidateIfModify và bValidateIfNotEmpty là True
- Bắt đầu từ Ver 4.1.7.0 Gộp DataValidation vào LayoutEngine, việc tạo và thực hiện của các 
validators sẽ chung cơ chế với evaluators, BravoServerConstraintValidator nếu không có khai 
báo Parameters sẽ sử dụng SourceColumn làm các tham số như trước, còn nếu có khai báo 
85
Parameters thì sẽ bỏ qua SourceColumn (cú pháp khai báo Parameters tương tự 
BravoServerConstraint). Điều đó có nghĩa là tham số truyền vào thủ tục hoàn toàn có thể là cả 
dataset trên màn hình Editor.
VD: Trên phiếu xuất kho nếu muốn kiểm tra tổng số lượng xuất có vượt dự toán theo sản 
phẩm trong danh mục dự toán không. Có thể cân nhắc sử dụng một trong 2 cách (cân nhắc 
giữa các vấn đề giao diện, tốc độ để lựa chọn các phương án) 
C1: Sử dụng Evaluator trong BeforeTransaction hoặc ServerCommand để viết thủ tục check 
tổng cột số lượng trên phiếu so với tổng dự toán, nếu vượt quá cảnh báo không cho lưu (khi 
người dùng ấn nút lưu)
C2: Sử dụng Validator dạng ServerContraint truyền cả bảng chi tiết vào check cảnh báo 
ngay khi người dùng gõ các giá trị khi nhập liệu. Trường hợp này có thể khai báo:
<CheckWarningOverCashPaymentPlan>
 <ClassName>BravoServerConstraintValidator</ClassName>
 <Command>usp_WarningOverItemPlan</Command> 
<SourceColumn>ProductCostId,ItemCode,Quantity</SourceColumn>
<TargetColumn>ProductCostId,ItemCode,Quantity9</TargetColumn>
 <Expr>ISNULL(DebitAccount,'') LIKE '62%'</Expr>
 <Parameters>
 <BranchCode>BranchCode</BranchCode>
 <Stt>Stt</Stt>
 <ProductCostId>ProductCostId</ProductCostId>
 <ItemCode>ItemCode</ItemCode>
 
<vB30AccDocItemIssue_Edit>*</vB30AccDocItemIssue_Edit>
 </Parameters>
 <bValidateIfModify>True</bValidateIfModify>
 <Text>
 <Vietnamese>Xuất kho vượt quá dự toán</Vietnamese>
 <English>Delivery over estimate</English>
 </Text>
 </CheckWarningOverCashPaymentPlan>
2.4.BravoUniqueKeyValidator
Ý nghĩa: Validator kiểm tra tính duy nhất trong cơ sở dữ liệu.
Các thẻ hỗ trợ
Stt Tên thẻ con Nội dung
1 SourceColumn Danh sách các trường cần kiểm tra. Trường hợp là danh sách cột thì 
được hiểu là kiểm tra tính duy nhất của tổ hợp các trường khai báo.
86
2 TargetColumn Danh sách cột hiển thị câu cảnh báo lỗi. (tham khảo mục 
TargetColumn)
3 FilterKey Khai báo mệnh đề kiểm tra thêm của validator. (tham khảo mục 
Filterkey)
4 Caption Khai báo tiêu đề cột hiển thị thông báo lỗi (tham khảo mục Caption)
5 Expr Khai báo điều kiện chạy validator (tham khảo mục Expr)
6 Text Khai báo câu hiển thị lỗi (tham khảo mục Text)
7 ClassName BravoUniqueKeyValidator
Ví dụ
Tham khảo ví dụ trong mục Filterkey
Ghi chú
- Thẻ FilterKey chỉ hỗ trợ với ClassName là BravoUniqueKeyValidator
- Tính duy nhất của dữ liệu sẽ được kiểm tra trong bảng hoặc view được khai báo trong thẻ 
Name của bảng đó.
- Với Vadilator loại này thì ngầm định bValidateIfModify và bValidateIfNotEmpty là true. Thẻ 
zValidateExpr không hỗ trợ với ClassName này
2.5.BravoValidator
Ý nghĩa: Validator tính hợp lệ của dữ liệu.
Các thẻ hỗ trợ
Stt Tên thẻ con Nội dung
1 SourceColumn Danh sách các trường cần kiểm tra.(tham khảo mục SourceColumn)
2 TargetColumn Danh sách cột hiển thị câu cảnh báo lỗi.(tham khảo mục 
TargetColumn)
3 zValidateExpr Biểu thức kiểm tra validator. (tham khảo mục zValidateExpr)
4 Caption Khai báo tiêu đề cột hiển thị thông báo lỗi. (tham khảo mục Caption)
5 Expr Khai báo điều kiện chạy validator (tham khảo mục Expr)
6 Text Khai báo câu hiển thị lỗi (tham khảo mục Text)
7 ClassName BravoValidator
Ví dụ
Ở bảng Parent trên Editor các chứng từ có khai báo Validator kiểm tra bắt buộc nhập dòng chi tiết 
khai báo như sau:
 <CheckRowOnDetail>
 <ClassName>BravoValidator</ClassName>
87
 <SourceColumn>RowOnDetail</SourceColumn>
 <zValidateExpr>Exists(Ct0)</zValidateExpr>
 <Text>
 <Vietnamese>Cần có ít nhất 1 dòng để lưu</Vietnamese>
 <English>Must have at least 1 row(s) to save.</English>
. . . . . 
 </Text>
 </CheckRowOnDetail>
Chú ý
- Với Classname = BravoValidator thì bắt buộc phải khai báo biểu thức kiểm tra 
(zValidateExpr)
3. SourceColumn
Ý nghĩa: Khai báo danh sách các cột cần kiểm tra.
Cú pháp
 <Validators>
 <Ten_Validator>
 <SourceColumn>Danh_sach_truong_kiem_tra</SourceColumn>
 ......
 </Ten_Validator>
 </Validators>
Ghi chú:
- Với từng ClassName thì ý nghĩa kiểm tra các cột là khác nhau (tham khảo kỹ hơn ở mục 
ClassName). Trường hợp ClassName là BravoNullValidator thì chương trình sẽ kiểm tra lần 
lượt từng cột được khai báo trong SourceColumn. 
- Trường hợp không khai báo thẻ TargetColumn thì các cột hiển thị cảnh báo lỗi sẽ là tất cả 
các cột trong SourceColumn.
4. TargetColumn
Ý nghĩa: Khai báo danh sách các cột hiển thị cảnh báo lỗi.
Cú pháp
 <Validators>
 <Ten_Validator>
88
 <SourceColumn> Danh_sách_truong_kiem_tra </SourceColumn>
 <TargetColumn>Truong_hien_thi_canh_bao_loi</TargetColumn>
 </Ten_Validator>
 </Validators>
Ghi chú:
- Khi không khai báo thẻ TargetColumn thì cột hiển thị cảnh báo lỗi sẽ là danh sách các cột ở
SourceColumn.
- Thường các cột khai báo trong TargetColumn nên khai báo các cột có hiển thị trên màn hình.
5. Caption
Ý nghĩa: Khai báo tiêu đề cột hiển thị cảnh báo lỗi.
Cú pháp
 <Validators>
 <Ten_Validator>
 ..........
 <Caption>
 <Vietnamese>Tieu_de_hien thi</Vietnamese>
 ......
 </Caption>
 </Ten_Validator>
 </Validators>
Ghi chú:
- Thẻ Caption có hỗ trợ theo từng ngôn ngữ.
- Trường hợp không khai báo thẻ này, chương trình sẽ lấy mặc định tiêu đề của các cột được 
khai báo trong SourceColumn hoặc TargetColumn (khai báo trong layout) để hiển thị câu 
thông báo lỗi
- Trường hợp SourceColumn hoặc TargetColumn là danh sách cột thì giá trị khai báo trong 
thẻ Caption được áp dụng cho tất cả các cột đó.
6. Expr
Ý nghĩa: Biểu thức điều kiện để chạy Validator
Cú pháp
 <Validators>
 <Ten_Validator>
 <Expr>Bieu_Thuc</Expr>
89
 </Ten_Validator>
 </Validators>
Ví dụ
Trên Editor của phiếu xuất có đoạn xử lý: Chỉ cảnh báo bắt buộc nhập thông tin bộ phận theo tính 
chất giao dịch khi danh mục chứng từ có khai báo hiển thị thông tin bộ phận. Tuy nhiên cột bộ phận 
có thể khai báo hiển thị ở đầu phiếu hoặc bảng chi tiết. Khi đó Validator trên bảng đầu phiếu sẽ khai 
báo: 
 <CheckDeptCode>
 <SourceColumn>DeptCode,CheckDeptCode</SourceColumn>
 <TargetColumn>DeptCode</TargetColumn>
 <zValidateExpr>!(!Empty(CheckDeptCode) AND Empty(DeptCode))</zValidateExpr>
 <Expr>ISNULL(UsingDeptCode,0)=1</Expr>
 </CheckDeptCode>
Biểu thức <Expr>ISNULL(UsingDeptCode,0)=1</Expr> có nghĩa là Evaluator chỉ chạy khi trong 
danh mục chứng từ được khai báo hiển thị ở đầu phiếu.
Ghi chú: Biểu thức khai báo trong thẻ Expr là giá trị cố định trong suốt quá trình nhập liệu. 
7. zValidateExpr
Ý nghĩa: Biểu thức điều kiện kiểm tra Validator đúng hay sai. Nếu zValidateExpr= True tức là dữ 
liệu hợp lệ, nếu zValidateExpr= False tức là dữ liệu không hợp lệ và sẽ hiển thị cảnh báo lỗi.
Cú pháp
 <Validators>
 <Ten_Validator>
 <zValidateExpr>Bieu_Thuc</zValidateExpr>
 </Ten_Validator>
 </Validators>
Ví dụ
Trên Editor của phiếu xuất có đoạn xử lý kiểm tra cảnh báo bắt buộc nhập thông tin bộ phận theo 
tính chất của mã giao dịch ở đầu phiếu. Validator được khai báo ở bảng chi tiết như sau: 
 <CheckDeptCode>
 <SourceColumn>DeptCode,CheckDeptCode</SourceColumn>
 <TargetColumn>DeptCode</TargetColumn>
 <zValidateExpr>!(!Empty(CheckDeptCode) AND Empty(DeptCode))</zValidateExpr>
90
 <Expr>ISNULL(UsingDeptCode,0)=2</Expr>
 </CheckDeptCode>
Biểu thức khai báo trong thẻ <zValidateExpr> có nghĩa là mã giao dịch có tích bắt buộc nhập bộ 
phận (được update giá trị từ bảng mẹ xuống bằng Evaluator) và mã bộ phận đang trắng -> sẽ cảnh 
báo lỗi.
Ghi chú:
- Thẻ này không hỗ trợ với ClassName nhận các giá trị BravoUniqueKeyValidator hoặc 
BravoServerConstraintValidator.
- Tham khảo thêm mục ClassName
8. Text
Ý nghĩa: Khai báo câu cảnh báo lỗi dữ liệu cho validator
Cú pháp
 <Validators>
<Ten_Validator>
 ......
<Text>
 <Vietnamese>Cau_canh_bao_loi_Tieng_Viet</Vietnamese>
 <English>Cau_canh_bao_loi_tieng_Anh</English>
 ......
 </Text>
 </Ten_Validator>
 </Validators>
Ghi chú:
- Câu thông báo lỗi khai báo trong thẻ Text được áp dụng cho tất cả các cột được khai báo trong 
SourceColumn hoặc TargetColumn.
- Có hỗ trợ biểu thức nhúng truyền vào câu thông báo và được khai báo bằng biểu thức ngoặc 
nhọn. 
- Trường hợp không khai báo thẻ Text trong validator thì chương trình sẽ lấy các câu thông báo 
mặc định tương ứng với từng ClassName. Cụ thể như sau: 
Stt Tên ClassName Câu thông báo mặc định
1 BravoNullValidator Không được bỏ trắng giá trị
2 BravoValidator Giá trị không hợp lệ
91
3 BravoFiscalDateValidator Ngày phải nằm trong kỳ hạch toán hiện thời (từ ngày 
… đến ngày…)
4 BravoUniqueKeyValidator Đã có giá trị tương tự
5 BravoServerConstraintValidator Giá trị không hợp lệ
9. Command
Ý nghĩa: Khai báo hàm hoặc thủ tục được thực thi khi kiểm tra dữ liệu. Giá trị trả về của hàm hoặc 
biểu thức = 0 là dữ liệu hợp lệ, dữ liệu khác 0 là không hợp lệ.
Cú pháp
 <Command>Ten_cuaHam/thutuc</Command>
Ví dụ
Trên Editor của phiếu xuất có validator kiểm tra sự hợp lệ của mã số thuế:
<CheckTaxRegNo>
 <ClassName>BravoServerConstraintValidator</ClassName>
 <Command>ufn_sys_TaxRegNo_Validate</Command>
 <SourceColumn>TaxRegNo</SourceColumn>
 </CheckTaxRegNo>
Trong đó, thứ tự các trường khai báo trong SourceColumn tương ứng với thứ tự các tham số truyền 
vào trong hàm. Nếu không có tham số truyền vào sẽ lấy giá trị mặc định khai báo trong thủ tục hoặc 
hàm. Nếu giá trị trả về của hàm hoặc thủ tục= 0 thì giá trị là hợp lệ. Nếu giá trị hàm trả về <>0 thì 
giá trị mã số thuế là không hợp lệ.
Ghi chú:
- Thẻ này chỉ hỗ trợ với ClassName nhận các giá trị BravoServerConstraintValidator.
- Thứ tự các cột khai báo trong thẻ SourceColumn chính là thứ tự truyền vào các tham số trong 
hàm hoặc thủ tục khai báo trong Command.
- Tham khảo thêm trong mục BravoServerConstraintValidator
10.Filterkey
Ý nghĩa: là điều kiện sau Where của mệnh đề kiểm tra của validator.
Cú pháp
 <Validators>
 <Ten_Validator>
<ClassName>BravoUniqueKeyValidator</ClassName>
92
 <FilterKey>Bieu_thuc_Kiem_tra</Filterkey>
. . . . . . . .
 </Ten_Validator>
 </Validators>
Ví dụ
Trên Editor của phiếu xuất có validator tính duy nhất của số chứng từ.
<CheckDocNoUnique>
 <ClassName>BravoUniqueKeyValidator</ClassName>
 <SourceColumn>DocNo</SourceColumn>
 <FilterKey>DocCode IN (SELECT Ma_Ct FROM B00DmCt WHERE 
ISNULL(DocCodeNumbering,'{=DocCode}') =
IIF('{=DocCodeNumbering}'='','{=DocCode}','{=DocCodeNumbering}')) AND
BranchCode='{=Branch()}' AND FiscalYear='{=FiscalYear}'</FilterKey>
. . . . . .
</CheckDocNoUnique>
Trong đó mệnh đề Where kiểm tra tính duy nhất của số chứng từ nhưng chỉ kiểm tra với dữ liệu 
của đơn vị cơ sở hiện tại, năm làm việc hiện tại và chỉ kiểm tra trùng với chứng từ phiếu xuất (hoặc 
nhóm chúng từ cùng định dạng số chứng từ PX)
Ghi chú: Thẻ này chỉ hỗ trợ với Validator khai báo ClassName là BravoUniqueKeyValidator.
11. bValidateIfModify
Ý nghĩa: Thiết lập cờ để quy định việc thực thi validator trong trường hợp có chạy Validator hay 
không khi giá trị thay đổi.
Cú pháp
 <Validators>
 <Ten_Validator>
<bValidateIfModify>TRUE | FALSE</bValidateIfModify>
. . . . . . . .
 </Ten_Validator>
 </Validators>
- Nếu khai báo bValidateIfModify = False thì khi đứng ở 1 năm F3 bản ghi 1 năm khác lên sẽ báo 
lỗi dữ liệu ở ô DocDate
Ghi chú
93
- Giá trị mặc định là False (trừ khi ClassName là BravoUniqueKeyValidator hoặc 
BravoServerConstraintValidator thì giá trị mặc định là True)
- True: chỉ thực thi Validator khi giá trị các cột trong SourceColumn có sự thay đổi 
- False: luôn thực thi Validator
- Thẻ này áp dụng với mọi ClassName.
12. bValidateNegate
Ý nghĩa: Thiết lập cờ để quy định việc thực thi validator để quy định việc check theo giá trị đúng/ sai 
của Validator hay check ngược lại
Cú pháp
 <Validators>
 <Ten_Validator>
<bValidateNegate>Gia_tri</bValidateNegate>
. . . . . . . .
 </Ten_Validator>
 </Validators>
Ghi chú
- Giá trị có thể nhận của thẻ là False hoặc True. Trong đó giá trị mặc định là False
- True: Thực thi kiểm tra Validator ngược lại so với các điều kiện khai báo
- False: Thực hiện kiểm tra Validator theo điều kiện khai báo
- Áp dụng với mọi ClassName
13. bValidateIfNotEmpty
Ý nghĩa: Thiết lập cờ để quy định việc thực thi validator: Có thực thi Validator hay không khi các cột 
trong SourceColumn trắng
Cú pháp
 <Validators>
 <Ten_Validator>
<bValidateIfNotEmpty>Gia_tri</bValidateIfNotEmpty>
. . . . . . . .
94
 </Ten_Validator>
 </Validators>
Ghi chú
- Giá trị có thể nhận của thẻ là False hoặc True. Trong đó giá trị mặc định là False (trừ khi 
ClassName là BravoUniqueKeyValidator hoặc BravoServerConstraintValidator thì giá trị mặc 
định là True)
- True: Thực thi Validator khi giá trị các cột trong SourceColumn khác trắng.
- False: luôn thực thi Validator
- Áp dụng với mọi ClassName
14. bValidateWarning
Ý nghĩa: Thiết lập cờ để quy định việc thực thi Validator: Dạng cảnh báo cho lưu hay thông báo lỗi 
không cho lưu
Cú pháp
 <Validators>
 <Ten_Validator>
<bValidateNegate>Gia_tri</bValidateNegate>
. . . . . . . .
 </Ten_Validator>
 </Validators>
Ghi chú
- Giá trị có thể nhận của thẻ là False hoặc True. Trong đó giá trị mặc định là False
- True: Thực thi kiểm tra validator dạng cảnh báo cho lưu
- False: Dạng cảnh báo không cho lưu
15. bEmptyAsNull
Ý nghĩa: Khai báo xác định giá trị trắng có được coi là Null không
Cú pháp
 <Validators>
 <Ten_Validator>
95
<bEmptyAsNull>Gia_tri</bEmptyAsNull>
. . . . . . . .
 </Ten_Validator>
 </Validators>
Ghi chú
- Giá trị có thể nhận của thẻ là False hoặc True. Trong đó giá trị mặc định là True
- True: giá trị trắng cũng được coi là NULL
- False: Giá trị trắng không được coi là NULL
- Thẻ này chỉ hỗ trợ với validator có ClassName là BravoNullValidator hoặc không khai báo 
ClassName và chỉ áp dụng cho các trường kiểu chuỗi.
16. bZeroAsNull
Ý nghĩa: Khai báo xác định giá trị 0 có được coi là Null không.
Cú pháp
 <Validators>
 <Ten_Validator>
<bZeroAsNull>Gia_tri</bZeroAsNull>
. . . . . . . .
 </Ten_Validator>
 </Validators>
Ghi chú
- Giá trị có thể nhận của thẻ là False hoặc True. Trong đó giá trị mặc định là True
- True: giá trị 0 cũng được coi là NULL
- False: Giá trị 0 không được coi là NULL
- Thẻ này chỉ hỗ trợ với validator có ClassName là BravoNullValidator hoặc không khai báo 
ClassName và chỉ áp dụng cho các trường kiểu số.
17. RestrictedPassword
Ý nghĩa: check mật khẩu có chứa tên người dùng (UserName) hoặc tên đầy đủ (FullName) 
hay không trong khai báo BravoPasswordPolicyValidator
Cú pháp 
<Ten_Validator> 
<ClassName>BravoPasswordPolicyValidator</ClassName> 
 <SourceColumn>_NewPassword</SourceColumn> 
96
 <TargetColumn>_NewPassword</TargetColumn> 
 <restrictedPassword>Specific | None</restrictedPassword>
 …….
<Ten_Validator> 
Ghi chú: Giá trị mặc định là None 