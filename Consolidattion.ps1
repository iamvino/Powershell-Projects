$inputFolder = "C:\Users\evino\Documents\Experiment\Input"
$outputFile = "C:\Users\evino\Documents\Experiment\Output\Consolidated.xlsx"
$completeFolder = "C:\evino\Documents\Experiment\COMPLETE"

# Get all Excel files in the input folder
$excelFiles = Get-ChildItem -Path $inputFolder -Filter *.xlsx

# Open the consolidated Excel file
$excel = New-Object -ComObject Excel.Application
$workbook = $excel.Workbooks.Open($outputFile)
$sheet = $workbook.Sheets.Item(1)

# Copy the contents of each Excel file to the consolidated file
foreach ($file in $excelFiles) 
{
    $workbookToCopy = $excel.Workbooks.Open($file.FullName)
    $sheetToCopy = $workbookToCopy.Sheets.Item(1)

    $lastRow = $sheet.Cells.SpecialCells(11).Row
    $sheetToCopy.Range("A1:Z100").Copy()
    $sheet.Cells.Item($lastRow + 1, 1).PasteSpecial(-4163)

    $workbookToCopy.Close($false)
}

# Save and close the consolidated file
$workbook.Save()
$excel.Quit()

# Move the processed Excel files to the complete folder
foreach ($file in $excelFiles) 
{
    Move-Item -Path $file.FullName -Destination $completeFolder
}