	
$(document).ready(function() {

	$('[data-tooltip="tooltip"]').tooltip();

	$('#order_management_customer_status').on('change', function() {
	  	
	  	if(this.value == "approved"){
	  		$('#order_management_pending_table_wrapper').hide();
	  		$('#order_management_approved_table_wrapper').show();
	  	}
	  	else{
	  		$('#order_management_pending_table_wrapper').show();
	  		$('#order_management_approved_table_wrapper').hide();
	  	}


	});

	$('#order_management_pending_table').DataTable()

	var order_management_pending_data = [
		{
			'orderId': 1234,
			'orderDate': '2019-02-01',
			'shippingCost': '&#8377; 50000',
			'orderValue': '&#8377; 50000',
			'totalCost':  '&#8377; 50000'
		},
		{
			'orderId': 1234,
			'orderDate': '2019-02-01',
			'shippingCost': '&#8377; 50000',
			'orderValue': '&#8377; 50000',
			'totalCost':  '&#8377; 50000'
		},
		{
			'orderId': 1234,
			'orderDate': '2019-02-01',
			'shippingCost': '&#8377; 50000',
			'orderValue': '&#8377; 50000',
			'totalCost':  '&#8377; 50000'
		},
		{
			'orderId': 1234,
			'orderDate': '2019-02-01',
			'shippingCost': '&#8377; 50000',
			'orderValue': '&#8377; 50000',
			'totalCost':  '&#8377; 50000'
		}
	];

    var order_management_pending = $('#order_management_pending_table').DataTable();
    
    

    $.each(order_management_pending_data, function(index, row) {

	    order_management_pending.row.add( [
	        row.orderId,
	        row.orderDate,
	        row.shippingCost,
	        row.orderValue,
	        row.totalCost,
	        function ( data, type, full, meta ) {
		      return '<button id = "' + row.orderId + 'approve" type = "button" ><i class = "fa fa-thumbs-up"></button>';
		    }
	        
	    ] ).draw( false );

	});



    $('#order_management_approved_table').DataTable()

	var order_management_approved_data = [
		{
			'orderId': 1234,
			'orderDate': '2019-02-01',
			'shippingCost': '&#8377; 50000',
			'orderValue': '&#8377; 50000',
			'totalCost':  '&#8377; 50000',
			'status': 'completed'
		},
		{
			'orderId': 1234,
			'orderDate': '2019-02-01',
			'shippingCost': '&#8377; 50000',
			'orderValue': '&#8377; 50000',
			'totalCost':  '&#8377; 50000',
			'status': 'completed'
		},
		{
			'orderId': 1234,
			'orderDate': '2019-02-01',
			'shippingCost': '&#8377; 50000',
			'orderValue': '&#8377; 50000',
			'totalCost':  '&#8377; 50000',
			'status': 'completed'
		},
		{
			'orderId': 1234,
			'orderDate': '2019-02-01',
			'shippingCost': '&#8377; 50000',
			'orderValue': '&#8377; 50000',
			'totalCost':  '&#8377; 50000',
			'status': 'completed'
		}
	];

    var order_management_approved = $('#order_management_approved_table').DataTable();
    
    

    $.each(order_management_approved_data, function(index, row) {

	    order_management_approved.row.add( [
	        row.orderId,
	        row.orderDate,
	        row.shippingCost,
	        row.orderValue,
	        row.totalCost,
	        row.status,
	        function ( data, type, full, meta ) {
		      return '<button id = "' + row.orderId + 'invoice" type = "button" ><i class = "fa fa-file"></button>';
		    }
	        
	    ] ).draw( false );

	});

	$('#order_management_pending_table_wrapper').hide();
});