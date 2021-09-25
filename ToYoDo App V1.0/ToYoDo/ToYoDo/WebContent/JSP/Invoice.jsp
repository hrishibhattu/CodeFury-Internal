<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="/ToYoDo/CSS/InvoiceStyle.css" rel="stylesheet" type="text/css"
	media="all" />

<title>Invoice</title>
</head>
<body>

	<div class="invoice-box">
		<div align="center" class="top_rw" id="inv">
			<h2>INVOICE</h2>
		</div>
		<table cellpadding=0 cellspacing=0>

			<tr class="top_rw">
				<td colspan="2">Invoice Date : 25/09/2021</td>
				<td style="width: 18%;">Invoice Id : 6580083283</td>
			</tr>
			<tr class="top">
				<td colspan="3">
					<table>
						<tr>
							<td><h3>Seller Details</h3> <b> Sold By: Nova
									Enterprises </b> <br> Delhivery Pvt. Ltd. Plot No. A5 Indian
								Corporation <br> Warehouse Park Village Dive-anjur,
								Bhiwandi, Off <br> Nh-3, Near Mankoli Naka, District Thane,
								Pin Code : 421302 <br> Mumbai, Maharashtra - 421302 <br>
								PAN: AALFN0535C <br> GSTIN: 27AALFN0535C1ZK <br></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr class="information">
			<tr class="information">
				<td colspan="3">
					<table>
						<tr>
							<td><h3>Customer Details</h3></td>
							<td colspan="2"><b> Shipping Address: w3learnpoint </b> <br>
								Kokar, Ranchi <br> +0651-908-090-009<br>
								info@w3learnpoint.com<br> www.w3learnpoint.com</td>

						</tr>
					</table>
				</td>
			</tr>
			<td colspan="3">
				<table cellspacing=0px cellpadding=2px>
					<tr class="heading">
						<td style="width: 10%;">PRODUCT ID</td>
						<td style="width: 25%; text-align: center;">NAME</td>
						<td style="width: 15%; text-align: right;">CATEGORY</td>
						<td style="width: 15%; text-align: right;">AMOUNT (INR)</td>
						<td style="width: 10%; text-align: right;">QUANTITY</td>
						<td style="width: 15%; text-align: right;">TOTAL AMOUNT (INR)</td>
					</tr>
					<tr class="item">
						<td style="width: 10%;">P1001</td>
						<td style="width: 25%;">Johnson's Baby Skincare Wipes</td>
						<td style="width: 15%; text-align: right;">LEVEL 2</td>
						<td style="width: 15%; text-align: right;">57</td>
						<td style="width: 10%; text-align: center;">2</td>
						<td style="width: 15%; text-align: right;">114</td>
					</tr>
					<tr class="item">
						<td style="width: 10%;">P1002</td>
						<td style="width: 25%;">Dettol Hand Sanitizer 30ml</td>
						<td style="width: 15%; text-align: right;">LEVEL 2</td>
						<td style="width: 15%; text-align: right;">55</td>
						<td style="width: 10%; text-align: center;">4</td>
						<td style="width: 15%; text-align: right;">220</td>
					</tr>
					<tr class="item">
						<td style="width: 15%;"><b>GRAND TOTAL</b></td>
						<td style="width: 25%;"></td>
						<td style="width: 15%; text-align: right;"></td>
						<td style="width: 15%; text-align: right;"></td>
						<td style="width: 10%; text-align: center;"><b>6</b></td>
						<td style="width: 15%; text-align: right;"><b>334</b></td>
					</tr>
					<tr class="total">
						<td colspan="3" >Total Amount in Words : <b>
								Three Hundred Thirty Four Rupees Only </b>
						</td>
					</tr>
					<tr>
				</table>
			</td>
			<tr>
				<td colspan="3">
					<table cellspacing="0px" cellpadding="2px">
						<tr>
							<td width="50%"><b> Declaration: </b> <br> We declare
								that this invoice shows the actual price of the goods described
								above and that all particulars are true and correct. The goods
								sold are intended for end user consumption and not for resale.</td>
							<td>* This is a computer generated invoice and does not
								require a physical signature</td>
						</tr>
						<tr>
							<td width="50%"></td>
							<td><b> Authorized Signature </b> <br> <br>
								................................... <br> <br> <br>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<div align="center">
		<button>Print this invoice</button>
		</div>
	</div>
</body>
</html>
