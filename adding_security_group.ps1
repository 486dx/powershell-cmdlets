# adding all user of an OU to a security group
Import-Module ActiveDirectory
$users = Get-ADUser -Filter * -SearchBase "OU=sampleOU,DC=sample,DC=com"
foreach($user in $users)
{
  Add-ADGroupMember -Identity targetSecurityGroupName -Member $user.samaccountname -ErrorAction SilentlyContinue
}