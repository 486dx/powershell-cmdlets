#sample domain name: sampledomain.com
# Set office attribute to null in sampledomain Searchbase
Import-Module ActiveDirectory
$users = Get-ADUser -Filter 'Office -like "*"' -SearchBase "DC=sampledomain,DC=com"
foreach($user in $users)
{
  Set-ADUser -Identity $user -Office $null
}



