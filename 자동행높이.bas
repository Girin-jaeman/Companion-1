Attribute VB_Name = "Module1"
Sub AdjustHeightMergedCell()

MrgAddr = ActiveCell.MergeArea.Address
Set rngMergeArea = Range(MrgAddr)
With rngMergeArea
.UnMerge
cellWidth = .Cells(1).ColumnWidth
MrgWidth = 0
For Each c In rngMergeArea
    c.WrapText = True
    MrgWidth = c.ColumnWidth + MrgWidth
Next
.Cells(1).ColumnWidth = MrgWidth
.EntireRow.AutoFit
rwHeight = .RowHeight
.Cells(1).ColumnWidth = cellWidth
.MergeCells = True
.RowHeight = rwHeight
End With

End Sub

