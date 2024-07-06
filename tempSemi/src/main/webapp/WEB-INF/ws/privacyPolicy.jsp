<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String ctxPath = request.getContextPath();
%>
<title>TAMBURINS 비공식 온라인 스토어 | 개인정보처리방침</title>

<%-- font CSS--%>
<link rel="stylesheet" href="<%= ctxPath%>/css/font.css" type="text/css">

<%-- 직접 만든 CSS --%>
<link rel="stylesheet" type="text/css" href="<%= ctxPath%>/css/ws/footer/privacyPolicy.css" />


<jsp:include page="../jy/header_revised.jsp" />

<main id="main"><div class="page legals-page">

	<div class="page__inner">
		<section class="legals__section">
			<h1 class="title">개인정보처리방침</h1>
			<p class="p--first">
		㈜아이아이컴바인드(이하 "회사")가 운영하는 탬버린즈 쇼핑몰(이하 "몰")에서 이용하는 회원님(이하 '이용자')의 개인정보를 매우 소중하게 생각하고 있으며, 이용자의 개인정보를 보호하기 위하여 최선의 노력을 다하고 있습니다.
	</p>
	<p>
		회사는 『개인정보보호법』, 『정보통신망이용촉진및정보보호등에관한법률』을 비롯한 모든 개인정보보호 관련 법률규정을 준수하고 있으며, 회사의 개인정보처리방침을 별도로 제정하고 이를 준수함으로써 이용자의 개인정보를 더욱 보호하고 있습니다. 또한 회사는 개인정보처리방침을 항상 회사 홈페이지 첫 화면에 공개함으로써 이용자들이 언제나 쉽게 열람할 수 있도록 조치하고 있습니다.
		회사의 개인정보처리방침은 관련 법률 및 고시의 변경 또는 내부 운영방침의 변경에 따라 변경될 수 있습니다. 회사의 개인정보처리방침이 수정될 경우 변경된 사항은 홈페이지를 통하여 공지합니다.
	</p>
	<p>
		<strong>제 1 조 (개인정보 수집에 대한 동의 및 수집방법)</strong><br><br><br>

		① "몰"이란 회사가 재화 또는 용역(이하 "재화 등")의 판매 등 고객에 대한 서비스를 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말합니다.<br>
		② "회원"이라 함은 회사에게 개인정보를 제공하여 회원등록을 하는 방법으로 회원 가입된 이용자를 의미합니다.<br>
		③ "비회원"이라 함은 회사의 사이트 등에 회원 가입을 하지 않고, 회사가 제공하는 서비스를 이용하는 자를 말합니다.<br>
		④ 이용자는 온라인 또는 오프라인으로, 회사가 회사의 개인정보처리방침에 따라 이용자의 개인정보를 수집함에 대하여 동의여부를 표시하는 방법으로 동의할 수 있습니다. 이용자가 동의 부분에 표시하면 해당 개인정보 수집에 대해 동의한 것으로 봅니다.
	</p>
	<div>
		<strong>제 2 조 (개인정보의 수집항목 및 수집 • 이용 목적)</strong><br><br><br>
		① 회사는 이용자들이 회원 서비스를 이용하기 위해 회원으로 가입하실 때 서비스 제공을 위한 필요한 최소한의 개인정보를 수집하고 있습니다. 다만 이용자들에게 보다 양질의 맞춤서비스를 제공하기 위하여 이용자의 추가적인 개인정보를 선택적으로 입력 받고 있습니다. <br>

		② 회사는 이용자의 명시적인 별도 동의 없이 기본적 인권 침해의 우려가 있는 사상 • 신념, 노동조합 • 정당의 가입탈퇴, 정치적 견해, 건강, 성생활, 과거의 병력, 종교, 출신지, 범죄기록 등 민감한 개인정보는 수집하지 않습니다. <br>

		③ 회사가 회원가입 시 수집하는 개인정보 항목과 그 수집 • 이용의 주된 목적은 아래와 같습니다. <br><br>
		<div class="legals-table">
			<table>
				<colgroup>
					<col width="25%">
					<col width="*%">
					<col width="16%">
				</colgroup>
				<tbody><tr>
					<td>수집 및 이용 목적</td>
					<td>수집하는 개인정보의 항목</td>
					<td>필수/선택</td>
				</tr>
				<tr>
					<td rowspan="4">홈페이지 회원가입</td>
					<td>
						[직접 가입] 이메일, 비밀번호, 이름, 전화번호, 생년월일, 본인확인기관에서 제공하는 본인인증결과값 (CI)
					</td>
					<td>필수</td>
				</tr>
				<tr>
					<td>[직접 가입] 성별</td>
					<td>선택</td>
				</tr>
				<tr>
					<td>[카카오로 가입하기] 카카오 이용자 식별ID, 이름, 전화번호, 이메일, 본인확인기관에서 제공하는 본인인증결과값(CI), 생년월일, 성별</td>
					<td>필수</td>
				</tr>
				<tr>
					<td>[네이버로 가입하기] 네이버 이용자 식별ID, 이름, 전화번호, 이메일, 본인확인기관에서 제공하는 본인인증결과값(CI), 생년월일</td>
					<td>필수</td>
				</tr>

				<tr>
					<td>재화 또는 서비스 제공</td>
					<td>
					주문자 정보(이름, 전화번호, 이메일) <br> 수령자 정보(이름, 전화번호, 배송지 주소), 주문번호
					</td>
					<td>필수</td>
				</tr>

				<tr>
					<td>민원사무처리 (1:1 문의 하기)</td>
					<td>
					전화번호, 이메일, 문의내용							
					</td>
					<td>필수</td>
				</tr>
				<tr>
					<td>대금 결제</td>
					<td>
					신용카드정보, 은행계좌정보, 본인확인기관에서 제공하는 본인인증결과값(CI)						
					</td>
					<td>필수</td>
				</tr>
				<tr>
					<td>서비스 이용 또는 업무처리과정에서 자동으로 생성되어 수집되는 정보</td>
					<td>
					접속 IP 정보, 쿠키(Cookie), 서비스 이용 기록, 접속 로그, 결제기록, 이용정지기록					
					</td>
					<td>필수</td>
				</tr>
				<tr>
					<td>환불처리</td>
					<td>
					주문정보(주문자, 결제 내용), 예금주명, 환불계좌	
					</td>
					<td>필수</td>
				</tr>
				<tr>
					<td>마케팅 및 광고에의 활용</td>
					<td>
					이름, 이메일, 전화번호, 생년월일, 쿠키, 접속 IP 정보, 본인확인기관에서 제공하는 , 주문내역, 본인인증결과값(CI)							</td>
					<td>선택</td>
				</tr>
				<tr>
					<td>재입고 알림 서비스</td>
					<td>
					전화번호							
					</td>
					<td>필수</td>
				</tr>
			</tbody></table>
		</div>


		④ 온라인 서비스 이용이나 사업처리 과정에서 IP주소, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록 등이 자동으로 생성되어 수집될 수 있습니다. <br>

		⑤ 온라인(모바일 포함) 서비스 이용 시 이용자 확인, 서비스 제공 및 부정 이용 방지 등을 위하여 단말기에 관한 정보(단말기 모델, 운영체제 정보, 브라우저 정보 등)가 수집될 수 있으며, 모바일 서비스 경우 PUSH서비스 제공(고객이 동의한 경우에 한함), 어플리케이션 버전 업그레이드 등의 모바일 서비스 특성에 따른 서비스 제공을 위하여 이동통신사 정보가 추가적으로 수집 및 이용될 수 있습니다. <br>

		⑥ 이용자가 회사에서 상품이나 용역 등을 구입하는 경우에는 대금결제 및 상품배송, 환불처리 등을 위하여 다음과 같은 추가정보를 입력하여야 합니다. <br>
		* 결제방법에 따라 <br>
		- 카드결제의 경우: 신용카드 종류, 카드번호, 유효기간 등 결제에 필요한 최소 정보 <br>
		- 계좌이체의 경우: 거래 은행명, 계좌번호, 거래자 성명, 사업자번호 또는 무선전화번호 <br>
		* 상품배송에 필요한 정보로서 상품을 보내는 사람과 받는 사람의 성명, 주소 및 전화번호 등 <br>

		⑦ 회사는 이 웹사이트 또는 오프라인 가입신청서를 통한 회원가입을 위한 개인정보 수집 외에도, 아래와 같은 경우에 개인정보를 수집하고 있으며, 개인정보 수집 시 수집목적을 명시하여 동의를 받고 있습니다. <br>
		* 문의 응대 : 이용자의 문의 기타 요청사항 처리 및 회신을 위한 개인정보 입력 <br>
		* 고객상담시 : 고객상담 및 분쟁조정을 위한 기록보존을 위한 고객카드 작성 <br>
		* 설문조사나 경품 행사시 : 통계분석이나 경품제공 등을 위해 선별적인 개인정보 입력 <br>
		* 모니터요원 프로슈머 선발시 : 모니터활동 및 프로슈머 활동을 위한 지원서 작성 <br>

		⑧ 회사는 이용자 확인, 경품 배송 및 통계분석을 통한 마케팅 자료로서 이용자의 취향에 맞는 최적의 서비스를 제공하기 위한 목적으로 이용자의 개인정보를 수집 · 이용하고 있습니다. 그리고 이용자의 사전 동의나 관련법령의 규정 없이는 어떠한 경우라도 이용자들에게 사전에 밝힌 목적 이외에 다른 목적으로 개인정보를 사용하지 않으며 외부에 공개하지 않습니다. <br>

		⑨ 회사는 서비스 이용을 위한 본인식별을 위해 이용자의 외국인등록번호를 개인정보 주체의 별도 동의를 받아 처리할 수 있습니다. <br>

		⑩ 이용자는 개인정보의 수집 · 이용에 대한 동의를 거부할 수 있습니다. 다만, 필수정보의 수집 · 이용 동의를 거부할 경우 멤버십 서비스 이용이 불가하며, 선택정보의 수집 및 이용에 거부하는 경우, 회원가입은 가능하나 선택정보를 이용한 서비스 이용 및 혜택 제공에 제한을 받을 수 있습니다. <br>

		⑪ 비회원 고객 개인정보 수집사항 <br>
		탬버린즈 쇼핑몰에서는 회원 고객뿐 아니라 비회원 고객 또한 물품 및 서비스 상품의 구매를 하실 수 있습니다. 탬버린즈 쇼핑몰은 비회원 고객이 상품 등을 주문하는 경우 배송 및 대금 결제, 주문내역 조회 및 구매확인 등을 위하여 필요한 개인정보(주문자의 이름, 주소, 연락처, 이메일, 대금 결제 및 환불에 관한 정보 등)만을 비회원님께 요청하고 있습니다. 탬버린즈 쇼핑몰에서 비회원으로 구입을 하신 경우, 비회원 고객께서 입력하신 주문자 정보 및 수령인 정보는 대금결제 및 상품 등의 배송에 관련한 용도 외에는 다른 어떠한 용도로도 사용되지 않습니다. 탬버린즈 쇼핑몰은 비회원의 개인정보를 회원과 동일하게 보호합니다.
	</div>
	<p>
		<strong>제 3 조 (개인정보의 제공)</strong><br><br><br>

		① 회사는 이용자의 동의가 있거나 관련법령의 규정에 의한 경우를 제외하고는 제2조에서 고지한 범위를 넘어 이용자의 개인정보를 이용하거나 제3자에게 제공하지 않습니다. <br>

		② 다만, 다음 각 호의 경우는 이용자의 별도 동의 없이 제공될 수 있습니다. <br>
		* 서비스 제공에 따른 요금정산을 위하여 필요한 경우 <br>
		* 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 알아볼 수 없는 형태로 가공하여 연구단체, 설문조사, 리서치 기관 등에 제공하는 경우 <br>
		* 개인정보보호법, 통신비밀보호법, 국세기본법, 정보통신망 이용촉진 및 정보보호에 관한 법률, 금융실명거래 및 비밀보장에 관한 법률, 신용정보의 이용 및 보호에 관한 법률, 전기통신기본법, 전기통신사업법, 지방세법, 소비자보호법, 형사소송법 등 특별한 규정이 있는 경우 <br>

		③ 이용자는 제3자에 대한 개인정보 제공 동의를 거부할 수 있으며, 동의를 거부할 때에는 제3자 제공에 따른 서비스 이용에 제한을 받을 수 있습니다. <br>

		④ 회사는 개인정보를 국외의 제3자에게 제공할 때에는 이용자에게 내용을 알리고 동의를 받습니다. <br>
	</p>
	<div>
		<strong>제 4 조 (개인정보의 처리위탁)</strong><br><br><br>

		① 회사는 서비스 향상 및 원활한 전산처리 등을 위하여 아래와 같이 개인정보 처리를 위탁하고 있으며, 아래 내용이 변경되는 경우 이용자의 동의를 받습니다.


		<div class="legals-table">
			<table width="100%">
				<colgroup>
					<col width="50%">
					<col width="50%">
				</colgroup>
				<tbody><tr>
					<td>처리 위탁 받는 자(수탁자)</td>
					<td>처리 위탁 업무</td>
				</tr>
				<tr>
					<td>NAVER PAY</td>
					<td>결제</td>
				</tr>
				<tr>
					<td>KCP</td>
					<td>결제 및 현금영수증 발행</td>
				</tr>
				<tr>
					<td>카카오페이</td>
					<td>결제</td>
				</tr>
				<tr>
					<td>CJ대한통운</td>
					<td>배송</td>
				</tr>
				<tr>
					<td>LF Logistics Korea.LTD</td>
					<td>배송</td>
				</tr>
                <tr>
					<td>팝빌</td>
					<td>카카오톡 메시지 발송</td>
				</tr>
                <tr>
					<td>㈜ 아이코드, ㈜다우기술</td>
					<td>문자 메시지 발송</td>
				</tr>
                <tr>
					<td>㈜ 채널코퍼레이션</td>
					<td>고객 통화 및 챗 상담, 챗봇 서비스 제공</td>
				</tr>
                <tr>
					<td>㈜ 신세계아이앤씨</td>
					<td>매장 POS 결제 서비스 제공</td>
				</tr>
			</tbody></table>
		</div>


		② 회사는 개인정보의 처리의 위탁 시 위탁계약 등을 통하여 서비스제공자의 개인정보보호 관련 지시엄수, 개인정보에 관한 비밀유지, 이용자 동의 없는 개인정보의 제3자 제공금지 등 이용자의 개인보호의 보호를 위해 관리 • 감독합니다. <br>

		③ 회사는 이벤트 및 프로모션을 위하여 개인정보 처리 위탁 시 이용자의 별도 동의를 얻어 제공합니다. <br>
	</div>
	<p>
		<strong>제 5 조 (개인정보의 보유 이용 기간, 파기절차 및 파기방법)</strong><br><br><br>

		① 회사는 이용자가 회사에서 제공하는 서비스를 이용하는 동안 이용자들의 개인정보를 보유하며 서비스 제공 등의 목적을 위해 이용합니다. 전산에 등록된 이용자의 개인정보는 개인정보보호 담당자 및 책임자 또는 이들의 승인을 얻은 자가 아니면 문서로 출력할 수 없습니다. <br>

		② 회사는 이용자가 자신의 개인정보를 삭제하거나 회원가입 탈퇴를 요청한 경우 지체 없이 조치를 취하며, 삭제된 정보는 기록을 복구 또는 재생할 수 없는 방법에 의하여 디스크에서 완전히 삭제하며 추후 열람이나 이용이 불가능한 상태로 처리됩니다. <br>

		③ 회사는 개인정보의 수집목적 및 또는 제공받은 목적이 아래와 같이 파기사유가 발생한 때에 회사의 내부 파기절차에 따라 디스크에서 정보를 삭제하고, 출력된 경우에는 분쇄기로 분쇄하는 방법으로 이용자의 개인정보를 지체 없이 파기합니다. <br>
		* 회원가입정보의 경우 : 회원가입을 탈퇴하거나 회원에서 제명된 때 <br>
		* 대금지급정보의 경우 : 대금의 완제일 또는 채권소멸시효기간이 만료된 때 <br>
		* 배송정보의 경우 : 물품 또는 서비스가 인도되거나 제공된 때 <br>
		* 설문조사, 이벤트 등의 목적을 위하여 수집한 경우 : 해당 설문조사, 이벤트가 종료한 때 <br>

		④ 수집목적 또는 제공받은 목적이 달성된 경우에도 전자상거래 등에서의 소비자보호에 관한 법률, 개인정보보호법, 상법, 국세기본법 ,전자금융거래법, 통신비밀보호법 등 법령의 규정에 의하여 보존할 필요성이 있는 경우에는 다음과 같이 일정기간 이용자의 개인정보를 보유할 수 있습니다. <br>
		* 계약 또는 청약철회 등에 관한 기록 : 5년 <br>
		* 대금결제 및 재화 등의 공급에 관한 기록 : 5년 <br>
		* 소비자 불만 또는 분쟁 처리에 관한 기록 : 3년 <br>
		* 세법이 규정하는 모든 거래에 관한 장부 및 증빙서류: 5년 <br>
		* 전자금융 거래에 관한 기록: 5년 <br>
		* 서비스 방문 기록: 3개월
	</p>
	<p>
		<strong>제 6 조 (개인정보 보호업무 및 관련 고충사항 처리 부서)</strong><br><br><br>

		① 회사는 이용자의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 개인정보보호업무 및 관련 고충사항을 처리하는 부서가 지정되어 있습니다. 또한 개인정보 보호 책임자와 개인정보 보호 담당자를 두어 이용자의 개인정보에 관한 문의 및 불만을 신속하게 처리해드리고 있습니다. <br>

		- 고객서비스담당 부서 <br>
		고객센터 전화번호 : 1644-1246 <br>
		이메일 : cs@tamburins.com <br>

		- 개인정보관리책임자<br>
		</p><div class="show-pc mgt0">
			<table class="legal__table legal__table--other4 ">
				<tbody>
					<tr>
						<td>담당자</td>
						<td>CPO</td>
						<td>DPO</td>
					</tr>
					<tr>
						<td>성명</td>
						<td>정태호</td>
						<td>이재영</td>
					</tr>
					<tr>
						<td>직급</td>
						<td>부문장</td>
						<td>팀장</td>
					</tr>
					<tr>
						<td>소속</td>
						<td colspan="2">IT 본부</td>
					</tr>
					<tr>
						<td>주소</td>
						<td colspan="2">서울특별시 마포구 어울마당로 5길 41</td>
					</tr>
					<tr>
						<td>연락처</td>
						<td colspan="2">02-6956-6090</td>
					</tr>
					<tr>
						<td>이메일</td>
						<td colspan="2">privacy@tamburins.com</td>
					</tr>
				</tbody>
			</table>
		</div>

		② 이용자는 자신의 개인정보에 관하여 침해의 발생 또는 그 염려로 인하여 상담이 필요한 때에는 제1항의 회사 개인정보보호 담당부서뿐만 아니라 다음의 기관 등에 문의할 수 있습니다. <br>
		- 개인정보침해신고센터 전화 : (국번없이)118 <br>
		URL : <a href="http://privacy.kisa.or.kr" class="link_a" target="_blank">http://privacy.kisa.or.kr</a> <br>
		- 개인정보보호 포털 전화 : (국번없이)118 <br>
		URL : <a href="https://www.privacy.go.kr/" class="link_a" target="_blank">https://www.privacy.go.kr/</a> <br>
		- 경찰청 사이버수사국 전화 : (국번없이)182 <br>
		URL : <a href="http://cyberbureau.police.go.kr" class="link_a" target="_blank">http://cyberbureau.police.go.kr</a> <br>

	<p></p>
	<p>
		<strong>제 7 조 (개인정보 자동수집 장치에 의한 개인정보 수집)</strong><br><br><br>

		① 회사는 이용자에 대한 정보를 저장하고 수시로 찾아내는 '쿠키(cookie, 인터넷 접속정보파일 등 개인정보 자동수집 장치)'를 사용할 수 있습니다. 쿠키란 회사의 웹사이트를 운영하는데 이용되는 서버가 이용자의 브라우저(넷스케이프, 인터넷 익스플로러 등)에 보내는 소량의 정보로서 이용자의 컴퓨터의 하드디스크에 저장되기도 합니다. 이용자가 웹사이트에 접속을 하면 회사의 컴퓨터는 이용자의 브라우저에 있는 쿠키의 내용을 읽고, 이용자의 추가정보를 귀하의 컴퓨터에서 찾아 접속에 따른 성명 등의 추가 입력 없이 서비스를 제공할 수 있습니다. 쿠키는 이용자의 컴퓨터는 식별하지만 귀하를 개인적으로 식별하지는 않습니다. <br>

		② 회사는 회원과 비회원의 접속 빈도, 방문시간 등의 분석, 이용자의 방문횟수 파악 등 사이트 운영에 필요한 서비스 지원 및 개편을 위해 쿠키를 사용합니다. ③ 회사는 쿠키를 사용하여 회사가 진행하는 각종 이벤트에서 이용자의 참여 정도 및 방문회수를 파악하여 차별적인 응모기회를 부여하고 이용자의 관심분야에 따라 차별화된 정보를 제공하기 위한 자료로 이용됩니다.  <br>

		③ 이용자는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서 이용자는 웹 브라우저에서 옵션을 설정함으로써 쿠키의 전부 허용, 일부 허용, 전부 거부 등의 선택이 가능합니다.  <br>
		1. 쿠키설치 허용여부를 지정하는 방법 (Internet Explorer 6.0을 사용하고 있는 경우)인터넷 화면 작업표시줄의 [도구]를 클릭한 후 [인터넷 옵션] 선택하고, [개인정보 탭]을 선택한 후, [개인정보보호 수준]에서 쿠키허용 여부를 설정합니다.  <br>
		2. 받은 쿠키를 보는 방법 (Internet Explorer 6.0을 사용하고 있는 경우)인터넷 화면 작업표시줄의 [도구]를 클릭한 후 [인터넷 옵션]을 선택하고, 일반 탭(기본 탭)에서 임시 인터넷 파일의 [설정]을 선택한 후, [파일보기]를 선택합니다.
	</p>
	<p>
		<strong>제 8 조 (개인정보의 열람 및 정정)</strong><br><br><br>

		① 이용자는 언제든지 회사의 웹사이트에 로그인한 후 [회원정보수정]을 클릭하여 직접 열람 또는 정정하거나, 이용자가 가맹점 등 개인정보 처리위탁을 받은 자에게 요청하거나, 회사의 개인정보보호부서로 전화, 서면, 전자우편(e-mail)로 연락하여, 열람, 정정, 삭제, 처리정지를 요구할 수 있으며, 회사는 이용자의 요구에 대하여 지체 없이 관련 조치를 취하겠습니다. <br>

		② 이용자가 개인정보의 오류에 대한 정정을 요청한 경우 회사는 정정을 완료하기 전까지 해당 개인정보를 이용 또는 제공 등 처리하지 않습니다. 또한 잘못된 개인정보를 이미 처리한 경우에는 정정 처리결과가 지체 없이 반영되도록 조치하겠습니다. <br>

		③ 다음과 같은 경우에는 개인정보의 열람 및 정정을 제한할 수 있습니다. <br>
		- 제3자의 권익을 현저하게 해할 우려가 있는 경우 <br>
		- 해당 서비스제공자의 업무에 현저한 지장을 미칠 우려가 있는 경우 <br>
		- 법령을 위반하는 경우 등
	</p>
	<p>
		<strong>제 9 조 (개인정보 수집 이용 제공에 대한 동의 철회)</strong><br><br><br>

		① 이용자는 개인정보의 수집, 이용 및 제공에 대해 동의한 내용을 언제든지 철회할 수 있습니다. 동의철회(회원탈퇴)는 회사 웹사이트에 로그인한 후 직접 동의철회(회원탈퇴)를 하거나, 이용자가 가맹점 등 개인정보 처리위탁을 받은 자에게 요청하거나, 회사의 개인정보보호부서로 서면, 전화 또는 전자우편(E-mail) 등으로 연락하는 등의 방법으로 할 수 있습니다. 회사는 이용자의 요청에 대하여 지체 없이 이용자의 회원탈퇴처리 및 개인정보의 파기 등 필요한 조치를 하겠습니다. <br>

		② 회사는 개인정보의 수집에 대한 동의철회(회원탈퇴)를 개인정보의 수집 방법보다 쉽게 할 수 있도록 필요한 조치를 취하도록 노력합니다.
	</p>
	<p>
		<strong>제 10 조 (개인정보보호를 위한 관리적•기술적•물리적 대책)</strong><br><br><br>

		① 회사는 개인정보의 안전한 처리를 위한 내부관리계획을 수립하고 시행하며, 교육을 실시합니다. ② 회사는 이용자의 개인정보를 처리함에 있어 개인정보가 분실, 도난, 유출, 변조 또는 훼손되지 않도록 안전성 확보를 위하여 기술적 대책을 강구하고 있습니다. <br>

		③ 이용자의 개인정보는 외부 망에서 접근 및 침입이 불가능한 내부 망을 활용하여 관리되고 있으며, 파일 및 전송데이터를 암호화하거나 파일 잠금기능(lock)을 사용하여 중요한 데이터는 별도의 보안기능을 통해 철저하게 보호되고 있습니다. <br>

		④ 회사는 해킹 등 외부 침입에 대비하여 방화벽 및 각 서버마다 침입탐지시스템을 이용하여 사내 네트워크 보안에 만전을 기하고 있으며, 접근제어 시스템을 설치하여 보안을 강화하고 있습니다. <br>

		⑤ 개인정보처리 시스템 및 개인정보 처리자가 개인정보 처리에 이용하는 정보기기에 컴퓨터 바이러스, 스파이웨어 등 악성 프로그램의 침투 여부를 항시 점검, 처리할 수 있도록 백신프로그램을 설치하여 개인정보가 침해되는 것을 방지하고 있습니다. <br>

		⑥ 회사는 이용자의 개인정보에 대한 접근권한을 최소한의 인원으로 제한하고 개인정보의 안전성을 확보하기 위하여 개인정보에 대한 접근 및 관리에 필요한 내부절차를 마련하고 출입통제∙잠금장치를 하고 소속 직원으로 하여금 이를 숙지하고 준수하도록 하고 있습니다.  <br>
		
		⑦ 개인정보 관련 처리자의 업무 인수인계는 보안이 유지된 상태에서 철저하게 이뤄지고 있으며 입사 및 퇴사 후 개인정보 사고에 대한 책임을 명확화하고 있습니다. <br>

		⑧ 이용자는 회사에 제공한 개인정보에 대한 스스로의 확인 및 관리를 통하여 정확한 정보를 유지하도록 하며, 인터넷 사이트의 이용과정에서 타인의 개인정보를 권한 없이 이용하거나 타인의 권리를 침해하는 경우에는 회사의 제재뿐만 아니라 민∙형사상 책임을 부담할 수 있습니다. <br>

		⑨ 회사는 이용자 본인의 부주의나 인터넷상의 문제로 아이디(ID), 비밀번호(P/W) 등 개인정보가 유출되어 발생한 문제에 대해 회사는 일체 책임을 지지 않습니다. 따라서 이용자 개개인이 본인의 개인정보를 보호하기 위해서 자신의 아이디(ID) 와 비밀번호(P/W)를 적절하게 관리하고 여기에 대한 책임을 져야 합니다. 다만, 회사의 내부 관리자의 실수 또는 기술관리의 사고로 인해 이용자의 개인정보의 상실, 유출, 변조, 훼손이 생긴 경우 회사는 즉각 이용자에게 사실을 알리고 적절한 대책과 보상을 강구할 것입니다.
	</p>
	<p>
		<strong>제 11 조 (이용자 및 법정대리인의 권리와 그 행사방법)</strong><br><br><br>

		① 이용자 및 법정대리인은 회사에 대하여 제공한 본인 또는 법정대리인으로서 개인정보를 조회, 수정, 변경 및 회원의 탈퇴 등과 관련한 권리를 행사할 수 있습니다. <br>

		② 회사는 아동의 개인정보보호를 특별히 보호하기 위하여 만 14세 미만의 아동에 대한 개인정보는 법정대리인(부모 등)의 동의를 받은 경우에 한하여 수집합니다. <br>

		③ 이용자 및 법정대리인은 개인정보와 관련하여 인터넷, 전화, 서면 등을 이용하여 회사에 연락을 하여 권리를 행사할 수 있으며, 회사는 지체 없이 필요한 조치를 합니다. <br>
	</p>
	<p>
		<strong>제 12 조 (보호정책 변경시 공지의무)</strong><br><br><br>

		개인정보처리방침은 법령∙정책 및 회사 내부 운영방침 또는 보안기술의 변경에 따라 내용이 변경될 수 있으며, 이 때에는 변경되는 개인정보처리방침을 시행하기 최소 7일전(이수집하는 개인정보의 항목, 이용목적의 변경 등과 같이 이용자 권리의 중대한 변경이 발생할 때에는 30일 전)부터 회사 사이트 첫 페이지에 변경 이유 및 내용 등을 공지하도록 하겠습니다.
	</p>
	<p>
		공고일자: 2023. 1. 23. <br>
		시행일자: 2023. 1. 30.
	</p>		</section>
		

<div class="legals-list">
    <ul class="">
        
                        <li>
                            <a href="/legals/privacy-policy.php?date=2022.12.02" class="underline underline-offset">2022.12.02 개인정보처리방침 보기</a>
                        </li>
                    
                        <li>
                            <a href="/legals/privacy-policy.php?date=2020.10.12" class="underline underline-offset">2020.10.12 개인정보처리방침 보기</a>
                        </li>
                    
                        <li>
                            <a href="/legals/privacy-policy.php?date=2020.01.06" class="underline underline-offset">2020.01.06 개인정보처리방침 보기</a>
                        </li>
                        </ul>
</div>			</div>
</div>


</main>

<jsp:include page="../jh/footer.jsp" />
