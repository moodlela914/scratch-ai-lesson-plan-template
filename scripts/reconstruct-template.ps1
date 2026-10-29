param(
  [string]$OutputPath = "assets/指引教案格式.docx"
)

$parts = Get-ChildItem -LiteralPath "assets/template-base64" -Filter "part-*.txt" | Sort-Object Name
if (-not $parts) { throw "找不到範本分割檔。" }
$base64 = ($parts | ForEach-Object { Get-Content -Raw -Encoding UTF8 -LiteralPath $_.FullName }) -join ""
[IO.File]::WriteAllBytes($OutputPath, [Convert]::FromBase64String($base64))
Write-Host "已重建 $OutputPath"

