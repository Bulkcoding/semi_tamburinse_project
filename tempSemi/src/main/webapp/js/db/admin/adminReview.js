$(document).ready(function(){
	
	// 상품카테고리 검색창 비활성화
	$("select[name='item__category']").prop("disabled",true);
	$("input:text[name='seach_text']").val("").prop("disabled",true);
	
	// 검색조건 첫번째 select의 값이 바꼈다
	$("select[name='cond_sel']").bind("change",function(e){
		
		$("select[name='item__category']").prop("disabled",true);	
		$("input#seach_text").val("").prop("disabled",true);
		
		const select_val = $(e.target).val(); // 조건 첫번째 카테고리 번호
		const select_text = $("select[name='cond_sel'] option:selected").text();
		
		// 첫번째 카테고리 선택시 텍스트 값을 hidden input태그에 넣어준다.
		$("input#cond_sel_text").val(select_text);
		
	//	alert("select_text=> " + select_text);
	//	alert("select_val => "+ select_val);
		
		if( select_val == 1 ) {
		// 상품 카테고리를 선택한경우 
			// 상품카테고리 선택시 두번째 select 태그 활성화
			$("select[name='item__category']").prop("disabled",false);	
			// 상품카테고리 선택시 활성화되는 상품카테고리 text 활성화
			$("input#item__category_text").prop("disabled",false);
			
		} 
		else if(select_val == 2 || select_val == 3 || select_val == 4) {
		// 회원명, 회원아이디, 상품명 카테고리 선택
			// 상품카테고리 선택시 활성화되는 상품카테고리 text 비활성화
			$("input#item__category_text").prop("disabled",true);
			// 검색창 활성화
			$("input#seach_text").prop("disabled",false);
			
		}
		else{
		// 전체 카테고리 선택
			// 전체 선택시 두번째 select 태그 비활성화
			$("select[name='item__category']").prop("disabled",true);
			// 전체 선택시 활성화되는 상품카테고리 text 비활성화
			$("input#item__category_text").prop("disabled",true);
			// 전체 선택시 검색창 비활성화
			$("input:text[name='seach_text']").val("").prop("disabled",true);
		}
		
	});// end of $("select[name='cond_sel']").bind("change",function()
	
	
	
	// 검색조건이 카테고리일 경우 2번째 select 태그 변경 이벤트
	$(document).on("change","select#item__category", function(){
		
		const cate_select_text = $("select[name='item__category'] option:selected").text();
		
		$("input#item__category_text").val(cate_select_text);
		
	}); // end of $(document).on("change","select#item__category", function()
	
	

	// 검색 버튼을 클릭했다.
	$("button.search__btn").click(function(){
		
		const frm = document.search__set;
		// get 방식으로
		// 자기 자신의 action으로
		const select_val = frm.cond_sel.value;
	//	alert("select_val =>"+ select_val); 
	//  1 2 3 4 5
		
		// 상품카테고리로 검색
		if(select_val == 1) {
			const snd_sel = frm.item__category.value;
		//	alert("snd_sel => "+snd_sel);
		//  pw fg we se
		
			if(snd_sel == "") {
			// 상품카테고리를 선택하지 않은경우 검색할 수 없다.
				alert("상품카테고리를 선택하지 않으셨습니다.");
				return false;
			}
		}
		else if(select_val == 2 || select_val == 3 || select_val == 4) {
		// 회원명, 회원아이디, 상품명 검색
			const search_text = frm.seach_text.value
			
		//	alert("search_text => " + search_text);
		
			if(search_text.trim() == ""){
				alert("검색어를 정확하게 입력하여 주십시오.");
				return false;
			}
		}
		else if(select_val == 5) {
		// 전체 검색
		}
		else {
		// 아무런 검색 조건이 없음
			alert("아무런 검색조건이 없습니다.");
			return false;
		}
		
		frm.submit();
	}); // end of $("button.class").click(function()
	
	
	
	// 검색창 엔터시 검색버큰 클릭으로 이동
	$("input:text[name='seach_text']").keyup(function(e){
		if(e.keyCode == 13 ) {
		
			$("button.search__btn").trigger("click");
		}
	});// end of $("input:text[name='seach_text']").keyup(function()
	
	
	
	

	
});// end of $(document).ready(function()