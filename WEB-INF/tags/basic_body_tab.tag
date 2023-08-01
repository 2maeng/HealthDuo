      <style>
      .tab {
			list-style: none;
			margin: 0px;
			padding: 0px;
			overflow: hidden;
		}

		.tab li {
			float: left;
		}
		
		.tab li a {
			display: inline;
			color: black;
			text-align: center;
			text-decoration: none;
			padding: 10px;
		}
		
		.tabcont {
			display: none;
			background-color:lightgray;
			padding: 6px 12px;
			color:black;
		}
		ul.tab li.on{
			background-color: lightgray;
		}
		.tabcont.on {
			display: block;
		}
		
		.copyright_section {
			position : fixed;
			bottom : 0;
			width : 100%;
		
		}
		
		</style>
      
       <script src="https://code.jquery.com/jquery-3.7.0.min.js">
      integrity = "sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
      crossorigin = "anonymous" >
   </script>
      
      <script src="../js/jquery.js"></script>
	<script>
		$(function() {
			$('ul.tab li').click(function() {
				var activeTab = $(this).attr('data-tab');
				$('ul.tab li').removeClass('on');
				$('.tabcont').removeClass('on');
				$(this).addClass('on');
				$('#' + activeTab).addClass('on');
				window.location.href = "boardListPage.do?tab="+activeTab+"&page=1";
			})
		});
	</script>