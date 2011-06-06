
		//Hides all other views and displays only the view of video
		function hide1(){
		  var element = document.getElementById("content");
		  element.style.display = "none";
  		  var item=document.getElementById('new').style.display = 'block';
			var item2=document.getElementById('new1').style.display = 'block';
			var item2=document.getElementById('youtube').style.display = 'none';
						document.getElementById('ppt').style.display = 'none';
 		};

		function hide2(){
		  var item1=document.getElementById('leftmenu').style.display = 'block';
 		};
 		//Hides all other views and displays only the view of youtube option
 		function hide3()
 		{
 		document.getElementById("content").style.display = "none";
 		document.getElementById("new1").style.display = "none";
 		 var item=document.getElementById('new').style.display = 'none';
 		 		document.getElementById("youtube").style.display = 'block';
 		 					document.getElementById('ppt').style.display = 'none';
 		};
 		//Extracts the 9 letter keyword from youtube url
 		function Url()
 		{
			var xyz=document.getElementById("url1").value;
			var uvw="";
			for(var i=0;i<11;i++)
			{
				uvw=uvw + xyz[31+i];

			}
 			var url="http://www.youtube.com/embed/"+ uvw ;
 			document.getElementById("src1").src=url;
 			document.getElementById("url1").value=url;
 		};
 		//Hides all other views and displays only the view of home
 		function hide0(){
		  var element = document.getElementById("content");
		  element.style.display = "block";
  		  var item=document.getElementById('new').style.display = 'none';
			var item2=document.getElementById('new1').style.display = 'none';
			var item2=document.getElementById('youtube').style.display = 'none';
			document.getElementById('ppt').style.display = 'none';
 		};
 		function hide4(){
		  var element = document.getElementById("content");
		  element.style.display = "none";
  		  document.getElementById('new').style.display = 'none';
			document.getElementById('new1').style.display = 'none';
			document.getElementById('youtube').style.display = 'none';
			document.getElementById('ppt').style.display = 'block';

 		};


 		function imageS(j)
 		{
 			var x="";

 				x=x+"/images/pausch/img"+(j-1)+".gif";

 			document.getElementById('imageSource').src=x;


 		};

