### This script contains commonly used SQL queries for extracting Manifest record information


#### Determine the overall permission rate of the apps


select ami.appID, ami.AppName, AppCommitCount.CommitCount
from Android_Manifest_AppInfo ami
left outer join (
select count (Commit_ID) as CommitCount, appID  from Android_Manifest_CommitInfo amc group by amc.appID
) AppCommitCount on AppCommitCount.appID = ami.AppID



-- Get the permission count for each commit

select amc.appID, amc.commit_ID,amc.commit_Order, PermissionCount.PermissionCount
from Android_Manifest_CommitInfo amc

left outer join (
select count (Commit_ID) as PermissionCount, commit_ID  from Android_Manifest_permission_join ampj group by ampj.commit_ID
) PermissionCount on PermissionCount.commit_ID = amc.Commit_ID

order by amc.AppID, amc.commit_ID, amc.Commit_Order
--inner join Android_Manifest_permission_join ampj on ampj.commit_ID




-- Get the permission count for each commit

select amc.appID, amc.commit_ID,amc.commit_Order, PermissionCount.PermissionCount, amc.commit_val, ama.appName
from Android_Manifest_CommitInfo amc

left outer join (
select count (Commit_ID) as PermissionCount, commit_ID  from Android_Manifest_permission_join ampj group by ampj.commit_ID
) PermissionCount on PermissionCount.commit_ID = amc.Commit_ID

inner join Android_Manifest_AppInfo ama on ama.appID = amc.appID

order by amc.AppID, amc.commit_ID, amc.Commit_Order
--inner join Android_Manifest_permission_join ampj on ampj.commit_ID






? Apps must have a certain number of commits?
- Group by commit order


1) Get the number of commits for an apps
2) If the app has at least x number of commits, then include information
3) Get the number of permissions the app has



-- Thoughts -- compare this to the permission gap of the app?



##### Research Questions #####
-- Are more permissions added over time?
-- How often are permissions removed?
-- Do commit messages mention when permissions are removed?
-- 



Notes:

-- Must also record <permission
 <uses-permission android:name="android.permission.VIBRATE" />

    <!-- Needed to be able to get notifications from system. -->
    <permission android:name="android.permission.STATUS_BAR_SERVICE" />
