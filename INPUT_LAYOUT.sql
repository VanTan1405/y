<root>
	<navigator>
		<LinkCommand>
			<Items>
				<Item_BizDocPO>
					<Caption>
						<Vietnamese>Lấy đơn hàng mua</Vietnamese>
						<English>Import order</English>
						<Chinese>进口订单的细节</Chinese>
						<Japanese>インポート順の詳細</Japanese>
						<Korean>수입 주문의 세부 모습입니다.</Korean>
					</Caption>
					<Execute>
						<Eval_ConvertFromB30BizDoc_PO_GetData />
						<Eval_Purchase_Select />
					</Execute>
				</Item_BizDocPO>
				<Item_BizDocPO_Detail>
					<Caption>
						<Vietnamese>Lấy chi tiết đơn hàng mua</Vietnamese>
						<English>Import order's detail</English>
						<Chinese>进口订单的细节</Chinese>
						<Japanese>インポート順の詳細</Japanese>
						<Korean>수입 주문의 세부 모습입니다.</Korean>
					</Caption>
					<Execute>
						<Eval_ConvertFromB30BizDoc_PO_GetData_Detail />
						<Eval_Purchase_Select />
					</Execute>
				</Item_BizDocPO_Detail>
				<Item_CurrentStock>
					<Caption>
						<Vietnamese>Xem tồn kho tức thời</Vietnamese>
						<English>Current stock</English>
						<Chinese>目前的股票</Chinese>
						<Japanese>現在の在庫</Japanese>
						<Korean>현재 재고.</Korean>
					</Caption>
					<Execute>
						<Eval_Report_CurrentStock />
					</Execute>
				</Item_CurrentStock>
				<Item_AccDoc_Sales>
					<Visible>True</Visible>
					<Caption>
						<Vietnamese>Lấy chi tiết hóa đơn nội bộ</Vietnamese>
						<English>Import internal order's detail</English>
						<Chinese>进口订单的细节</Chinese>
						<Japanese>インポート順の詳細</Japanese>
						<Korean>수입 주문의 세부 모습입니다.</Korean>
					</Caption>
					<Execute>
						<Eval_ConvertFromB30AccDoc_Sales_GetData />
					</Execute>
				</Item_AccDoc_Sales>
				<Item_BizDocRC>
					<Caption>
						<Vietnamese>Lấy lệnh nhập hàng</Vietnamese>
						<English>Import receipt command</English>
						<Chinese>收到命令</Chinese>
						<Japanese>領収書のコマンド</Japanese>
						<Korean>영수증 명령.</Korean>
					</Caption>
					<Execute>
						<Eval_ConvertFromB30BizDoc_RC_GetData />
					</Execute>
				</Item_BizDocRC>
			</Items>
		</LinkCommand>
	</navigator>
	<panelEditor>
		<Dock>Fill</Dock>
		<Cols>
			<Column_0>
				<SizeType>Percent</SizeType>
				<Width>100</Width>
			</Column_0>
		</Cols>
		<Rows>
			<Row_1>
				<SizeType>Percent</SizeType>
				<Height>100</Height>
			</Row_1>
		</Rows>
		<Controls>
			<panelParent>
				<Row />
				<Column>0</Column>
				<Margin>5,5,5,2</Margin>
				<AutoSize>True</AutoSize>
				<Cols>
					<Column_1>
						<SizeType>Percent</SizeType>
						<Width>55</Width>
					</Column_1>
					<Column_2>
						<SizeType>Absolute</SizeType>
						<Width>10</Width>
					</Column_2>
					<Column_3>
						<SizeType>Percent</SizeType>
						<Width>45</Width>
					</Column_3>
				</Cols>
				<Controls>
					<lblDocDate>
						<Text>
							<Vietnamese>Ngày</Vietnamese>
							<English>Date</English>
							<Chinese>日期</Chinese>
							<Japanese>日付</Japanese>
							<Korean>날짜.</Korean>
						</Text>
						<Column>0</Column>
						<Row />
						<Dock expr="True">{=IIF(CONFIG('M_AccBookingForm')='1','Bottom','Left')}</Dock>
					</lblDocDate>
					<panelDocDate>
						<Column>1</Column>
						<Cols>
							<Column_0>
								<SizeType>Percent</SizeType>
								<Width>20</Width>
							</Column_0>
							<Column_2>
								<SizeType>Percent</SizeType>
								<Width>30</Width>
							</Column_2>
							<Column_3>
								<SizeType>Percent</SizeType>
								<Width>50</Width>
							</Column_3>
						</Cols>
						<Controls>
							<txtDocDate>
								<ClassName>BravoDateInputBox</ClassName>
								<DataMember>DocDate</DataMember>
								<Column>0</Column>
								<Row />
								<Anchor>Top,Left,Right</Anchor>
							</txtDocDate>
							<lblDocNo>
								<Text>
									<Vietnamese>Số</Vietnamese>
									<English>No.</English>
									<Chinese>数</Chinese>
									<Japanese>数</Japanese>
									<Korean>번호.</Korean>
								</Text>
								<Column>1</Column>
							</lblDocNo>
							<txtDocNo>
								<ClassName>BravoTextBox</ClassName>
								<CharacterCasing>Upper</CharacterCasing>
								<DataMember>DocNo</DataMember>
								<Column>2</Column>
							</txtDocNo>
							<panelCurrencyCode>
								<Anchor>Top,Right,Bottom,Left</Anchor>
								<Column>3</Column>
								<Cols>
									<Column_1>
										<SizeType>Percent</SizeType>
										<Width>40</Width>
									</Column_1>
									<Column_2>
										<SizeType>Percent</SizeType>
										<Width>60</Width>
									</Column_2>
								</Cols>
								<Controls>
									<lblCurrencyCode>
										<Text>
											<Vietnamese>Tiền tệ</Vietnamese>
											<English>Currency</English>
											<Chinese>货币</Chinese>
											<Japanese>通貨</Japanese>
											<Korean>통화.</Korean>
										</Text>
										<Row />
										<Column>0</Column>
									</lblCurrencyCode>
									<lookupCurrencyCode>
										<bindingMembers>
											<ExchangeRateOperator>ExchangeRateOperator</ExchangeRateOperator>
											<DecimalRound>DecimalRound</DecimalRound>
											<Id>Id_Currency</Id>
										</bindingMembers>
										<ClassName>BravoLookupBox</ClassName>
										<DataMember>CurrencyCode</DataMember>
										<zDisplayTextFormat>{0}</zDisplayTextFormat>
										<SelectKey>IsGroup=0</SelectKey>
										<LookupKey>Currency</LookupKey>
										<Column>1</Column>
									</lookupCurrencyCode>
									<txtExchangeRate>
										<ClassName>BravoNumericInputBox</ClassName>
										<DataMember>ExchangeRate</DataMember>
										<Column>2</Column>
										<Style>Format:N2;</Style>
										<Enabled expr="True">{=CurrencyCode&lt;&gt;CONFIG('M_Ma_Tte0')}</Enabled>
										<Anchor>15</Anchor>
									</txtExchangeRate>
								</Controls>
								<AutoSize>True</AutoSize>
							</panelCurrencyCode>
						</Controls>
						<AutoSize>True</AutoSize>
						<Dock>Bottom</Dock>
					</panelDocDate>
					<panelDocBookingNo_DocStatus>
						<Column>2</Column>
						<ColumnSpan>2</ColumnSpan>
						<Dock>Fill</Dock>
						<Row>0</Row>
						<AutoSize>True</AutoSize>
						<Cols>
							<Column_0>
								<SizeType>Percent</SizeType>
								<Width>100</Width>
							</Column_0>
						</Cols>
						<Controls>
							<lookupDocStatus>
								<Row>0</Row>
								<Column>0</Column>
								<bindingMembers>
									<IsCancelled>IsCancelled</IsCancelled>
									<PostGL>PostGL</PostGL>
									<Lock>Lock</Lock>
								</bindingMembers>
								<ClassName>BravoLookupBox</ClassName>
								<DataMember>DocStatus</DataMember>
								<LookupKey>DocStatus</LookupKey>
								<FilterKey>Ma_Nvu IS NULL OR Ma_Nvu='{=Ma_Nvu}'</FilterKey>
								<ReadOnly>True</ReadOnly>
								<TabStop>False</TabStop>
								<BorderStyle>None</BorderStyle>
								<Style>BackColor:240,240,240;</Style>
								<fontStyle>Bold</fontStyle>
								<TextAlign>Right</TextAlign>
								<Anchor>Top,Left,Bottom,Right</Anchor>
							</lookupDocStatus>
							<panelDocBookingNo>
								<Column>0</Column>
								<Row>1</Row>
								<Visible expr="True">{=CONFIG('M_AccBookingForm')=1}</Visible>
								<AutoSize>True</AutoSize>
								<Cols>
									<Column_1>
										<Width>60</Width>
										<SizeType>Percent</SizeType>
									</Column_1>
									<Column_3>
										<Width>40</Width>
										<SizeType>Percent</SizeType>
									</Column_3>
								</Cols>
								<Controls>
									<lblDocBookingId>
										<Text>
											<Vietnamese>Số CTGS</Vietnamese>
											<English>Booking number</English>
											<Japanese>ドキュメントの予約番号</Japanese>
											<Chinese>文档预订号码</Chinese>
											<Korean>문서 예약 번호</Korean>
										</Text>
										<Column>0</Column>
									</lblDocBookingId>
									<lookupDocBookingId>
										<Column>1</Column>
										<Dock>Fill</Dock>
										<ClassName>BravoLookupBox</ClassName>
										<DataMember>DocBookingId</DataMember>
										<LookupKey>DocBooking</LookupKey>
										<FilterKey>IsGroup=0 AND StartDate &lt;= '{=DocDate}' AND '{=DocDate}' &lt;= EndDate AND (DocCode LIKE '%{=DocCode}%' OR DocCode = '') </FilterKey>
										<!--zDisplayTextFormat>{0}</zDisplayTextFormat-->
										<bindingMembers>
											<DocBookingDate>DocBookingDate</DocBookingDate>
										</bindingMembers>
									</lookupDocBookingId>
									<lblDocBookingDate>
										<Column>2</Column>
										<Text>
											<Vietnamese>Ngày CTGS</Vietnamese>
											<English>Doc booking date</English>
											<Japanese>ドキュメントの予約日</Japanese>
											<Chinese>文件预订日期</Chinese>
											<Korean>문서 예약 날짜</Korean>
										</Text>
									</lblDocBookingDate>
									<txtDocBookingDate>
										<ClassName>BravoDateInputBox</ClassName>
										<DataMember>DocBookingDate</DataMember>
										<Column>3</Column>
										<Enabled>False</Enabled>
									</txtDocBookingDate>
								</Controls>
							</panelDocBookingNo>
						</Controls>
					</panelDocBookingNo_DocStatus>
					<lblCustomerId>
						<Text>
							<Vietnamese>Đối tượng</Vietnamese>
							<English>Customer</English>
							<Chinese>顾客</Chinese>
							<Japanese>顧客</Japanese>
							<Korean>고객.</Korean>
						</Text>
						<Row />
						<Column>0</Column>
					</lblCustomerId>
					<lookupCustomerId>
						<Anchor>15</Anchor>
						<bindingMembers>
							<CustomerType>CustomerType</CustomerType>
							<Name>CustomerName</Name>
							<Person>Person_Customer</Person>
							<Address>Address</Address>
							<TaxRegNo>TaxRegNo_Customer</TaxRegNo>
							<DueDateDefault>DueDate</DueDateDefault>
							<IsUsingDuePayment>IsUsingDuePayment</IsUsingDuePayment>
							<IsDebtByContract>IsDebtByContract</IsDebtByContract>
						</bindingMembers>
						<ClassName>BravoLookupBox</ClassName>
						<DataMember>CustomerId</DataMember>
						<LookupKey>Customer</LookupKey>
						<SelectKey>IsGroup=0</SelectKey>
						<Column>1</Column>
					</lookupCustomerId>
					<lblPerson>
						<Text>
							<Vietnamese>Họ và tên</Vietnamese>
							<English>Full name</English>
							<Chinese>全名</Chinese>
							<Japanese>フルネーム</Japanese>
							<Korean>가득한 이름.</Korean>
						</Text>
						<Row />
						<Column>0</Column>
					</lblPerson>
					<txtPerson>
						<Anchor>15</Anchor>
						<ClassName>BravoTextBox</ClassName>
						<DataMember>Person</DataMember>
						<Column>1</Column>
					</txtPerson>
					<lblAddress>
						<Text>
							<Vietnamese>Địa chỉ</Vietnamese>
							<English>Address</English>
							<Chinese>地址</Chinese>
							<Japanese>アドレス</Japanese>
							<Korean>주소.</Korean>
						</Text>
						<Row />
						<Column>0</Column>
					</lblAddress>
					<txtAddress>
						<Anchor>15</Anchor>
						<ClassName>BravoTextBox</ClassName>
						<DataMember>Address</DataMember>
						<Column>1</Column>
					</txtAddress>
					<lblTransCode>
						<Text>
							<Vietnamese>Giao dịch</Vietnamese>
							<English>Transaction</English>
							<Chinese>交易</Chinese>
							<Japanese>トランザクション</Japanese>
							<Korean>거래.</Korean>
						</Text>
						<Row />
						<Column>0</Column>
					</lblTransCode>
					<lookupTransCode>
						<Anchor>15</Anchor>
						<bindingMembers>
							<CheckExpenseCatgId>CheckExpenseCatgId</CheckExpenseCatgId>
							<CheckDeptId>CheckDeptId</CheckDeptId>
							<!--03/11/2020: PhongNVT chuyển cách lấy số liệu từ C1, C2 sang PO, SO
							<CheckBizDocId_C1>CheckBizDocId_C1</CheckBizDocId_C1>
							<CheckBizDocId_C2>CheckBizDocId_C2</CheckBizDocId_C2-->
							<CheckBizDocId_PO>CheckBizDocId_PO</CheckBizDocId_PO>
							<CheckBizDocId_SO>CheckBizDocId_SO</CheckBizDocId_SO>
							<CheckJobId>CheckJobId</CheckJobId>
							<WorkProcessId>WorkProcessId</WorkProcessId>
							<IsPostGL>Posted</IsPostGL>
							<OutsideAccount>OutsideAccount</OutsideAccount>
							<ItemAccountType>ItemAccountType</ItemAccountType>
							<CurrencySegmentType>CurrencySegmentType</CurrencySegmentType>
							<Account>Account_Trans</Account>
							<!-- 23/10/2023 ANHPK cảnh báo nhập công đoạn theo TK
							<CheckWorkProcess>CheckWorkProcess</CheckWorkProcess-->
							<CheckCostCentre>CheckCostCentre</CheckCostCentre>
						</bindingMembers>
						<ClassName>BravoLookupBox</ClassName>
						<DataMember>TransCode</DataMember>
						<LookupKey>Trans</LookupKey>
						<FilterKey>ISNULL(TransTypeCode,'{=TransTypeCode}')='{=TransTypeCode}' AND {=BranchFilter('BranchCode')}</FilterKey>
						<SelectKey>IsGroup=0</SelectKey>
						<Column>1</Column>
					</lookupTransCode>
					<lblDescription>
						<Text>
							<Vietnamese>Diễn giải</Vietnamese>
							<English>Description</English>
							<Chinese>描述</Chinese>
							<Japanese>説明</Japanese>
							<Korean>설명.</Korean>
						</Text>
						<Row />
						<Column>0</Column>
					</lblDescription>
					<txtDescription>
						<Anchor>15</Anchor>
						<ClassName>BravoTextBox</ClassName>
						<DataMember>Description</DataMember>
						<Column>1</Column>
						<Multiline>True</Multiline>
						<RowSpan>6</RowSpan>
					</txtDescription>
					<panelHeaderRight>
						<AutoSize>True</AutoSize>
						<Anchor>15</Anchor>
						<RowSpan>10</RowSpan>
						<Row>1</Row>
						<Column>3</Column>
						<Controls>
							<lblCreditAccount>
								<Text>
									<Vietnamese>Tk có</Vietnamese>
									<English>Credit acc.</English>
									<Chinese>信用账户</Chinese>
									<Japanese>貸方勘定</Japanese>
									<Korean>신용 계정.</Korean>
								</Text>
								<Row />
								<Column>0</Column>
							</lblCreditAccount>
							<lookupCreditAccount>
								<bindingMembers>
									<CustomerAccount>CustomerCreditAccount</CustomerAccount>
									<!--ExpenseCatgAccount>ExpenseCatgDebitAccount</ExpenseCatgAccount-->
									<ProductAccount>ProductCreditAccount</ProductAccount>
									<DueSideAccount>DueSideCreditAccount</DueSideAccount>
								</bindingMembers>
								<Anchor>Top,Left,Right</Anchor>
								<ClassName>BravoLookupBox</ClassName>
								<DataMember>CreditAccount</DataMember>
								<LookupKey>ChartOfAccount</LookupKey>
								<SelectKey>IsGroup=0 AND IsParentAccount=0</SelectKey>
								<Column>1</Column>
							</lookupCreditAccount>
							<lblEmployeeId>
								<Text>
									<Vietnamese>Nhân viên</Vietnamese>
									<English>Employee</English>
									<Chinese>雇员</Chinese>
									<Japanese>従業員</Japanese>
									<Korean>직원.</Korean>
								</Text>
								<Row />
								<Column>0</Column>
								<Visible expr="True">{=UsingEmployeeId=1}</Visible>
							</lblEmployeeId>
							<lookupEmployeeId>
								<ClassName>BravoLookupBox</ClassName>
								<DataMember>EmployeeId</DataMember>
								<LookupKey>Employee</LookupKey>
								<Anchor>Top,Left,Right</Anchor>
								<SelectKey>IsGroup=0</SelectKey>
								<Column>1</Column>
								<Visible expr="True">{=UsingEmployeeId=1}</Visible>
							</lookupEmployeeId>
							<lblDeptId>
								<Text>
									<Vietnamese>Bộ phận</Vietnamese>
									<English>Department</English>
									<Chinese>部门</Chinese>
									<Japanese>部門</Japanese>
									<Korean>부입니다.</Korean>
								</Text>
								<Row />
								<Column>0</Column>
								<Visible expr="True">{=UsingDeptId=1}</Visible>
							</lblDeptId>
							<lookupDeptId>
								<ClassName>BravoLookupBox</ClassName>
								<DataMember>DeptId</DataMember>
								<Anchor>Top,Left,Right</Anchor>
								<LookupKey>Dept</LookupKey>
								<SelectKey>IsGroup=0</SelectKey>
								<Column>1</Column>
								<Visible expr="True">{=UsingDeptId=1}</Visible>
							</lookupDeptId>
							<lblExpenseCatgId>
								<Text>
									<Vietnamese>Khoản mục</Vietnamese>
									<English>Category</English>
									<Chinese>类别</Chinese>
									<Japanese>カテゴリ</Japanese>
									<Korean>범주</Korean>
								</Text>
								<Row />
								<Column>0</Column>
								<Visible expr="True">{=UsingExpenseCatgId=1}</Visible>
							</lblExpenseCatgId>
							<lookupExpenseCatgId>
								<ClassName>BravoLookupBox</ClassName>
								<DataMember>ExpenseCatgId</DataMember>
								<LookupKey>ExpenseCatg</LookupKey>
								<Anchor>Top,Left,Right</Anchor>
								<SelectKey>IsGroup=0</SelectKey>
								<Column>1</Column>
								<Visible expr="True">{=UsingExpenseCatgId=1}</Visible>
							</lookupExpenseCatgId>
							<lblProductId>
								<Text>
									<Vietnamese>Sản phẩm</Vietnamese>
									<English>Product</English>
									<Chinese>产品</Chinese>
									<Japanese>製品</Japanese>
									<Korean>제품.</Korean>
								</Text>
								<Row />
								<Column>0</Column>
								<Visible expr="True">{=UsingProductId=1}</Visible>
							</lblProductId>
							<lookupProductId>
								<ClassName>BravoLookupBox</ClassName>
								<DataMember>ProductId</DataMember>
								<LookupKey>Product</LookupKey>
								<Anchor>Top,Left,Right</Anchor>
								<SelectKey>IsGroup=0</SelectKey>
								<Column>1</Column>
								<Visible expr="True">{=UsingProductId=1}</Visible>
							</lookupProductId>
							<lblBizDocId_PO>
								<Text>
									<Vietnamese>Đơn hàng mua</Vietnamese>
									<English>Purchase order</English>
									<Chinese>采购订单</Chinese>
									<Japanese>注文書</Japanese>
									<Korean>구매 주문입니다.</Korean>
								</Text>
								<Row />
								<Column>0</Column>
								<Visible expr="True">{=UsingBizDocId_PO=1}</Visible>
							</lblBizDocId_PO>
							<lookupBizDocId_PO>
								<ClassName>BravoLookupBox</ClassName>
								<DataMember>BizDocId_PO</DataMember>
								<LookupKey>BizDocPO</LookupKey>
								<Anchor>Top,Left,Right</Anchor>
								<FilterKey>CustomerId='{=ISNULL(CustomerId,'')}' AND DocDate&lt;='{=DocDate}' AND PostSL=1 {=IIF(!Empty(Stt),'','AND (Closed=0 AND Finished=0)')}</FilterKey>
								<Column>1</Column>
								<Visible expr="True">{=UsingBizDocId_PO=1}</Visible>
							</lookupBizDocId_PO>
							<lblBizDocId_SO>
								<Text>
									<Vietnamese>Đơn hàng bán</Vietnamese>
									<English>Sales order</English>
									<Chinese>销售订单</Chinese>
									<Japanese>受注</Japanese>
									<Korean>판매 주문입니다.</Korean>
								</Text>
								<Row />
								<Column>0</Column>
								<Visible expr="True">{=UsingBizDocId_SO=1}</Visible>
							</lblBizDocId_SO>
							<lookupBizDocId_SO>
								<ClassName>BravoLookupBox</ClassName>
								<DataMember>BizDocId_SO</DataMember>
								<LookupKey>BizDocSO</LookupKey>
								<Anchor>Top,Left,Right</Anchor>
								<!--16/03/2020 KhanhDq: Bỏ điều kiện lấy theo CurrencyCode
								Bỏ điều kiện theo CustomerId='{=ISNULL(CustomerId,'')}' 
								-->
								<FilterKey>DocDate&lt;='{=DocDate}' AND PostSL=1 {=IIF(!Empty(Stt),'','AND (Closed=0)')}</FilterKey>
								<Visible expr="True">{=UsingBizDocId_SO=1}</Visible>
								<Column>1</Column>
							</lookupBizDocId_SO>
							<lblStatsDocId_WO>
								<Text>
									<Vietnamese>Lệnh sản xuất</Vietnamese>
									<English>Work order</English>
									<Chinese>工作单</Chinese>
									<Japanese>作業命令</Japanese>
									<Korean>작업 순서</Korean>
								</Text>
								<Row />
								<Column>0</Column>
								<Visible expr="True">{=UsingStatsDocId_WO=1}</Visible>
							</lblStatsDocId_WO>
							<lookuStatsDocId_WO>
								<ClassName>BravoLookupBox</ClassName>
								<DataMember>StatsDocId_WO</DataMember>
								<LookupKey>StatsDocWO</LookupKey>
								<Anchor>Top,Left,Right</Anchor>
								<FilterKey>DocDate&lt;='{=DocDate}' AND PostSL=1</FilterKey>
								<Visible expr="True">{=UsingStatsDocId_WO=1}</Visible>
								<Column>1</Column>
							</lookuStatsDocId_WO>
							<lblWarehouseId>
								<Text>
									<Vietnamese>Kho</Vietnamese>
									<English>Warehouse</English>
									<Chinese>仓库</Chinese>
									<Japanese>倉庫</Japanese>
									<Korean>창고</Korean>
								</Text>
								<Row />
								<Column>0</Column>
								<Visible expr="True">{=UsingWarehouseId=1}</Visible>
							</lblWarehouseId>
							<lookupWarehouseId>
								<ClassName>BravoLookupBox</ClassName>
								<DataMember>WarehouseId</DataMember>
								<LookupKey>Warehouse</LookupKey>
								<Anchor>Top,Left,Right</Anchor>
								<SelectKey>IsGroup=0</SelectKey>
								<Column>1</Column>
								<Visible expr="True">{=UsingWarehouseId=1}</Visible>
							</lookupWarehouseId>
							<lblWorkProcessId>
								<Text>
									<Vietnamese>Công đoạn</Vietnamese>
									<English>Work process</English>
									<Chinese>工作流程</Chinese>
									<Japanese>ワーク プロセス</Japanese>
									<Korean>작업 과정</Korean>
								</Text>
								<Row />
								<Column>0</Column>
								<Visible expr="True">{=UsingWorkProcessId=1}</Visible>
							</lblWorkProcessId>
							<lookupWorkProcessId>
								<ClassName>BravoLookupBox</ClassName>
								<DataMember>WorkProcessId</DataMember>
								<Anchor>Top,Left,Right</Anchor>
								<LookupKey>WorkProcess</LookupKey>
								<SelectKey>IsGroup=0</SelectKey>
								<Visible expr="True">{=UsingWorkProcessId=1}</Visible>
								<Column>1</Column>
							</lookupWorkProcessId>
							<lblCostCentreId>
								<Text>
									<Vietnamese>Trung tâm chi phí</Vietnamese>
									<English>Cost centre</English>
									<Chinese>成本的中心</Chinese>
									<Japanese>コスト センター</Japanese>
									<Korean>비용된 센터</Korean>
								</Text>
								<Row />
								<Column>0</Column>
								<Visible expr="True">{=UsingCostCentreId=1}</Visible>
							</lblCostCentreId>
							<lookupCostCentreId>
								<ClassName>BravoLookupBox</ClassName>
								<DataMember>CostCentreId</DataMember>
								<Anchor>Top,Left,Right</Anchor>
								<LookupKey>CostCentre</LookupKey>
								<SelectKey>IsGroup=0</SelectKey>
								<Column>1</Column>
								<Visible expr="True">{=UsingCostCentreId=1}</Visible>
							</lookupCostCentreId>
							<lblJobId>
								<Text>
									<Vietnamese>Vụ việc</Vietnamese>
									<English>Job</English>
									<Japanese>ジョブ</Japanese>
									<Chinese>工作</Chinese>
									<Korean>일</Korean>
								</Text>
								<Column>0</Column>
								<Visible expr="True">{=UsingJobId=1}</Visible>
								<Row />
							</lblJobId>
							<lookupJobId>
								<ClassName>BravoLookupBox</ClassName>
								<DataMember>JobId</DataMember>
								<LookupKey>Job</LookupKey>
								<SelectKey>IsGroup=0</SelectKey>
								<Column>1</Column>
								<Dock>Top</Dock>
								<Visible expr="True">{=UsingJobId=1}</Visible>
							</lookupJobId>
							<!--29/05/2024 thêm khoản mục dòng tiền tài chính để lên DL báo cáo LCTT, TMBCTC-->
							<lblNoteFactorId>
								<Text>
									<Vietnamese>Khoản mục dòng tiền tài chính</Vietnamese>
									<English>Financial cash flow category</English>
									<Japanese>財務キャッシュ フロー カテゴリ</Japanese>
									<Chinese>财务现金流量类别</Chinese>
									<Korean>재무 현금 흐름 범주</Korean>
								</Text>
								<Column>0</Column>
								<Row />
								<Visible expr="True">{=UsingNoteFactorId=1}</Visible>
							</lblNoteFactorId>
							<lookupNoteFactorId>
								<ClassName>BravoLookupBox</ClassName>
								<DataMember>NoteFactorId</DataMember>
								<LookupKey>NoteFactor</LookupKey>
								<SelectKey>IsGroup=0</SelectKey>
								<Column>1</Column>
								<Dock>Top</Dock>
								<Visible expr="True">{=UsingNoteFactorId=1}</Visible>
							</lookupNoteFactorId>
							<lblCustomFieldId1>
								<Text>
									<Vietnamese>Mã mở rộng 1</Vietnamese>
									<English>Custom field 1</English>
									<Chinese>自订栏位1</Chinese>
									<Japanese>カスタムフィールド1</Japanese>
									<Korean>맞춤 입력란 1.</Korean>
								</Text>
								<Column>0</Column>
								<Row />
								<Visible expr="True">{=UsingCustomFieldId1=1}</Visible>
							</lblCustomFieldId1>
							<lookupCustomFieldId1>
								<ClassName>BravoLookupBox</ClassName>
								<DataMember>CustomFieldId1</DataMember>
								<LookupKey>CustomField1</LookupKey>
								<SelectKey>IsGroup=0</SelectKey>
								<Column>1</Column>
								<Dock>Top</Dock>
								<Visible expr="True">{=UsingCustomFieldId1=1}</Visible>
							</lookupCustomFieldId1>
							<lblCustomFieldId2>
								<Text>
									<Vietnamese>Mã mở rộng 2</Vietnamese>
									<English>Custom field 2</English>
									<Chinese>自订栏位2</Chinese>
									<Japanese>カスタムフィールド2</Japanese>
									<Korean>맞춤 입력란 2.</Korean>
								</Text>
								<Column>0</Column>
								<Row />
								<Visible expr="True">{=UsingCustomFieldId2=1}</Visible>
							</lblCustomFieldId2>
							<lookupCustomFieldId2>
								<ClassName>BravoLookupBox</ClassName>
								<DataMember>CustomFieldId2</DataMember>
								<LookupKey>CustomField2</LookupKey>
								<SelectKey>IsGroup=0</SelectKey>
								<Column>1</Column>
								<Dock>Top</Dock>
								<Visible expr="True">{=UsingCustomFieldId2=1}</Visible>
							</lookupCustomFieldId2>
							<lblCustomFieldId3>
								<Text>
									<Vietnamese>Mã mở rộng 3</Vietnamese>
									<English>Custom field 3</English>
									<Chinese>自订栏位3</Chinese>
									<Japanese>カスタムフィールド3</Japanese>
									<Korean>맞춤 입력란 3.</Korean>
								</Text>
								<Column>0</Column>
								<Row />
								<Visible expr="True">{=UsingCustomFieldId3=1}</Visible>
							</lblCustomFieldId3>
							<lookupCustomFieldId3>
								<ClassName>BravoLookupBox</ClassName>
								<DataMember>CustomFieldId3</DataMember>
								<LookupKey>CustomField3</LookupKey>
								<SelectKey>IsGroup=0</SelectKey>
								<Column>1</Column>
								<Dock>Top</Dock>
								<Visible expr="True">{=UsingCustomFieldId3=1}</Visible>
							</lookupCustomFieldId3>
						</Controls>
						<Cols>
							<Column_1>
								<SizeType>Percent</SizeType>
								<Width>100</Width>
							</Column_1>
						</Cols>
					</panelHeaderRight>
				</Controls>
			</panelParent>
			<BravoGridContainer>
				<Row />
				<Column>0</Column>
				<Assembly>Bravo.DataEditor</Assembly>
				<ClassName>BravoGridContainer</ClassName>
				<Items>
					<Item_Purchase>
						<DataMember>Ct0</DataMember>
						<DeleteRowEvent>
							<Execute>
								<Eval_IsAllocateDiscount_SetValue />
								<Eval_TotalOriginalAmount0 />
								<Eval_TotalAmount0 />
								<Eval_TotalOriginalAmount4 />
								<Eval_TotalAmount4 />
								<Eval_TotalOriginalAmount3 />
								<Eval_TotalAmount3 />
								<Eval_ProductDebitAccount_GetValueFromChild />
								<Eval_TotalQuantity />
								<Eval_AtchInvoiceNoValue />
								<Eval_AllocationRate_Exists />
								<Eval_Ct0_OriginalDiscountAmount1_AllocFromParent />
								<Eval_CheckRelationCP_SetValue />
								<Eval_Ct0_CheckWorkProcess_SetValue />
								<Eval_CheckWorkProcess_SetValue />
								<Eval_AttachedTaxInfo />
								<Eval_TotalOriginalAmount3_5Percent />
								<Eval_TotalOriginalAmount3_8Percent />
								<Eval_TotalOriginalAmount3_10Percent />
								<Eval_TotalOriginalAmount3_OtherPercent />
							</Execute>
						</DeleteRowEvent>
						<Rows>
							<Row_0 />
							<Row_1 />
						</Rows>
						<Cols>
							<ItemId>
								<Editor>
									<bindingMembers>
										<Name>Name_Item,ItemName</Name>
										<Unit>Unit_Item</Unit>
										<ExciseTaxId>ExciseTaxId</ExciseTaxId>
										<IsItemWithSerialNo>IsItemWithSerialNo</IsItemWithSerialNo>
										<IsItemWithLocation>IsItemWithLocation_Item</IsItemWithLocation>
										<IsItemWithLot>IsItemWithLot</IsItemWithLot>
										<IsItemWithColor>IsItemWithColor</IsItemWithColor>
										<IsItemWithSize>IsItemWithSize</IsItemWithSize>
										<IsItemWithQuality>IsItemWithQuality</IsItemWithQuality>
										<ShelfLife>ShelfLife</ShelfLife>
										<ItemType>ItemType</ItemType>
										<EnvTaxId>EnvTaxId</EnvTaxId>
										<ItemAccount1>ItemAccount1</ItemAccount1>
										<ItemAccount2>ItemAccount2</ItemAccount2>
										<ItemAccount3>ItemAccount3</ItemAccount3>
										<ItemAccount>ItemAccount</ItemAccount>
										<ItemPurchasePriceTypeId>ItemPurchasePriceTypeId</ItemPurchasePriceTypeId>
									</bindingMembers>
									<ClassName>BravoLookupBox</ClassName>
									<LookupKey>Item</LookupKey>
									<SelectKey>IsGroup=0</SelectKey>
									<Expr>!Exists(Child(phys))</Expr>
								</Editor>
								<!--zDisplayTextFormat>{0}</zDisplayTextFormat-->
								<Style>TextAlign:LeftTop;</Style>
								<Width>100</Width>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Mã hàng</Vietnamese>
											<English>Item</English>
											<Chinese>项目</Chinese>
											<Japanese>アイテム</Japanese>
											<Korean>항목.</Korean>
										</Text>
										<Style>UserData:ItemId;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:ItemId;</Style>
									</Row_1>
								</Rows>
							</ItemId>
							<ItemName>
								<Editor>
									<!-- Cho phép cập nhật tên nếu là dịch vụ -->
									<Expr>ItemType='0'</Expr>
								</Editor>
								<Style>TextAlign:LeftTop;</Style>
								<Width>250</Width>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Tên vật tư, hàng hóa</Vietnamese>
											<English>Item's description</English>
											<Chinese>产品描述</Chinese>
											<Japanese>アイテムの説明</Japanese>
											<Korean>항목의 설명입니다.</Korean>
										</Text>
										<Style>UserData:Description0;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:Description0;</Style>
									</Row_1>
								</Rows>
							</ItemName>
							<Unit>
								<Editor>
									<bindingMembers>
										<ConvertRate>ConvertRate9</ConvertRate>
									</bindingMembers>
									<ClassName>BravoLookupBox</ClassName>
									<LookupKey>ItemUnit</LookupKey>
									<FilterKey>ItemId={=ISNULL(ItemId,0)}</FilterKey>
									<Expr>!Empty(ItemId)</Expr>
								</Editor>
								<Style>TextAlign:LeftTop;</Style>
								<Width>50</Width>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Đơn vị tính</Vietnamese>
											<English>Unit</English>
											<Chinese>单位</Chinese>
											<Japanese>ユニット</Japanese>
											<Korean>단위</Korean>
										</Text>
										<Style>UserData:Unit;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:Unit;</Style>
									</Row_1>
								</Rows>
							</Unit>
							<DebitAccount>
								<Editor>
									<bindingMembers>
										<ProductAccount>ProductDebitAccount</ProductAccount>
									</bindingMembers>
									<ClassName>BravoLookupBox</ClassName>
									<LookupKey>ChartOfAccount</LookupKey>
									<SelectKey>IsGroup=0 AND IsParentAccount=0</SelectKey>
								</Editor>
								<Style>TextAlign:LeftTop;</Style>
								<Width>70</Width>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Tk nợ</Vietnamese>
											<English>Debit acc.</English>
											<Chinese>借记账户</Chinese>
											<Japanese>借方勘定</Japanese>
											<Korean>데빗 계정.</Korean>
										</Text>
										<Style>UserData:DebitAccount;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:DebitAccount;</Style>
									</Row_1>
								</Rows>
							</DebitAccount>
							<CreditAccount>
								<Editor>
									<bindingMembers>
										<ProductAccount>ProductCreditAccount</ProductAccount>
									</bindingMembers>
									<ClassName>BravoLookupBox</ClassName>
									<LookupKey>ChartOfAccount</LookupKey>
									<SelectKey>IsGroup=0 AND IsParentAccount=0</SelectKey>
								</Editor>
								<Style>TextAlign:LeftTop;</Style>
								<Visible>False</Visible>
								<Width>70</Width>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Tk có</Vietnamese>
											<English>Credit acc.</English>
											<Chinese>信用账户</Chinese>
											<Japanese>貸方勘定</Japanese>
											<Korean>신용 계정.</Korean>
										</Text>
										<Style>UserData:CreditAccount;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:CreditAccount;</Style>
									</Row_1>
								</Rows>
							</CreditAccount>
							<WarehouseId>
								<Editor>
									<bindingMembers>
										<AllowIssueWhenNotEnough>AllowIssueWhenNotEnough</AllowIssueWhenNotEnough>
										<IsItemWithLocation>IsItemWithLocation_WH</IsItemWithLocation>
									</bindingMembers>
									<ClassName>BravoLookupBox</ClassName>
									<Expr>ISNULL(ItemType,0)&lt;&gt;0</Expr>
									<LookupKey>Warehouse</LookupKey>
									<SelectKey>IsGroup=0</SelectKey>
								</Editor>
								<!--zDisplayTextFormat>{0}</zDisplayTextFormat-->
								<Style>TextAlign:LeftTop;</Style>
								<Width>70</Width>
								<Visible expr="True">{=UsingWarehouseId=2}</Visible>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Kho</Vietnamese>
											<English>Warehouse</English>
											<Chinese>仓库</Chinese>
											<Japanese>倉庫</Japanese>
											<Korean>창고</Korean>
										</Text>
										<Style>UserData:WarehouseId;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:WarehouseId;</Style>
									</Row_1>
								</Rows>
							</WarehouseId>
							<Quantity9>
								<Editor>
									<ClassName>BravoQuantityInputBox</ClassName>
								</Editor>
								<Style>TextAlign:RightTop;Format:Q;</Style>
								<Width>86</Width>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Số lượng
{=Format(TotalQuantity,'Q')}</Vietnamese>
											<English>Quantity
{=Format(TotalQuantity,'Q')}</English>
											<Chinese>数量
{=Format(TotalQuantity,'Q')}</Chinese>
											<Japanese>数量
{=Format(TotalQuantity,'Q')}</Japanese>
											<Korean>양이냐.
{=Format(TotalQuantity,'Q')}</Korean>
										</Text>
										<Style>UserData:Quantity9;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:Quantity9;</Style>
									</Row_1>
								</Rows>
							</Quantity9>
							<OriginalUnitCost>
								<Editor>
									<ClassName>BravoNumericInputBox</ClassName>
									<Expr>ISNULL(Quantity9,0)&lt;&gt;0</Expr>
								</Editor>
								<Style>TextAlign:RightTop;</Style>
								<Width>80</Width>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Đơn giá {=ISNULL(CurrencyCode,'')}</Vietnamese>
											<English>Unit cost {=ISNULL(CurrencyCode,'')}</English>
											<Chinese>单价{=ISNULL(CurrencyCode,'')}</Chinese>
											<Japanese>単価{=ISNULL(CurrencyCode,'')}</Japanese>
											<Korean>단위 가격={=ISNULL(CurrencyCode,'')}.</Korean>
										</Text>
										<Style>UserData:OriginalUnitPrice;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:OriginalUnitPrice;</Style>
									</Row_1>
								</Rows>
							</OriginalUnitCost>
							<UnitCost>
								<Style>TextAlign:RightTop;</Style>
								<Width>100</Width>
								<!--Visible expr="True">{=CurrencyCode&lt;&gt;CONFIG('M_Ma_Tte0')}</Visible-->
								<Visible>False</Visible>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Đơn giá {=CONFIG('M_Ma_Tte0')}</Vietnamese>
											<English>Unit cost {=CONFIG('M_Ma_Tte0')}</English>
											<Chinese>单价{=CONFIG('M_Ma_Tte0')}</Chinese>
											<Japanese>単価{=CONFIG('M_Ma_Tte0')}</Japanese>
											<Korean>단위 가격={=CONFIG('M_Ma_Tte0')}.</Korean>
										</Text>
										<Style>UserData:UnitPrice;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:UnitPrice;</Style>
									</Row_1>
								</Rows>
							</UnitCost>
							<OriginalAmount9>
								<Editor>
									<ClassName>BravoNumericInputBox</ClassName>
								</Editor>
								<Style>TextAlign:RightTop;</Style>
								<Width>100</Width>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Thành tiền {=ISNULL(CurrencyCode,'')}</Vietnamese>
											<English>Amount {=ISNULL(CurrencyCode,'')}</English>
											<Chinese>量的{=ISNULL(CurrencyCode,'')}</Chinese>
											<Japanese>量{=ISNULL(CurrencyCode,'')}</Japanese>
											<Korean>건설활 동량{=ISNULL(CurrencyCode,'')}.</Korean>
										</Text>
										<Style>UserData:OriginalAmount9;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:OriginalAmount9;</Style>
									</Row_1>
								</Rows>
							</OriginalAmount9>
							<Amount9>
								<Editor>
									<ClassName>BravoNumericInputBox</ClassName>
									<Expr>ISNULL(OriginalAmount9,0)&lt;&gt;0 AND ItemType &lt;&gt; 3</Expr>
								</Editor>
								<Style>Format:"C";TextAlign:RightTop;</Style>
								<Width>100</Width>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Thành tiền {=CONFIG('M_Ma_Tte0')}</Vietnamese>
											<English>Amount {=CONFIG('M_Ma_Tte0')}</English>
											<Chinese>量的{=CONFIG('M_Ma_Tte0')}</Chinese>
											<Japanese>量{=CONFIG('M_Ma_Tte0')}</Japanese>
											<Korean>건설활 동량{=CONFIG('M_Ma_Tte0')}.</Korean>
										</Text>
										<Style>UserData:Amount9;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:Amount9;</Style>
									</Row_1>
								</Rows>
							</Amount9>
							<DiscountRate>
								<Editor>
									<ClassName>BravoNumericInputBox</ClassName>
								</Editor>
								<Style>Format:"P1";TextAlign:RightTop;</Style>
								<Width>50</Width>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Chiết khấu mặt hàng</Vietnamese>
											<English>Item discount</English>
											<Japanese>商品の割引</Japanese>
											<Chinese>商品折扣</Chinese>
											<Korean>상품 할인</Korean>
										</Text>
										<Style>TextAlign:CenterCenter;UserData:Discount;</Style>
									</Row_0>
									<Row_1>
										<Text>
											<Vietnamese>Tỷ lệ</Vietnamese>
											<English>Rate</English>
											<Chinese>率</Chinese>
											<Japanese>率</Japanese>
											<Korean>평가.</Korean>
										</Text>
									</Row_1>
								</Rows>
							</DiscountRate>
							<OriginalDiscountAmount>
								<Editor>
									<ClassName>BravoNumericInputBox</ClassName>
								</Editor>
								<Width>90</Width>
								<Rows>
									<Row_0>
										<Style>UserData:Discount;</Style>
									</Row_0>
									<Row_1>
										<Text>
											<Vietnamese>Tiền {=ISNULL(CurrencyCode,'')}</Vietnamese>
											<English>Amount {=ISNULL(CurrencyCode,'')}</English>
											<Chinese>量的{=ISNULL(CurrencyCode,'')}</Chinese>
											<Japanese>量{=ISNULL(CurrencyCode,'')}</Japanese>
											<Korean>건설활 동량{=ISNULL(CurrencyCode,'')}.</Korean>
										</Text>
									</Row_1>
								</Rows>
							</OriginalDiscountAmount>
							<DiscountAmount>
								<Editor>
									<!-- AND ItemType &lt;&gt; 3-->
									<Expr>ISNULL(OriginalAmount4,0)&lt;&gt;0</Expr>
								</Editor>
								<Style>Format:"C";</Style>
								<Width>90</Width>
								<Rows>
									<Row_0>
										<Style>UserData:Discount;</Style>
									</Row_0>
									<Row_1>
										<Text>
											<Vietnamese>Tiền {=CONFIG('M_Ma_Tte0')}</Vietnamese>
											<English>Amount {=CONFIG('M_Ma_Tte0')}</English>
											<Chinese>量的{=CONFIG('M_Ma_Tte0')}</Chinese>
											<Japanese>量{=CONFIG('M_Ma_Tte0')}</Japanese>
											<Korean>건설활 동량{=CONFIG('M_Ma_Tte0')}.</Korean>
										</Text>
									</Row_1>
								</Rows>
							</DiscountAmount>
							<OriginalDiscountAmount1>
								<Editor>
									<ClassName>BravoNumericInputBox</ClassName>
									<Expr>False</Expr>
								</Editor>
								<Width>120</Width>
								<Rows>
									<Row_0>
										<Style>UserData:OrderDiscount;TextAlign:CenterCenter;</Style>
										<Text>
											<Vietnamese>Chiết khấu toàn đơn</Vietnamese>
											<English>Order discount</English>
											<Japanese>注文の割引</Japanese>
											<Chinese>订单折扣</Chinese>
											<Korean>주문 할인</Korean>
										</Text>
									</Row_0>
									<Row_1>
										<Text>
											<Vietnamese>Tiền {=ISNULL(CurrencyCode,'')}</Vietnamese>
											<English>Amount {=ISNULL(CurrencyCode,'')}</English>
											<Chinese>量的{=ISNULL(CurrencyCode,'')}</Chinese>
											<Japanese>量{=ISNULL(CurrencyCode,'')}</Japanese>
											<Korean>건설활 동량{=ISNULL(CurrencyCode,'')}.</Korean>
										</Text>
									</Row_1>
								</Rows>
							</OriginalDiscountAmount1>
							<DiscountAmount1>
								<Editor>
									<Expr>False</Expr>
								</Editor>
								<Style>Format:"C";</Style>
								<Width>90</Width>
								<Rows>
									<Row_0>
										<Style>UserData:OrderDiscount;</Style>
									</Row_0>
									<Row_1>
										<Text>
											<Vietnamese>Tiền {=CONFIG('M_Ma_Tte0')}</Vietnamese>
											<English>Amount {=CONFIG('M_Ma_Tte0')}</English>
											<Chinese>量的{=CONFIG('M_Ma_Tte0')}</Chinese>
											<Japanese>量{=CONFIG('M_Ma_Tte0')}</Japanese>
											<Korean>건설활 동량{=CONFIG('M_Ma_Tte0')}.</Korean>
										</Text>
									</Row_1>
								</Rows>
							</DiscountAmount1>
							<TaxCode>
								<Editor>
									<bindingMembers>
										<Rate>TaxRate</Rate>
										<Type>TaxType</Type>
										<Account>Account_VAT</Account>
										<PriceIncludeTax>PriceIncludeTax</PriceIncludeTax>
										<ActualRate>TaxRateTmp</ActualRate>
									</bindingMembers>
									<ClassName>BravoLookupBox</ClassName>
									<LookupKey>Tax</LookupKey>
									<FilterKey>IsGroup=0 AND Type=ISNULL({=Parent.TaxType_Ct},Type)</FilterKey>
								</Editor>
								<Style>BackColor:LavenderBlush;TextAlign:LeftTop;</Style>
								<Width>54</Width>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Thuế giá trị gia tăng (VAT)</Vietnamese>
											<English>Value Added Tax (VAT)</English>
											<Chinese>加值税</Chinese>
											<Japanese>付加価値税</Japanese>
											<Korean>부가 가치세.</Korean>
										</Text>
										<Style>TextAlign:CenterCenter;UserData:VAT;</Style>
									</Row_0>
									<Row_1>
										<Text>
											<Vietnamese>Loại</Vietnamese>
											<English>Type</English>
											<Chinese>类型</Chinese>
											<Japanese>タイプ</Japanese>
											<Korean>형식.</Korean>
										</Text>
									</Row_1>
								</Rows>
							</TaxCode>
							<TaxRate>
								<Style>BackColor:LavenderBlush;Format:"P0";TextAlign:RightTop;</Style>
								<Width>40</Width>
								<Rows>
									<Row_0>
										<Style>UserData:VAT;</Style>
									</Row_0>
									<Row_1>
										<Text>
											<Vietnamese>%</Vietnamese>
											<English>%</English>
											<Chinese>%</Chinese>
											<Japanese>%</Japanese>
											<Korean>%</Korean>
										</Text>
										<Style>TextAlign:LeftCenter;</Style>
									</Row_1>
								</Rows>
							</TaxRate>
							<OriginalAmount3>
								<Editor>
									<ClassName>BravoNumericInputBox</ClassName>
									<Expr>!Empty(TaxCode)</Expr>
								</Editor>
								<Style>BackColor:LavenderBlush;TextAlign:RightTop;</Style>
								<Width>100</Width>
								<Rows>
									<Row_0>
										<Style>UserData:VAT;</Style>
									</Row_0>
									<Row_1>
										<Text>
											<Vietnamese>Tiền {=ISNULL(CurrencyCode,'')}</Vietnamese>
											<English>Amount {=ISNULL(CurrencyCode,'')}</English>
											<Chinese>量的{=ISNULL(CurrencyCode,'')}</Chinese>
											<Japanese>量{=ISNULL(CurrencyCode,'')}</Japanese>
											<Korean>건설활 동량{=ISNULL(CurrencyCode,'')}.</Korean>
										</Text>
									</Row_1>
								</Rows>
							</OriginalAmount3>
							<Amount3>
								<Editor>
									<ClassName>BravoNumericInputBox</ClassName>
									<Expr>!Empty(TaxCode)</Expr>
								</Editor>
								<Style>BackColor:LavenderBlush;Format:"C";TextAlign:RightTop;</Style>
								<Width>100</Width>
								<Rows>
									<Row_0>
										<Style>UserData:VAT;</Style>
									</Row_0>
									<Row_1>
										<Text>
											<Vietnamese>Tiền {=CONFIG('M_Ma_Tte0')}</Vietnamese>
											<English>Amount {=CONFIG('M_Ma_Tte0')}</English>
											<Chinese>量的{=CONFIG('M_Ma_Tte0')}</Chinese>
											<Japanese>量{=CONFIG('M_Ma_Tte0')}</Japanese>
											<Korean>건설활 동량{=CONFIG('M_Ma_Tte0')}.</Korean>
										</Text>
									</Row_1>
								</Rows>
							</Amount3>
							<DebitAccount3>
								<Editor>
									<ClassName>BravoLookupBox</ClassName>
									<LookupKey>ChartOfAccount</LookupKey>
									<SelectKey>IsGroup=0 AND IsParentAccount=0</SelectKey>
									<Expr>!Empty(TaxCode)</Expr>
								</Editor>
								<Style>BackColor:LavenderBlush;TextAlign:LeftTop;</Style>
								<Width>70</Width>
								<Rows>
									<Row_0>
										<Style>UserData:VAT;</Style>
									</Row_0>
									<Row_1>
										<Text>
											<Vietnamese>Tk nợ</Vietnamese>
											<English>Debit acc.</English>
											<Chinese>借记账户</Chinese>
											<Japanese>借方勘定</Japanese>
											<Korean>데빗 계정.</Korean>
										</Text>
									</Row_1>
								</Rows>
							</DebitAccount3>
							<CreditAccount3>
								<Editor>
									<ClassName>BravoLookupBox</ClassName>
									<LookupKey>ChartOfAccount</LookupKey>
									<SelectKey>IsGroup=0 AND IsParentAccount=0</SelectKey>
								</Editor>
								<Style>BackColor:LavenderBlush;TextAlign:LeftTop;</Style>
								<Width>70</Width>
								<Rows>
									<Row_0>
										<Style>UserData:VAT;</Style>
									</Row_0>
									<Row_1>
										<Text>
											<Vietnamese>Tk có</Vietnamese>
											<English>Credit acc.</English>
											<Chinese>信用账户</Chinese>
											<Japanese>貸方勘定</Japanese>
											<Korean>신용 계정.</Korean>
										</Text>
									</Row_1>
								</Rows>
							</CreditAccount3>
							<AtchDocOrder>
								<Editor>
									<ClassName>BravoNumericInputBox</ClassName>
									<CustomFormat>#</CustomFormat>
								</Editor>
								<Style>BackColor:LavenderBlush;TextAlign:RightTop;Format:"N0";</Style>
								<Width>50</Width>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Thông tin bổ sung theo HĐ gốc (Nếu khác)</Vietnamese>
											<English>Additional invoice information</English>
											<Japanese>追加の請求書情報</Japanese>
											<Chinese>其他发票信息</Chinese>
											<Korean>추가 송장 정보</Korean>
										</Text>
										<Style>UserData:VATAtch;TextAlign:CenterTop;</Style>
									</Row_0>
									<Row_1>
										<Text>
											<Vietnamese>Stt</Vietnamese>
											<English>VAT order</English>
											<Japanese>VAT注文</Japanese>
											<Chinese>增值税订单</Chinese>
											<Korean>부가가치세</Korean>
										</Text>
										<Style>UserData:AtchDocOrder;</Style>
									</Row_1>
								</Rows>
							</AtchDocOrder>
							<AtchDocItemName>
								<Editor>
									<ClassName>BravoLookupBox</ClassName>
									<LookupKey>Item</LookupKey>
									<SelectKey>IsGroup=0</SelectKey>
									<lookupMode>SuggestDisplayMember</lookupMode>
								</Editor>
								<Style>BackColor:LavenderBlush;TextAlign:LeftTop;</Style>
								<Width>250</Width>
								<Rows>
									<Row_0>
										<Style>UserData:VATAtch;</Style>
									</Row_0>
									<Row_1>
										<Text>
											<Vietnamese>Tên vật tư VAT</Vietnamese>
											<English>VAT item name</English>
											<Japanese>VATアイテム名</Japanese>
											<Chinese>增值税项目名称</Chinese>
											<Korean>VAT 항목 이름</Korean>
										</Text>
										<Style>UserData:AtchDocItemName;</Style>
									</Row_1>
								</Rows>
							</AtchDocItemName>
							<BizDocId_PO>
								<Editor>
									<ClassName>BravoLookupBox</ClassName>
									<LookupKey>BizDocPO</LookupKey>
									<FilterKey>CustomerId='{=ISNULL(CustomerId,'')}' AND DocDate&lt;='{=Parent.DocDate}' AND PostSL=1 {=IIF(!Empty(Parent.Stt),'','AND (Closed=0 AND Finished=0)')}</FilterKey>
								</Editor>
								<Style>TextAlign:LeftTop;</Style>
								<Width>120</Width>
								<Visible expr="True">{=UsingBizDocId_PO=2}</Visible>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Đơn hàng mua</Vietnamese>
											<English>PO</English>
											<Chinese>采购订单</Chinese>
											<Japanese>注文書</Japanese>
											<Korean>구매 주문.</Korean>
										</Text>
										<Style>UserData:PO;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:PO;</Style>
									</Row_1>
								</Rows>
							</BizDocId_PO>
							<BizDocId_SO>
								<Editor>
									<ClassName>BravoLookupBox</ClassName>
									<LookupKey>BizDocSO</LookupKey>
									<!--16/03/2020 KhanhDq: Bỏ điều kiện lấy theo CurrencyCode
									Bỏ điều kiện theo CustomerId={=ISNULL(Parent.CustomerId,0)} 
									-->
									<FilterKey>DocDate&lt;='{=Parent.DocDate}' AND PostSL=1 {=IIF(!Empty(Parent.Stt),'','AND (Closed=0)')}</FilterKey>
								</Editor>
								<Style>TextAlign:LeftTop;</Style>
								<Width>120</Width>
								<Visible expr="True">{=UsingBizDocId_SO=2}</Visible>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Đơn hàng bán</Vietnamese>
											<English>SO</English>
											<Chinese>销售订单</Chinese>
											<Japanese>受注</Japanese>
											<Korean>판매 주문.</Korean>
										</Text>
										<Style>UserData:SO;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:SO;</Style>
									</Row_1>
								</Rows>
							</BizDocId_SO>
							<StatsDocId_WO>
								<Editor>
									<ClassName>BravoLookupBox</ClassName>
									<LookupKey>StatsDocWO</LookupKey>
									<FilterKey>DocDate&lt;='{=Parent.DocDate}' AND PostSL=1</FilterKey>
								</Editor>
								<Name>StatsDocId_WO</Name>
								<Style>TextAlign:LeftTop;</Style>
								<Visible expr="True">{=UsingStatsDocId_WO=2}</Visible>
								<Width>120</Width>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Lệnh sản xuất</Vietnamese>
											<English>Work order</English>
											<Chinese>工作单</Chinese>
											<Japanese>作業命令</Japanese>
											<Korean>작업 순서</Korean>
										</Text>
										<Style>UserData:StatsDocId_WO;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:StatsDocId_WO;</Style>
									</Row_1>
								</Rows>
							</StatsDocId_WO>
							<ProductId>
								<Editor>
									<ClassName>BravoLookupBox</ClassName>
									<DataMember>ProductId</DataMember>
									<LookupKey>Product</LookupKey>
									<SelectKey>IsGroup=0</SelectKey>
								</Editor>
								<Style>TextAlign:LeftTop;</Style>
								<Width>-1</Width>
								<Visible expr="True">{=UsingProductId=2}</Visible>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Sản phẩm</Vietnamese>
											<English>Product</English>
											<Chinese>产品</Chinese>
											<Japanese>製品</Japanese>
											<Korean>제품.</Korean>
										</Text>
										<Style>UserData:ProductId;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:ProductId;</Style>
									</Row_1>
								</Rows>
							</ProductId>
							<EmployeeId>
								<Editor>
									<ClassName>BravoLookupBox</ClassName>
									<LookupKey>Employee</LookupKey>
									<SelectKey>IsGroup=0</SelectKey>
								</Editor>
								<!--zDisplayTextFormat>{0}</zDisplayTextFormat-->
								<Style>TextAlign:LeftTop;</Style>
								<Visible expr="True">{=UsingEmployeeId=2}</Visible>
								<Width>70</Width>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Nhân viên</Vietnamese>
											<English>Employee</English>
											<Chinese>雇员</Chinese>
											<Japanese>従業員</Japanese>
											<Korean>직원.</Korean>
										</Text>
										<Style>UserData:EmployeeId;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:EmployeeId;</Style>
									</Row_1>
								</Rows>
							</EmployeeId>
							<ExpenseCatgId>
								<Editor>
									<ClassName>BravoLookupBox</ClassName>
									<LookupKey>ExpenseCatg</LookupKey>
									<SelectKey>IsGroup=0</SelectKey>
								</Editor>
								<!--zDisplayTextFormat>{0}</zDisplayTextFormat-->
								<Style>TextAlign:LeftTop;</Style>
								<Width>70</Width>
								<Visible expr="True">{=UsingExpenseCatgId=2}</Visible>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Khoản mục</Vietnamese>
											<English>Category</English>
											<Chinese>类别</Chinese>
											<Japanese>カテゴリ</Japanese>
											<Korean>범주</Korean>
										</Text>
										<Style>UserData:ExpenseCatgId;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:ExpenseCatgId;</Style>
									</Row_1>
								</Rows>
							</ExpenseCatgId>
							<DeptId>
								<Editor>
									<ClassName>BravoLookupBox</ClassName>
									<LookupKey>Dept</LookupKey>
									<SelectKey>IsGroup=0</SelectKey>
								</Editor>
								<!--zDisplayTextFormat>{0}</zDisplayTextFormat-->
								<Style>TextAlign:LeftTop;</Style>
								<Width>70</Width>
								<Visible expr="True">{=UsingDeptId=2}</Visible>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Bộ phận</Vietnamese>
											<English>Department</English>
											<Chinese>部门</Chinese>
											<Japanese>部門</Japanese>
											<Korean>부입니다.</Korean>
										</Text>
										<Style>UserData:DeptId;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:DeptId;</Style>
									</Row_1>
								</Rows>
							</DeptId>
							<JobId>
								<Editor>
									<ClassName>BravoLookupBox</ClassName>
									<LookupKey>Job</LookupKey>
									<SelectKey>IsGroup=0</SelectKey>
								</Editor>
								<Style>TextAlign:LeftTop;</Style>
								<Width>70</Width>
								<Visible expr="True">{=UsingJobId=2}</Visible>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Vụ việc</Vietnamese>
											<English>Job</English>
											<Japanese>ジョブ</Japanese>
											<Chinese>工作</Chinese>
											<Korean>일</Korean>
										</Text>
										<Style>UserData:JobId;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:JobId;</Style>
									</Row_1>
								</Rows>
							</JobId>
							<WorkProcessId>
								<Editor>
									<ClassName>BravoLookupBox</ClassName>
									<DataMember>WorkProcessId</DataMember>
									<LookupKey>WorkProcess</LookupKey>
									<SelectKey>IsGroup=0</SelectKey>
								</Editor>
								<Style>TextAlign:LeftTop;</Style>
								<Width>80</Width>
								<Visible expr="True">{=UsingWorkProcessId=2}</Visible>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Công đoạn</Vietnamese>
											<English>Work process</English>
											<Chinese>工作流程</Chinese>
											<Japanese>ワーク プロセス</Japanese>
											<Korean>작업 과정</Korean>
										</Text>
										<Style>UserData:WorkProcessId;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:WorkProcessId;</Style>
									</Row_1>
								</Rows>
							</WorkProcessId>
							<CostCentreId>
								<Editor>
									<ClassName>BravoLookupBox</ClassName>
									<DataMember>CostCentreId</DataMember>
									<LookupKey>CostCentre</LookupKey>
									<SelectKey>IsGroup=0</SelectKey>
								</Editor>
								<Style>TextAlign:LeftTop;</Style>
								<Width>80</Width>
								<Visible expr="True">{=UsingCostCentreId=2}</Visible>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Trung tâm chi phí</Vietnamese>
											<English>Cost centre</English>
											<Chinese>成本的中心</Chinese>
											<Japanese>コスト センター</Japanese>
											<Korean>비용된 센터</Korean>
										</Text>
										<Style>UserData:CostCentreId;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:CostCentreId;</Style>
									</Row_1>
								</Rows>
							</CostCentreId>
							<!--29/05/2024 thêm khoản mục dòng tiền tài chính để lên DL báo cáo LCTT, TMBCTC-->
							<NoteFactorId>
								<Editor>
									<ClassName>BravoLookupBox</ClassName>
									<LookupKey>NoteFactor</LookupKey>
									<SelectKey>IsGroup=0</SelectKey>
								</Editor>
								<Visible expr="True">{=UsingNoteFactorId=2}</Visible>
								<Style>TextAlign:LeftTop;</Style>
								<Width>80</Width>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Khoản mục dòng tiền tài chính</Vietnamese>
											<English>Financial cash flow category</English>
											<Japanese>財務キャッシュ フロー カテゴリ</Japanese>
											<Chinese>财务现金流量类别</Chinese>
											<Korean>재무 현금 흐름 범주</Korean>
										</Text>
										<Style>UserData:NoteFactorId;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:NoteFactorId;</Style>
									</Row_1>
								</Rows>
							</NoteFactorId>
							<CustomFieldId1>
								<Editor>
									<ClassName>BravoLookupBox</ClassName>
									<LookupKey>CustomField1</LookupKey>
									<SelectKey>IsGroup=0</SelectKey>
								</Editor>
								<Style>TextAlign:LeftTop;</Style>
								<Width>70</Width>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Mã mở rộng 1</Vietnamese>
											<English>Custom field 1</English>
											<Chinese>自订栏位1</Chinese>
											<Japanese>カスタムフィールド1</Japanese>
											<Korean>맞춤 입력란 1.</Korean>
										</Text>
										<Style>UserData:CustomFieldId1;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:CustomFieldId1;</Style>
									</Row_1>
								</Rows>
								<Visible expr="True">{=UsingCustomFieldId1=2}</Visible>
							</CustomFieldId1>
							<CustomFieldId2>
								<Editor>
									<ClassName>BravoLookupBox</ClassName>
									<LookupKey>CustomField2</LookupKey>
									<SelectKey>IsGroup=0</SelectKey>
								</Editor>
								<Style>TextAlign:LeftTop;</Style>
								<Width>70</Width>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Mã mở rộng 2</Vietnamese>
											<English>Custom field 2</English>
											<Chinese>自订栏位2</Chinese>
											<Japanese>カスタムフィールド2</Japanese>
											<Korean>맞춤 입력란 2.</Korean>
										</Text>
										<Style>UserData:CustomFieldId2;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:CustomFieldId2;</Style>
									</Row_1>
								</Rows>
								<Visible expr="True">{=UsingCustomFieldId2=2}</Visible>
							</CustomFieldId2>
							<CustomFieldId3>
								<Editor>
									<ClassName>BravoLookupBox</ClassName>
									<LookupKey>CustomField3</LookupKey>
									<SelectKey>IsGroup=0</SelectKey>
								</Editor>
								<Style>TextAlign:LeftTop;</Style>
								<Width>70</Width>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Mã mở rộng 3</Vietnamese>
											<English>Custom field 3</English>
											<Chinese>自订栏位3</Chinese>
											<Japanese>カスタムフィールド3</Japanese>
											<Korean>맞춤 입력란 3.</Korean>
										</Text>
										<Style>UserData:CustomFieldId3;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:CustomFieldId3;</Style>
									</Row_1>
								</Rows>
								<Visible expr="True">{=UsingCustomFieldId3=2}</Visible>
							</CustomFieldId3>
							<Gia_Tb_Tt>
								<Editor>
									<Value>{=CONFIG('M_PP_Gia')=2}</Value>
								</Editor>
								<Style>BackColor:LightYellow;DataType:System.Boolean;ImageAlign:CenterCenter;</Style>
								<Width>64</Width>
								<Visible expr="True">{=CONFIG('M_PP_Gia')=2}</Visible>
								<!-- 05/10/2022 KhuongNV : Chỉnh sửa text cột áp giá, chỉ hiện chứng từ xuất và hiện chứng từ nhập trong TH giá vốn NTXT-->
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Áp giá đích danh</Vietnamese>
											<English>Specific pricing</English>
											<Chinese>具体定价</Chinese>
											<Japanese>特定の価格設定</Japanese>
											<Korean>특정 가격</Korean>
										</Text>
										<Style>UserData:Gia_Tb_Tt;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:Gia_Tb_Tt;</Style>
									</Row_1>
								</Rows>
							</Gia_Tb_Tt>
							<QuantityBeforeTrans>
								<Style>TextAlign:RightTop;Format:"Q";</Style>
								<Width>86</Width>
								<Visible expr="True">{=!Empty(UsingCheckINVWhenNotEnough) AND Config('M_ShowCurrentINV')=1}</Visible>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Tồn tức thời</Vietnamese>
											<English>Current inventory</English>
											<Chinese>当前库存</Chinese>
											<Japanese>現在の在庫</Japanese>
											<Korean>현재 인벤토리</Korean>
										</Text>
										<Style>UserData:CurrentInventory;TextAlign:CenterTop;</Style>
									</Row_0>
									<Row_1>
										<Text>
											<Vietnamese>Tồn</Vietnamese>
											<English>Inventory</English>
											<Chinese>库存</Chinese>
											<Japanese>目録</Japanese>
											<Korean>목록</Korean>
										</Text>
										<Style>UserData:QuantityBeforeTrans;TextAlign:LeftTop;</Style>
									</Row_1>
								</Rows>
							</QuantityBeforeTrans>
							<QuantityAfterTrans>
								<Style>TextAlign:RightTop;Format:"Q";</Style>
								<Width>86</Width>
								<Visible expr="True">{=!Empty(UsingCheckINVWhenNotEnough) AND Config('M_ShowCurrentINV')=1}</Visible>
								<Rows>
									<!-- 08/09/2022 ThắngĐQ: Không hiển thị cột tồn nếu sửa phiếu -->
									<Row_0>
										<Text>
											<Vietnamese>Tồn tức thời</Vietnamese>
											<English>Current inventory</English>
											<Chinese>当前库存</Chinese>
											<Japanese>現在の在庫</Japanese>
											<Korean>현재 인벤토리</Korean>
										</Text>
										<Style>UserData:CurrentInventory;TextAlign:CenterTop;</Style>
									</Row_0>
									<Row_1>
										<Text>
											<Vietnamese>Còn lại</Vietnamese>
											<English>Remaining</English>
											<Chinese>剩余</Chinese>
											<Japanese>残り</Japanese>
											<Korean>남은</Korean>
										</Text>
										<Style>UserData:QuantityAfterTrans;</Style>
									</Row_1>
								</Rows>
							</QuantityAfterTrans>
							<RemainPhysQuantity>
								<Visible>False</Visible>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Số lượng và số lượng chi tiết</Vietnamese>
											<English>Quantity, detail quantity</English>
											<Chinese>数量，详细数量</Chinese>
											<Japanese>数量、ディテール量</Japanese>
											<Korean>양이냐, 치밀한 수량이다.</Korean>
										</Text>
										<Style>UserData:RemainPhysQuantity;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:RemainPhysQuantity;</Style>
									</Row_1>
								</Rows>
							</RemainPhysQuantity>
							<PhysTotalQuantity>
								<Visible>False</Visible>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Số lượng và số lượng chi tiết</Vietnamese>
											<English>Quantity, detail quantity</English>
											<Chinese>数量，详细数量</Chinese>
											<Japanese>数量、ディテール量</Japanese>
											<Korean>양이냐, 치밀한 수량이다.</Korean>
										</Text>
										<Style>UserData:RemainPhysQty;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:RemainPhysQty;</Style>
									</Row_1>
								</Rows>
							</PhysTotalQuantity>
							<_ConvertingFlag>
								<Visible>False</Visible>
							</_ConvertingFlag>
						</Cols>
						<detectFirstColValueToDeleteRow>2</detectFirstColValueToDeleteRow>
						<zOpenRelatedChild>!Empty(_PhysicalInventory) AND !Empty(Quantity9)</zOpenRelatedChild>
						<Text>
							<Vietnamese>Chi tiết</Vietnamese>
							<English>Entries</English>
							<Chinese>项</Chinese>
							<Japanese>エントリー</Japanese>
							<Korean>참가 신청은.</Korean>
						</Text>
					</Item_Purchase>
					<Item_Phys>
						<DataMember>phys</DataMember>
						<DeleteRowEvent>
							<Execute>
								<Eval_PhysTotalQuantity_GetValueFromChild />
								<Eval_RemainPhysQuantity_SetValue />
								<Eval_PhysTotalQuantity9_GetValueFromChild />
								<Eval_RemainPhysQuantity9_SetValue />
							</Execute>
						</DeleteRowEvent>
						<Rows>
							<Row_0 />
						</Rows>
						<Cols>
							<Quantity9>
								<Editor>
									<ClassName>BravoQuantityInputBox</ClassName>
								</Editor>
								<Style>TextAlign:RightTop;</Style>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Số lượng</Vietnamese>
											<English>Quantity</English>
											<Chinese>数量 </Chinese>
											<Japanese>数量 </Japanese>
											<Korean>양이냐.</Korean>
										</Text>
									</Row_0>
								</Rows>
								<Width>80</Width>
							</Quantity9>
							<Unit>
								<Style>TextAlign:LeftTop;</Style>
								<Width>50</Width>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Đơn vị tính</Vietnamese>
											<English>Unit</English>
											<Chinese>单位</Chinese>
											<Japanese>ユニット</Japanese>
											<Korean>단위</Korean>
										</Text>
										<Style>UserData:Unit;</Style>
									</Row_0>
									<Row_1>
										<Style>UserData:Unit;</Style>
									</Row_1>
								</Rows>
							</Unit>
							<ConvertRate9>
								<Style>TextAlign:RightTop;</Style>
								<Width>0</Width>
								<Visible>False</Visible>
							</ConvertRate9>
							<Quantity>
								<Editor>
									<ClassName>BravoQuantityInputBox</ClassName>
									<Expr>False</Expr>
								</Editor>
								<Style>TextAlign:RightTop;</Style>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Số lượng (ĐVT chuẩn)</Vietnamese>
											<English>Quantity (Standard unit)</English>
											<Japanese>量（標準ユニット）</Japanese>
											<Chinese>数量（标准单位）</Chinese>
											<Korean>수량 (표준 단위)</Korean>
										</Text>
									</Row_0>
								</Rows>
								<Width>80</Width>
							</Quantity>
							<ItemSerialNo>
								<Editor>
									<ClassName>BravoTextBox</ClassName>
									<bRestrictedUnicode>True</bRestrictedUnicode>
									<CharacterCasing>Upper</CharacterCasing>
									<Expr>!Empty(Parent.IsItemWithSerialNo)</Expr>
								</Editor>
								<Style>TextAlign:LeftTop;</Style>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Serial#</Vietnamese>
											<English>Serial#</English>
											<Chinese>序列号</Chinese>
											<Japanese>シリアル＃</Japanese>
											<Korean>연쇄 #.</Korean>
										</Text>
									</Row_0>
								</Rows>
							</ItemSerialNo>
							<LocationId>
								<Editor>
									<ClassName>BravoLookupBox</ClassName>
									<bindingMembers>
										<Name>LocationName</Name>
										<WarehouseId>WarehouseId_location</WarehouseId>
									</bindingMembers>
									<LookupKey>Location</LookupKey>
									<FilterKey>(IsGroup=0 AND WarehouseId='{=ISNULL(Parent.WarehouseId,'')}')</FilterKey>
									<Expr>!Empty(Parent.IsItemWithLocation)</Expr>
								</Editor>
								<Style>TextAlign:LeftTop;</Style>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Vị trí</Vietnamese>
											<English>Location</English>
											<Chinese>位置</Chinese>
											<Japanese>場所</Japanese>
											<Korean>위치.</Korean>
										</Text>
										<Style>UserData:LocationId;</Style>
									</Row_0>
								</Rows>
							</LocationId>
							<LocationName>
								<Style>TextAlign:LeftTop;</Style>
								<Width>220</Width>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Tên vị trí</Vietnamese>
											<English>Location Name</English>
											<Chinese>地点名称</Chinese>
											<Japanese>ロケーション名</Japanese>
											<Korean>위치 이름.</Korean>
										</Text>
										<Style>UserData:LocationName;</Style>
									</Row_0>
								</Rows>
							</LocationName>
							<ItemLotCode>
								<Editor>
									<Expr>'C'+CONFIG('M_AllowCreateItemLot')</Expr>
									<Controls>
										<C0>
											<ClassName>BravoLookupBox</ClassName>
											<LookupKey>ItemLotDetail</LookupKey>
											<FilterKey>(IsGroup=0) AND ItemId={=ISNULL(Parent.ItemId,0)} AND IsActive_ItemLot=1</FilterKey>
										</C0>
										<C1>
											<ClassName>BravoLookupBox</ClassName>
											<LookupKey>ItemLotDetail</LookupKey>
											<FilterKey>(IsGroup=0) AND ItemId={=ISNULL(Parent.ItemId,0)} AND IsActive_ItemLot=1</FilterKey>
											<lookupMode>SuggestValueMember</lookupMode>
											<CharacterCasing>Upper</CharacterCasing>
											<!--09/04/2019 ChamVt thêm thẻ không cho nhập unicode-->
											<bRestrictedUnicode>True</bRestrictedUnicode>
											<zRestrictedChars>[ ,;:|={}%]'</zRestrictedChars>
										</C1>
									</Controls>
									<_Expr>!Empty(Parent.IsItemWithLot)</_Expr>
								</Editor>
								<Style>TextAlign:LeftTop;</Style>
								<Width>110</Width>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Lô</Vietnamese>
											<English>Lot</English>
											<Chinese>很多</Chinese>
											<Japanese>たくさん</Japanese>
											<Korean>롯.</Korean>
										</Text>
										<Style>UserData:ItemLotCode;</Style>
									</Row_0>
								</Rows>
							</ItemLotCode>
							<MfgDate>
								<Editor>
									<Expr>!EMPTY(AutoCreateItemLotCode)</Expr>
								</Editor>
								<Style>TextAlign:LeftTop;</Style>
								<Width>120</Width>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Ngày sản xuất</Vietnamese>
											<English>Manufacturing date</English>
											<Chinese>生产日期</Chinese>
											<Japanese>製造日付</Japanese>
											<Korean>제조 날짜.</Korean>
										</Text>
									</Row_0>
								</Rows>
							</MfgDate>
							<ExpiryDate>
								<Editor>
									<Expr>!EMPTY(AutoCreateItemLotCode)</Expr>
								</Editor>
								<Style>TextAlign:LeftTop;</Style>
								<Width>120</Width>
								<!--Visible expr="True">{=!Empty(IsItemWithLot)}</Visible-->
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Ngày hết hạn</Vietnamese>
											<English>Expiration date</English>
											<Chinese>到期日</Chinese>
											<Japanese>有効期限</Japanese>
											<Korean>유효 기간</Korean>
										</Text>
									</Row_0>
								</Rows>
							</ExpiryDate>
							<AutoCreateItemLotCode>
								<Style>DataType:System.Boolean;ImageAlign:CenterCenter;</Style>
								<Width>50</Width>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Tạo lô</Vietnamese>
											<English>Create lot</English>
											<Japanese>ロットを作る</Japanese>
											<Chinese>创造很多</Chinese>
											<Korean>롯트 생성</Korean>
										</Text>
									</Row_0>
								</Rows>
							</AutoCreateItemLotCode>
							<ColorCode>
								<Editor>
									<ClassName>BravoLookupBox</ClassName>
									<LookupKey>Class</LookupKey>
									<FilterKey>ParentCode='COLOR'</FilterKey>
									<Expr>!Empty(Parent.IsItemWithColor)</Expr>
								</Editor>
								<!--Visible expr="True">{=!Empty(IsItemWithColor)}</Visible-->
								<Width>80</Width>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Màu sắc</Vietnamese>
											<English>Color</English>
											<Japanese>カラー</Japanese>
											<Chinese>颜色</Chinese>
											<Korean>색상</Korean>
										</Text>
									</Row_0>
								</Rows>
							</ColorCode>
							<SizeCode>
								<Editor>
									<ClassName>BravoLookupBox</ClassName>
									<LookupKey>Class</LookupKey>
									<FilterKey>ParentCode='ITEMSIZE'</FilterKey>
									<Expr>!Empty(Parent.IsItemWithSize)</Expr>
								</Editor>
								<Width>80</Width>
								<!--Visible expr="True">{=!Empty(IsItemWithSize}</Visible-->
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Cỡ</Vietnamese>
											<English>Size</English>
											<Japanese>サイズ</Japanese>
											<Chinese>尺寸</Chinese>
											<Korean>크기</Korean>
										</Text>
									</Row_0>
								</Rows>
							</SizeCode>
							<ItemQualityCode>
								<Editor>
									<ClassName>BravoLookupBox</ClassName>
									<LookupKey>Class</LookupKey>
									<FilterKey>ParentCode='ITEMQUALITY'</FilterKey>
									<Expr>!Empty(Parent.IsItemWithQuality)</Expr>
								</Editor>
								<!--Visible expr="True">{=!Empty(IsItemWithQuality)}</Visible-->
								<Width>80</Width>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Phẩm cấp</Vietnamese>
											<English>Quality</English>
											<Japanese>品質</Japanese>
											<Chinese>质量</Chinese>
											<Korean>품질</Korean>
										</Text>
									</Row_0>
								</Rows>
							</ItemQualityCode>
						</Cols>
						<Text>
							<Vietnamese>Chi tiết mặt hàng</Vietnamese>
							<English>Item detail</English>
							<Chinese>产品详细信息</Chinese>
							<Japanese>アイテムの詳細</Japanese>
							<Korean>항목 세부 정보</Korean>
						</Text>
						<zDeleteRowExpr>ISNULL(Quantity,0)=0</zDeleteRowExpr>
					</Item_Phys>
					<Item_AtchFile>
						<DataMember>vB20FileStore</DataMember>
						<Cols>
							<FileName>
								<FileHandle>
									<AllowFileType>All</AllowFileType>
									<FileSizeLimit>8388608</FileSizeLimit>
									<DialogFileFilter>DocumentFiles,ImageFiles</DialogFileFilter>
									<FileOverwriteOption>Overwrite</FileOverwriteOption>
									<DisplayFileNameOnly>True</DisplayFileNameOnly>
									<DestinationFolder>CONFIG('M_DefaultSubFolder_Data') + '/' + NEWID()</DestinationFolder>
									<selectedMembers>
										<FileSize>FileSize</FileSize>
										<FileReadTimeUTC>LastUploaded</FileReadTimeUTC>
										<FileNameWithoutExtension>FileNameWithoutExtension</FileNameWithoutExtension>
										<FileExtension>FileExtension</FileExtension>
									</selectedMembers>
								</FileHandle>
								<Width>450</Width>
								<Style>TextAlign:LeftTop;</Style>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Tài liệu/Liên kết</Vietnamese>
											<English>File/URL</English>
											<Japanese>ファイル/パス</Japanese>
											<Chinese>文件/路径</Chinese>
											<Korean>파일/경로</Korean>
										</Text>
									</Row_0>
								</Rows>
							</FileName>
							<Description>
								<Editor>
									<ClassName>BravoTextBox</ClassName>
								</Editor>
								<Width>360</Width>
								<Style>TextAlign:LeftTop;WordWrap:True;</Style>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Mô tả</Vietnamese>
											<English>Description</English>
											<Japanese>説明</Japanese>
											<Chinese>描述</Chinese>
											<Korean>설명</Korean>
										</Text>
									</Row_0>
								</Rows>
							</Description>
							<FileSize>
								<Width>92</Width>
								<Style>TextAlign:RightTop;Format:N0;</Style>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Dung lượng (KB)</Vietnamese>
											<English>File size (KB)</English>
											<Japanese>ファイルサイズ (KB)</Japanese>
											<Chinese>文件大小 (KB)</Chinese>
											<Korean>파일 크기 (KB)</Korean>
										</Text>
									</Row_0>
								</Rows>
							</FileSize>
							<LastUploaded>
								<Editor>
									<ClassName>BravoDateInputBox</ClassName>
									<CurrentTimeZone>False</CurrentTimeZone>
									<Expr>False</Expr>
								</Editor>
								<Width>130</Width>
								<Style>Format:"dd/MM/yyyy HH:mm:ss";</Style>
								<Rows>
									<Row_0>
										<Text>
											<Vietnamese>Sửa đổi gần nhất</Vietnamese>
											<English>Last uploaded</English>
											<Japanese>最終アップロード</Japanese>
											<Chinese>上次上传</Chinese>
											<Korean>마지막 업로드</Korean>
										</Text>
									</Row_0>
								</Rows>
							</LastUploaded>
						</Cols>
						<Text>
							<Vietnamese>Tài liệu đính kèm</Vietnamese>
							<English>File attachment</English>
							<Japanese>添付ファイル</Japanese>
							<Chinese>文件附件</Chinese>
							<Korean>파일 첨부 파일</Korean>
						</Text>
					</Item_AtchFile>
				</Items>
			</BravoGridContainer>
			<panelSummary>
				<Row />
				<AutoSize>True</AutoSize>
				<Column>0</Column>
				<Cols>
					<Column_0>
						<SizeType>Percent</SizeType>
						<Width>100</Width>
					</Column_0>
					<Column_2>
						<SizeType>Absolute</SizeType>
						<Width>200</Width>
					</Column_2>
					<Column_3>
						<SizeType>Absolute</SizeType>
						<Width>300</Width>
					</Column_3>
					<Column_4>
						<SizeType>AutoSize</SizeType>
					</Column_4>
				</Cols>
				<Controls>
					<panelDocument>
						<Row />
						<Column>0</Column>
						<ColumnSpan>4</ColumnSpan>
						<AutoSize>True</AutoSize>
						<Cols>
							<Column_2>
								<SizeType>Percent</SizeType>
								<Width>100</Width>
							</Column_2>
						</Cols>
						<Controls>
							<lblDueDate>
								<Text>
									<Vietnamese>Hạn t.toán</Vietnamese>
									<English>Due date</English>
									<Chinese>到期日</Chinese>
									<Japanese>期日</Japanese>
									<Korean>때문에 날짜.</Korean>
								</Text>
								<Row />
								<Column>0</Column>
							</lblDueDate>
							<txtDueDate>
								<ClassName>BravoNumericInputBox</ClassName>
								<Format>N0</Format>
								<DataMember>DueDate</DataMember>
								<Column>1</Column>
								<VisibleButtons>0</VisibleButtons>
								<Width>45</Width>
							</txtDueDate>
							<panelCostAllocMethod>
								<Column>2</Column>
								<ColumnSpan>2</ColumnSpan>
								<AutoSize>True</AutoSize>
								<Cols>
									<Column_1>
										<SizeType>Absolute</SizeType>
										<Width>62</Width>
									</Column_1>
									<Column_3>
										<SizeType>Absolute</SizeType>
										<Width>120</Width>
									</Column_3>
									<Column_5>
										<SizeType>Percent</SizeType>
										<Width>30</Width>
									</Column_5>
									<Column_7>
										<SizeType>Percent</SizeType>
										<Width>70</Width>
									</Column_7>
								</Cols>
								<Controls>
									<lblDiscountRate>
										<ClassName>BravoLabel</ClassName>
										<Text>
											<Vietnamese>Tỷ lệ chiết khấu</Vietnamese>
											<English>Discount rate</English>
											<Japanese>割引率</Japanese>
											<Chinese>折扣率</Chinese>
											<Korean>할인율</Korean>
										</Text>
										<Column>0</Column>
									</lblDiscountRate>
									<txtDiscountRate>
										<ClassName>BravoNumericInputBox</ClassName>
										<DataMember>DiscountRate</DataMember>
										<VisibleButtons>0</VisibleButtons>
										<Format>P1</Format>
										<Column>1</Column>
										<Dock>Fill</Dock>
									</txtDiscountRate>
									<lblOriginalDiscountAmount>
										<ClassName>BravoLabel</ClassName>
										<Text>
											<Vietnamese>Chiết khấu</Vietnamese>
											<English>Discount</English>
											<Chinese>折扣</Chinese>
											<Japanese>安％</Japanese>
											<Korean>할인%이다.</Korean>
										</Text>
										<Column>2</Column>
									</lblOriginalDiscountAmount>
									<txtOriginalDiscountAmount>
										<ClassName>BravoNumericInputBox</ClassName>
										<DataMember>OriginalDiscountAmount</DataMember>
										<VisibleButtons>0</VisibleButtons>
										<Width>100</Width>
										<Column>3</Column>
										<Dock>Fill</Dock>
									</txtOriginalDiscountAmount>
									<lblAllocatedBy>
										<ClassName>BravoLabel</ClassName>
										<Text>
											<Vietnamese>Phân bổ theo</Vietnamese>
											<English>Allocate according to</English>
											<Japanese>による割り当て</Japanese>
											<Chinese>按照分配</Chinese>
											<Korean>에 따라 할당</Korean>
										</Text>
										<Column>4</Column>
									</lblAllocatedBy>
									<lookupAllocatedBy>
										<ClassName>BravoLookupBox</ClassName>
										<LookupKey>Class</LookupKey>
										<FilterKey>ParentCode = 'AllocMethod'</FilterKey>
										<DataMember>CostAllocMethod</DataMember>
										<Column>5</Column>
										<Dock>Fill</Dock>
									</lookupAllocatedBy>
									<lblAttachedDoc>
										<ClassName>BravoLabel</ClassName>
										<Text>
											<Vietnamese>C.từ gốc kèm theo</Vietnamese>
											<English>Attached ref docs</English>
											<Chinese>附属</Chinese>
											<Japanese>付属の</Japanese>
											<Korean>붙였다</Korean>
										</Text>
										<Anchor>Top,Right</Anchor>
										<Column>6</Column>
									</lblAttachedDoc>
									<txtAttachedDoc>
										<ClassName>BravoTextBox</ClassName>
										<DataMember>AttachedDoc</DataMember>
										<Column>7</Column>
										<Dock>Fill</Dock>
									</txtAttachedDoc>
								</Controls>
							</panelCostAllocMethod>
						</Controls>
					</panelDocument>
					<panelVAT>
						<ClassName>BravoGroupPanel</ClassName>
						<Text>
							<Vietnamese>Thông tin hóa đơn</Vietnamese>
							<English>Invoice information</English>
							<Japanese>請求書情報</Japanese>
							<Chinese>发票信息</Chinese>
							<Korean>송장 정보</Korean>
						</Text>
						<Cols>
							<Column_1>
								<SizeType>Absolute</SizeType>
								<Width>150</Width>
							</Column_1>
							<Column_3>
								<SizeType>Percent</SizeType>
								<Width>100</Width>
							</Column_3>
						</Cols>
						<AutoSize>True</AutoSize>
						<Dock>Fill</Dock>
						<Row />
						<RowSpan>4</RowSpan>
						<Column>0</Column>
						<ColumnSpan>2</ColumnSpan>
						<Controls>
							<lblAtchDocDate>
								<ClassName>BravoLabel</ClassName>
								<Text>
									<Vietnamese>Ngày HĐ</Vietnamese>
									<English>Bill date</English>
									<Chinese>账单日</Chinese>
									<Japanese>ビル日</Japanese>
									<Korean>빌 날짜다.</Korean>
								</Text>
								<Row />
								<Column>0</Column>
							</lblAtchDocDate>
							<AtchDocDate>
								<BackColor>LavenderBlush</BackColor>
								<ClassName>BravoDateInputBox</ClassName>
								<DataMember>AtchDocDate</DataMember>
								<Column>1</Column>
								<Dock>Fill</Dock>
							</AtchDocDate>
							<lblTaxRegName>
								<ClassName>BravoLabel</ClassName>
								<Text>
									<Vietnamese>Tên NCC</Vietnamese>
									<English>Name</English>
									<Chinese>名称</Chinese>
									<Japanese>名前</Japanese>
									<Korean>이름.</Korean>
								</Text>
								<Column>2</Column>
							</lblTaxRegName>
							<TaxRegName>
								<Anchor>13</Anchor>
								<BackColor>LavenderBlush</BackColor>
								<bindingMembers>
									<TaxRegNo>TaxRegNo</TaxRegNo>
								</bindingMembers>
								<ClassName>BravoLookupBox</ClassName>
								<DataMember>TaxRegName</DataMember>
								<LookupKey>Customer</LookupKey>
								<lookupMode>4</lookupMode>
								<SelectKey>IsGroup=0</SelectKey>
								<Column>3</Column>
								<Dock>Fill</Dock>
							</TaxRegName>
							<lblAtchDocNo>
								<ClassName>BravoLabel</ClassName>
								<Text>
									<Vietnamese>Số</Vietnamese>
									<English>Bill No.</English>
									<Chinese>账单号码</Chinese>
									<Japanese>ビル·ナンバー</Japanese>
									<Korean>빌은 수.</Korean>
								</Text>
								<Row />
								<Column>0</Column>
							</lblAtchDocNo>
							<AtchDocNo>
								<BackColor>LavenderBlush</BackColor>
								<ClassName>BravoTextBox</ClassName>
								<bRestrictedUnicode>True</bRestrictedUnicode>
								<CharacterCasing>Upper</CharacterCasing>
								<DataMember>AtchDocNo</DataMember>
								<Column>1</Column>
								<Dock>Fill</Dock>
							</AtchDocNo>
							<lblTaxRegNo>
								<ClassName>BravoLabel</ClassName>
								<Text>
									<Vietnamese>MST</Vietnamese>
									<English>Tax code</English>
									<Chinese>税法</Chinese>
									<Japanese>税法</Japanese>
									<Korean>세금 코드입니다.</Korean>
								</Text>
								<Column>2</Column>
							</lblTaxRegNo>
							<TaxRegNo>
								<ClassName>BravoTextBox</ClassName>
								<DataMember>TaxRegNo</DataMember>
								<Dock>Fill</Dock>
								<Anchor>15</Anchor>
								<BackColor>LavenderBlush</BackColor>
								<Column>3</Column>
							</TaxRegNo>
							<lblAtchDocFormNo>
								<ClassName>BravoLabel</ClassName>
								<Text>
									<Vietnamese>Mẫu số</Vietnamese>
									<English>Form No.</English>
									<Chinese>表格编号</Chinese>
									<Japanese>書式番号</Japanese>
									<Korean>문서 번호</Korean>
								</Text>
								<Row />
								<Column>0</Column>
							</lblAtchDocFormNo>
							<AtchDocFormNo>
								<BackColor>LavenderBlush</BackColor>
								<ClassName>BravoTextBox</ClassName>
								<bRestrictedUnicode>True</bRestrictedUnicode>
								<CharacterCasing>Upper</CharacterCasing>
								<DataMember>AtchDocFormNo</DataMember>
								<Column>1</Column>
								<Dock>Fill</Dock>
							</AtchDocFormNo>
							<lblEInvoiceLink>
								<ClassName>BravoLabel</ClassName>
								<Text>
									<Vietnamese>URL HDDT</Vietnamese>
									<English>EInvoice infor</English>
									<Chinese>电子信息</Chinese>
									<Japanese>電子請求書情報</Japanese>
									<Korean>전자 인보이스 정보</Korean>
								</Text>
								<Column>2</Column>
							</lblEInvoiceLink>
							<EInvoiceLink>
								<Anchor>13</Anchor>
								<BackColor>LavenderBlush</BackColor>
								<ClassName>BravoTextBox</ClassName>
								<DataMember>EInvoiceLink</DataMember>
								<Column>3</Column>
								<Dock>Fill</Dock>
							</EInvoiceLink>
							<lblAtchDocSerialNo>
								<ClassName>BravoLabel</ClassName>
								<Text>
									<Vietnamese>Seri</Vietnamese>
									<English>Serial</English>
									<Chinese>串行</Chinese>
									<Japanese>シリアル</Japanese>
									<Korean>직렬.</Korean>
								</Text>
								<Row />
								<Column>0</Column>
							</lblAtchDocSerialNo>
							<AtchDocSerialNo>
								<BackColor>LavenderBlush</BackColor>
								<ClassName>BravoTextBox</ClassName>
								<bRestrictedUnicode>True</bRestrictedUnicode>
								<CharacterCasing>Upper</CharacterCasing>
								<DataMember>AtchDocSerialNo</DataMember>
								<Column>1</Column>
								<Dock>Fill</Dock>
							</AtchDocSerialNo>
							<lblEInvoiceKey>
								<ClassName>BravoLabel</ClassName>
								<Text>
									<Vietnamese>Mã truy cập</Vietnamese>
									<English>Access key</English>
									<Chinese>键</Chinese>
									<Japanese>キー</Japanese>
									<Korean>키</Korean>
								</Text>
								<Column>2</Column>
							</lblEInvoiceKey>
							<EInvoiceKey>
								<Anchor>15</Anchor>
								<BackColor>LavenderBlush</BackColor>
								<ClassName>BravoTextBox</ClassName>
								<DataMember>EInvoiceKey</DataMember>
								<Column>3</Column>
							</EInvoiceKey>
						</Controls>
					</panelVAT>
					<panelVATPercent>
						<AutoSize>True</AutoSize>
						<Row>1</Row>
						<RowSpan>3</RowSpan>
						<Column>2</Column>
						<ClassName>BravoGroupPanel</ClassName>
						<Text>
							<Vietnamese>Thuế VAT các loại</Vietnamese>
							<English>VAT summary</English>
							<Japanese>バット</Japanese>
							<Chinese>增值税</Chinese>
							<Korean>큰 통</Korean>
						</Text>
						<Cols>
							<Column_1>
								<SizeType>Percent</SizeType>
								<Width>100</Width>
							</Column_1>
						</Cols>
						<Controls>
							<lblTotalOriginalAmount3_5Percent>
								<ClassName>BravoLabel</ClassName>
								<Row />
								<Column>0</Column>
								<Text>
									<Vietnamese>VAT 5%</Vietnamese>
									<English>VAT 5%</English>
									<Chinese>VAT 5%</Chinese>
									<Japanese>VAT 5%</Japanese>
									<Korean>VAT 5%</Korean>
								</Text>
							</lblTotalOriginalAmount3_5Percent>
							<txtTotalOriginalAmount3_5Percent>
								<ClassName>BravoNumericInputBox</ClassName>
								<DataMember>TotalOriginalAmount3_5Percent</DataMember>
								<ReadOnly>True</ReadOnly>
								<TabStop>False</TabStop>
								<Column>1</Column>
							</txtTotalOriginalAmount3_5Percent>
							<lblTotalOriginalAmount3_8Percent>
								<ClassName>BravoLabel</ClassName>
								<Row />
								<Column>0</Column>
								<Text>
									<Vietnamese>VAT 8%</Vietnamese>
									<English>VAT 8%</English>
									<Chinese>VAT 8%</Chinese>
									<Japanese>VAT 8%</Japanese>
									<Korean>VAT 8%</Korean>
								</Text>
							</lblTotalOriginalAmount3_8Percent>
							<txtTotalOriginalAmount3_8Percent>
								<ClassName>BravoNumericInputBox</ClassName>
								<DataMember>TotalOriginalAmount3_8Percent</DataMember>
								<ReadOnly>True</ReadOnly>
								<TabStop>False</TabStop>
								<Column>1</Column>
							</txtTotalOriginalAmount3_8Percent>
							<lblTotalOriginalAmount3_10Percent>
								<ClassName>BravoLabel</ClassName>
								<Row />
								<Column>0</Column>
								<Text>
									<Vietnamese>VAT 10%</Vietnamese>
									<English>VAT 10%</English>
									<Chinese>VAT 10%</Chinese>
									<Japanese>VAT 10%</Japanese>
									<Korean>VAT 10%</Korean>
								</Text>
							</lblTotalOriginalAmount3_10Percent>
							<txtTotalOriginalAmount3_10Percent>
								<ClassName>BravoNumericInputBox</ClassName>
								<DataMember>TotalOriginalAmount3_10Percent</DataMember>
								<ReadOnly>True</ReadOnly>
								<TabStop>False</TabStop>
								<Column>1</Column>
							</txtTotalOriginalAmount3_10Percent>
							<lblTotalOriginalAmount3_OtherPercent>
								<ClassName>BravoLabel</ClassName>
								<Row />
								<Column>0</Column>
								<Text>
									<Vietnamese>VAT khác</Vietnamese>
									<English>Other VAT</English>
									<Chinese>VAT 其他</Chinese>
									<Japanese>VAT 他の</Japanese>
									<Korean>VAT 다른</Korean>
								</Text>
							</lblTotalOriginalAmount3_OtherPercent>
							<txtTotalOriginalAmount3_OtherPercent>
								<ClassName>BravoNumericInputBox</ClassName>
								<DataMember>TotalOriginalAmount3_OtherPercent</DataMember>
								<ReadOnly>True</ReadOnly>
								<TabStop>False</TabStop>
								<Column>1</Column>
							</txtTotalOriginalAmount3_OtherPercent>
						</Controls>
					</panelVATPercent>
					<panelTotalAmount>
						<ClassName>BravoGroupPanel</ClassName>
						<Text>
							<Vietnamese>Tổng tiền thanh toán</Vietnamese>
							<English>Total payment</English>
							<Japanese>お支払い総額</Japanese>
							<Chinese>总付款</Chinese>
							<Korean>총 결제금액</Korean>
						</Text>
						<Row>1</Row>
						<RowSpan>4</RowSpan>
						<Column>3</Column>
						<ColumnSpan>2</ColumnSpan>
						<AutoSize>True</AutoSize>
						<Cols>
							<Column_1>
								<SizeType>Percent</SizeType>
								<Width>50</Width>
							</Column_1>
						</Cols>
						<Controls>
							<lblTotalOriginalAmount0>
								<ClassName>BravoLabel</ClassName>
								<Text>
									<Vietnamese>Tiền hàng</Vietnamese>
									<English>Total amount</English>
									<Chinese>总金额</Chinese>
									<Japanese>合計金額</Japanese>
									<Korean>총 금액입니다.</Korean>
								</Text>
								<Row>0</Row>
								<Column>0</Column>
							</lblTotalOriginalAmount0>
							<TotalOriginalAmount0>
								<Anchor>13</Anchor>
								<ClassName>BravoNumericInputBox</ClassName>
								<DataMember>TotalOriginalAmount0</DataMember>
								<ReadOnly>True</ReadOnly>
								<Column>1</Column>
								<DisabledForeColor>Black</DisabledForeColor>
								<fontStyle>Bold</fontStyle>
								<TabStop>False</TabStop>
							</TotalOriginalAmount0>
							<TotalAmount0>
								<Anchor>13</Anchor>
								<ClassName>BravoNumericInputBox</ClassName>
								<Format>C</Format>
								<DataMember>TotalAmount0</DataMember>
								<ReadOnly>True</ReadOnly>
								<Column>2</Column>
								<DisabledForeColor>Black</DisabledForeColor>
								<fontStyle>Bold</fontStyle>
								<TabStop>False</TabStop>
								<Width>100</Width>
							</TotalAmount0>
							<lblTotalOriginalAmount4>
								<ClassName>BravoLabel</ClassName>
								<Text>
									<Vietnamese>Chiết khấu</Vietnamese>
									<English>Discount</English>
									<Chinese>折扣</Chinese>
									<Japanese>割引</Japanese>
									<Korean>할인.</Korean>
								</Text>
								<Row />
								<Column>0</Column>
							</lblTotalOriginalAmount4>
							<txtTotalOriginalAmount4>
								<Anchor>13</Anchor>
								<ClassName>BravoNumericInputBox</ClassName>
								<DataMember>TotalOriginalAmount4</DataMember>
								<ReadOnly>True</ReadOnly>
								<Column>1</Column>
								<DisabledForeColor>Black</DisabledForeColor>
								<fontStyle>Bold</fontStyle>
								<TabStop>False</TabStop>
							</txtTotalOriginalAmount4>
							<txtTotalAmount4>
								<Anchor>13</Anchor>
								<ClassName>BravoNumericInputBox</ClassName>
								<Format>C</Format>
								<DataMember>TotalAmount4</DataMember>
								<ReadOnly>True</ReadOnly>
								<Column>2</Column>
								<DisabledForeColor>Black</DisabledForeColor>
								<fontStyle>Bold</fontStyle>
								<TabStop>False</TabStop>
								<Width>100</Width>
							</txtTotalAmount4>
							<lblTotalOriginalAmount3>
								<ClassName>BravoLabel</ClassName>
								<Row />
								<Column>0</Column>
								<Text>
									<Vietnamese>Thuế VAT</Vietnamese>
									<English>VAT amount</English>
									<Chinese>增值税金额</Chinese>
									<Japanese>付加価値税の額</Japanese>
									<Korean>부가 가치세 금액입니다.</Korean>
								</Text>
							</lblTotalOriginalAmount3>
							<TotalOriginalAmount3>
								<Anchor>13</Anchor>
								<ClassName>BravoNumericInputBox</ClassName>
								<DataMember>TotalOriginalAmount3</DataMember>
								<VisibleButtons>0</VisibleButtons>
								<Column>1</Column>
								<DisabledForeColor>Black</DisabledForeColor>
								<fontStyle>Bold</fontStyle>
								<ReadOnly>True</ReadOnly>
								<TabStop>False</TabStop>
							</TotalOriginalAmount3>
							<TotalAmount3>
								<Anchor>13</Anchor>
								<ClassName>BravoNumericInputBox</ClassName>
								<Format>C</Format>
								<VisibleButtons>0</VisibleButtons>
								<DataMember>TotalAmount3</DataMember>
								<Width>100</Width>
								<Column>2</Column>
								<DisabledForeColor>Black</DisabledForeColor>
								<fontStyle>Bold</fontStyle>
								<TabStop>False</TabStop>
								<ReadOnly>True</ReadOnly>
							</TotalAmount3>
							<lblTotalOriginalAmount>
								<ClassName>BravoLabel</ClassName>
								<Text>
									<Vietnamese>Tổng cộng</Vietnamese>
									<English>Grand total</English>
									<Chinese>累计</Chinese>
									<Japanese>総計</Japanese>
									<Korean>그랜드.</Korean>
								</Text>
								<Row />
								<Column>0</Column>
							</lblTotalOriginalAmount>
							<TotalOriginalAmount>
								<Anchor>13</Anchor>
								<ClassName>BravoNumericInputBox</ClassName>
								<DataMember>TotalOriginalAmount</DataMember>
								<ReadOnly>True</ReadOnly>
								<Column>1</Column>
								<DisabledForeColor>Black</DisabledForeColor>
								<fontStyle>Bold</fontStyle>
								<TabStop>False</TabStop>
							</TotalOriginalAmount>
							<TotalAmount>
								<Anchor>13</Anchor>
								<ClassName>BravoNumericInputBox</ClassName>
								<Format>C</Format>
								<DataMember>TotalAmount</DataMember>
								<ReadOnly>True</ReadOnly>
								<Width>100</Width>
								<Column>2</Column>
								<DisabledForeColor>Black</DisabledForeColor>
								<fontStyle>Bold</fontStyle>
								<TabStop>False</TabStop>
							</TotalAmount>
						</Controls>
					</panelTotalAmount>
					<UserId>
						<Row>0</Row>
						<bindingMembers>
							<DocStatusDefault>(DocStatusDefault)</DocStatusDefault>
							<DocumentViewStyle>(DocumentViewStyleDefault)</DocumentViewStyle>
						</bindingMembers>
						<ClassName>BravoLookupBox</ClassName>
						<LookupKey>DmCtInfo</LookupKey>
						<DataMember>UserId</DataMember>
						<FilterKey>DocCode='{=DocCode}'</FilterKey>
						<lookupMode>SuggestValueMember</lookupMode>
						<Visible>False</Visible>
						<Column>0</Column>
					</UserId>
				</Controls>
			</panelSummary>
		</Controls>
	</panelEditor>
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
					<English>Print after save</English>
					<Chinese>保存后打印</Chinese>
					<Japanese>保存後に印刷</Japanese>
					<Korean>저장 후 인쇄</Korean>
				</Text>
			</chkAutoPrintVoucher>
			<chkDocumentViewStyle>
				<ClassName>BravoCheckBox</ClassName>
				<DataMember>DocumentViewStyle</DataMember>
				<Visible>True</Visible>
				<Text>
					<Vietnamese>Xem rút gọn</Vietnamese>
					<English>Compact view</English>
					<Chinese>紧凑视图</Chinese>
					<Japanese>コンパクトビュー</Japanese>
					<Korean>컴팩트 보기</Korean>
				</Text>
			</chkDocumentViewStyle>
			<!--29/07/2024 PhanNH thêm nút tích lưu nháp-->
			<chkIsDraftData>
				<ClassName>BravoCheckBox</ClassName>
				<DataMember>IsDraftData</DataMember>
				<Style>ForeColor:Red;Font:,,style=Bold;</Style>
				<Text>
					<Vietnamese>Chưa duyệt</Vietnamese>
					<English>Save as draft</English>
					<Chinese>保存为草稿</Chinese>
					<Japanese>下書き保存</Japanese>
					<Korean>초안으로 저장</Korean>
				</Text>
			</chkIsDraftData>
		</Items>
	</panelCommand>
	<showCommandButtons>Custom</showCommandButtons>
</root>