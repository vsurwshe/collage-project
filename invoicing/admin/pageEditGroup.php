<?php
	$d=dirname(__FILE__);
	require("$d/incCommon.php");

	// get groupID of anonymous group
	$anonGroupID=sqlValue("select groupID from membership_groups where name='".$adminConfig['anonymousGroup']."'");

	// request to save changes?
	if($_POST['saveChanges']!=''){
		// validate data
		$name=makeSafe($_POST['name']);
		$description=makeSafe($_POST['description']);
		switch($_POST['visitorSignup']){
			case 0:
				$allowSignup=0;
				$needsApproval=1;
				break;
			case 2:
				$allowSignup=1;
				$needsApproval=0;
				break;
			default:
				$allowSignup=1;
				$needsApproval=1;
		}
		###############################
		$clients_insert=checkPermissionVal('clients_insert');
		$clients_view=checkPermissionVal('clients_view');
		$clients_edit=checkPermissionVal('clients_edit');
		$clients_delete=checkPermissionVal('clients_delete');
		###############################
		$invoices_insert=checkPermissionVal('invoices_insert');
		$invoices_view=checkPermissionVal('invoices_view');
		$invoices_edit=checkPermissionVal('invoices_edit');
		$invoices_delete=checkPermissionVal('invoices_delete');
		###############################
		$invoice_items_insert=checkPermissionVal('invoice_items_insert');
		$invoice_items_view=checkPermissionVal('invoice_items_view');
		$invoice_items_edit=checkPermissionVal('invoice_items_edit');
		$invoice_items_delete=checkPermissionVal('invoice_items_delete');
		###############################

		// new group or old?
		if($_POST['groupID']==''){ // new group
			// make sure group name is unique
			if(sqlValue("select count(1) from membership_groups where name='$name'")){
				echo "<div class=\"error\">Error: Group name already exists. You must choose a unique group name.</div>";
				include("$d/incFooter.php");
			}

			// add group
			sql("insert into membership_groups set name='$name', description='$description', allowSignup='$allowSignup', needsApproval='$needsApproval'");

			// get new groupID
			$groupID=mysql_insert_id();

		}else{ // old group
			// validate groupID
			$groupID=intval($_POST['groupID']);

			if($groupID==$anonGroupID){
				$name=$adminConfig['anonymousGroup'];
				$allowSignup=0;
				$needsApproval=0;
			}

			// make sure group name is unique
			if(sqlValue("select count(1) from membership_groups where name='$name' and groupID!='$groupID'")){
				echo "<div class=\"error\">Error: Group name already exists. You must choose a unique group name.</div>";
				include("$d/incFooter.php");
			}

			// update group
			sql("update membership_groups set name='$name', description='$description', allowSignup='$allowSignup', needsApproval='$needsApproval' where groupID='$groupID'");

			// reset then add group permissions
			sql("delete from membership_grouppermissions where groupID='$groupID' and tableName='clients'");
			sql("delete from membership_grouppermissions where groupID='$groupID' and tableName='invoices'");
			sql("delete from membership_grouppermissions where groupID='$groupID' and tableName='invoice_items'");
		}

		// add group permissions
		if($groupID){
			// table 'clients'
			sql("insert into membership_grouppermissions set groupID='$groupID', tableName='clients', allowInsert='$clients_insert', allowView='$clients_view', allowEdit='$clients_edit', allowDelete='$clients_delete'");
			// table 'invoices'
			sql("insert into membership_grouppermissions set groupID='$groupID', tableName='invoices', allowInsert='$invoices_insert', allowView='$invoices_view', allowEdit='$invoices_edit', allowDelete='$invoices_delete'");
			// table 'invoice_items'
			sql("insert into membership_grouppermissions set groupID='$groupID', tableName='invoice_items', allowInsert='$invoice_items_insert', allowView='$invoice_items_view', allowEdit='$invoice_items_edit', allowDelete='$invoice_items_delete'");
		}

		// redirect to group editing page
		redirect("pageEditGroup.php?groupID=$groupID");

	}elseif($_GET['groupID']!=''){
		// we have an edit request for a group
		$groupID=intval($_GET['groupID']);
	}

	include("$d/incHeader.php");

	if($groupID!=''){
		// fetch group data to fill in the form below
		$res=sql("select * from membership_groups where groupID='$groupID'");
		if($row=mysql_fetch_assoc($res)){
			// get group data
			$name=$row['name'];
			$description=$row['description'];
			$visitorSignup=($row['allowSignup']==1 && $row['needsApproval']==1 ? 1 : ($row['allowSignup']==1 ? 2 : 0));

			// get group permissions for each table
			$res=sql("select * from membership_grouppermissions where groupID='$groupID'");
			while($row=mysql_fetch_assoc($res)){
				$tableName=$row['tableName'];
				$vIns=$tableName."_insert";
				$vUpd=$tableName."_edit";
				$vDel=$tableName."_delete";
				$vVue=$tableName."_view";
				$$vIns=$row['allowInsert'];
				$$vUpd=$row['allowEdit'];
				$$vDel=$row['allowDelete'];
				$$vVue=$row['allowView'];
			}
		}else{
			// no such group exists
			echo "<div class=\"error\">Error: Group not found!</div>";
			$groupID=0;
		}
	}
?>
<h1><?php echo ($groupID ? "Edit Group '$name'" : "Add New Group"); ?></h1>
<?php if($anonGroupID==$groupID){ ?>
	<div class="status">Attention! This is the anonymous group.</div>
<?php } ?>
<input type="checkbox" id="showToolTips" value="1" checked><label for="showToolTips">Show tool tips as mouse moves over options</label>
<form method="post" action="pageEditGroup.php">
	<input type="hidden" name="groupID" value="<?php echo $groupID; ?>">
	<table border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td align="right" class="tdFormCaption" valign="top">
				<div class="formFieldCaption">Group name</div>
				</td>
			<td align="left" class="tdFormInput">
				<input type="text" name="name" <?php echo ($anonGroupID==$groupID ? "readonly" : ""); ?> value="<?php echo $name; ?>" size="20" class="formTextBox">
				<br />
				<?php if($anonGroupID==$groupID){ ?>
					The name of the anonymous group is read-only here.
				<?php }else{ ?>
					If you name the group '<?php echo $adminConfig['anonymousGroup']; ?>', it will be considered the anonymous group<br />
					that defines the permissions of guest visitors that do not log into the system.
				<?php } ?>
				</td>
			</tr>
		<tr>
			<td align="right" valign="top" class="tdFormCaption">
				<div class="formFieldCaption">Description</div>
				</td>
			<td align="left" class="tdFormInput">
				<textarea name="description" cols="50" rows="5" class="formTextBox"><?php echo $description; ?></textarea>
				</td>
			</tr>
		<?php if($anonGroupID!=$groupID){ ?>
		<tr>
			<td align="right" valign="top" class="tdFormCaption">
				<div class="formFieldCaption">Allow visitors to sign up?</div>
				</td>
			<td align="left" class="tdFormInput">
				<?php
					echo htmlRadioGroup(
						"visitorSignup",
						array(0, 1, 2),
						array(
							"No. Only the admin can add users.",
							"Yes, and the admin must approve them.",
							"Yes, and automatically approve them."
						),
						($groupID ? $visitorSignup : $adminConfig['defaultSignUp'])
					);
				?>
				</td>
			</tr>
		<?php } ?>
		<tr>
			<td colspan="2" align="right" class="tdFormFooter">
				<input type="submit" name="saveChanges" value="Save changes">
				</td>
			</tr>
		<tr>
			<td colspan="2" class="tdFormHeader">
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<tr>
						<td class="tdFormHeader" colspan="5"><h2>Table permissions for this group</h2></td>
						</tr>
					<?php
						// permissions arrays common to the radio groups below
						$arrPermVal=array(0, 1, 2, 3);
						$arrPermText=array("No", "Owner", "Group", "All");
					?>
					<tr>
						<td class="tdHeader"><div class="ColCaption">Table</div></td>
						<td class="tdHeader"><div class="ColCaption">Insert</div></td>
						<td class="tdHeader"><div class="ColCaption">View</div></td>
						<td class="tdHeader"><div class="ColCaption">Edit</div></td>
						<td class="tdHeader"><div class="ColCaption">Delete</div></td>
						</tr>
				<!-- Clients table -->
					<tr>
						<td class="tdCaptionCell" valign="top">Clients</td>
						<td class="tdCell" valign="top">
							<input onMouseOver="stm(clients_addTip, toolTipStyle);" onMouseOut="htm();" type="checkbox" name="clients_insert" value="1" <?php echo ($clients_insert ? "checked class=\"highlight\"" : ""); ?>>
							</td>
						<td class="tdCell">
							<?php
								echo htmlRadioGroup("clients_view", $arrPermVal, $arrPermText, $clients_view, "highlight");
							?>
							</td>
						<td class="tdCell">
							<?php
								echo htmlRadioGroup("clients_edit", $arrPermVal, $arrPermText, $clients_edit, "highlight");
							?>
							</td>
						<td class="tdCell">
							<?php
								echo htmlRadioGroup("clients_delete", $arrPermVal, $arrPermText, $clients_delete, "highlight");
							?>
							</td>
						</tr>
				<!-- Invoices table -->
					<tr>
						<td class="tdCaptionCell" valign="top">Invoices</td>
						<td class="tdCell" valign="top">
							<input onMouseOver="stm(invoices_addTip, toolTipStyle);" onMouseOut="htm();" type="checkbox" name="invoices_insert" value="1" <?php echo ($invoices_insert ? "checked class=\"highlight\"" : ""); ?>>
							</td>
						<td class="tdCell">
							<?php
								echo htmlRadioGroup("invoices_view", $arrPermVal, $arrPermText, $invoices_view, "highlight");
							?>
							</td>
						<td class="tdCell">
							<?php
								echo htmlRadioGroup("invoices_edit", $arrPermVal, $arrPermText, $invoices_edit, "highlight");
							?>
							</td>
						<td class="tdCell">
							<?php
								echo htmlRadioGroup("invoices_delete", $arrPermVal, $arrPermText, $invoices_delete, "highlight");
							?>
							</td>
						</tr>
				<!-- Invoice items table -->
					<tr>
						<td class="tdCaptionCell" valign="top">Invoice items</td>
						<td class="tdCell" valign="top">
							<input onMouseOver="stm(invoice_items_addTip, toolTipStyle);" onMouseOut="htm();" type="checkbox" name="invoice_items_insert" value="1" <?php echo ($invoice_items_insert ? "checked class=\"highlight\"" : ""); ?>>
							</td>
						<td class="tdCell">
							<?php
								echo htmlRadioGroup("invoice_items_view", $arrPermVal, $arrPermText, $invoice_items_view, "highlight");
							?>
							</td>
						<td class="tdCell">
							<?php
								echo htmlRadioGroup("invoice_items_edit", $arrPermVal, $arrPermText, $invoice_items_edit, "highlight");
							?>
							</td>
						<td class="tdCell">
							<?php
								echo htmlRadioGroup("invoice_items_delete", $arrPermVal, $arrPermText, $invoice_items_delete, "highlight");
							?>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		<tr>
			<td colspan="2" align="right" class="tdFormFooter">
				<input type="submit" name="saveChanges" value="Save changes">
				</td>
			</tr>
		</table>
</form>


<?php
	include("$d/incFooter.php");
?>