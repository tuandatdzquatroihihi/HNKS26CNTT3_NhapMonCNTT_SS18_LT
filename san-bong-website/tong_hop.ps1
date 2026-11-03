# Script: tong_hop.ps1
# Tac gia: DAO TUAN DAT
# Ngay tao: 3/11/26
Write-Host "Dang tao bao cao..."
"=== BAO CAO SU CO WEBSITE ===" > .\logs\tong_hop.txt
Get-Content .\logs\access.log | Select-String "status=404" >> .\logs\tong_hop.txt
Get-Content .\logs\access.log | Select-String "status=500" | Measure-Object >> .\logs\tong_hop.txt
Write-Host "Hoan thanh!"
