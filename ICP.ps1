Install-Module -Name Microsoft.Online.SharePoint.PowerShell

Set-ExecutionPolicy -ExecutionPolicy Bypass

$user1 = Read-Host -Prompt 'Input User 1'
$user2 = Read-Host -Prompt 'Input User 2'
$user3 = Read-Host -Prompt 'Input User 3'
$user4 = Read-Host -Prompt 'Input User 4'

$adminsite = "https://icpnurseries-admin.sharepoint.com"
$site = "https://icpnurseries.sharepoint.com"

Connect-SPOService -Url $adminsite

$SiteGroups = Get-SPOSite

ForEach ($SiteGroup in $SiteGroups.Title -eq "*" ) {

Remove-SPOUser -Group $SiteGroup -LoginName $user1 -Site $site
Remove-SPOUser -Group $SiteGroup -LoginName $user2 -Stie $site
Remove-SPOUser -Group $SiteGroup -LoginName $user3 -Stie $site
Remove-SPOUser -Group $SiteGroup -LoginName $user4 -Stie $site 

}

