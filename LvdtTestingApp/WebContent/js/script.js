$(function(){
	setInterval(oneSecondFunction, 200);
	setInterval(getReadings, 200);
	});
var deflaction;
var default_reading;
var probe;
function getReadings(){
	$.ajax({url: "probreadingMeasurement.zzz", 
    	success: function(result){ 
    		probe=result.probe;
    		calculate(result.reading);  
    		/*console.log(result.probe-1);*/
    }
    });
};

function calculate(current_reading){
	deflaction=(parseInt(current_reading)-parseInt(default_reading))*parseFloat(map[probe-6]);
	console.log((deflaction / 2) * 100);
	$(".battery-level").css("height",(deflaction / 2) * 100+"%");
	/*console.log(deflaction);*/
	
}
/* ============================================== calling light section ============================================================ */
	function oneSecondFunction() {
		
		var url="measuredReadings.zzz";
		
		var xmlhttp;
		if(window.XMLHttpRequest)
			{
				xmlhttp=new XMLHttpRequest();
			}
		else
			{
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange=function()
			{
				if(xmlhttp.readyState==4 && xmlhttp.status==200)
					{				
					document.getElementById("readings").innerHTML=xmlhttp.responseText;
					}
			};
			xmlhttp.open("post", url, true);
			xmlhttp.send();
	}
	
	function measurementGraph(value) {
		$.ajax({url: "measurementGraph.zzz?id="+value, 
			dataType: "json",
	    	success: function(json){	    	
	    		setdata(json.setting);
	    		/*console.log(json.setting);*/
	    }
	    });				
	}
	
	function setdata(json){
		$('#ulm').html('usl:'+json.usl);
		$('#llm').html('lsl:'+json.lsl);
		$('.model-name').val(json.model_name);
		default_reading=json.deviceReading;
		offset=json.offset;
	}
	
	