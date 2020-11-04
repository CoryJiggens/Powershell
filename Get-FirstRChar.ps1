<#	
	.NOTES
	===========================================================================
	 Created on:   	11/4/2020 3:52 PM
	 Created by:   	Cory Jiggens
	 Filename:     	Get-FirstRChar.ps1
	===========================================================================
	.DESCRIPTION
		This function will retrieve the first reoccuring character of any long string.
        For example run Get-FirstRChar -string "Hello DevOps"
               
#>

#region Set Execution Policy
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force
#endregion Set Execution Policy
#region Functions
function Get-FirstRchar
{
	#region Parameters
	[CmdletBinding()]
	param
	(
		[parameter(Mandatory = $true)]
		[string]$string	
	)
	#endregion Parameter
	$SA = $string.ToCharArray()
	$SR = @{} # Create Empty Hashtable
	foreach ($s in $SA)
	{
		
		if ($SR.ContainsKey($S))
		{
				Write-Host "The first repeating character in $string is:$s" -ForegroundColor Green
                exit
		} 
		else
		{
			$SR.Add($S,$S.length)
		}
	}
}
#endregion Functions
