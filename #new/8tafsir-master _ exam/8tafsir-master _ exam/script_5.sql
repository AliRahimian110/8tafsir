USE [Tafsir]
GO

/****** Object:  View [dbo].[vw_exam_result]    Script Date: 7/20/2019 6:39:48 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_exam_result]
AS
SELECT        dbo.TbExam.ID, dbo.TbExamHeader.student_id, CASE WHEN dbo.TbExamDetail.Ans = dbo.TbQuestion.currect_ans THEN 1 ELSE 0 END AS result, 
                         CASE WHEN dbo.TbExamDetail.Ans = dbo.TbQuestion.currect_ans THEN dbo.TbQuestion.pos_score ELSE 0 END AS pos_result, 
                         CASE WHEN dbo.TbExamDetail.Ans != dbo.TbQuestion.currect_ans THEN dbo.TbQuestion.neg_score ELSE 0 END AS neg_result, dbo.TbExamDetail.Ans, dbo.TbQuestion.currect_ans, dbo.TbQuestion.pos_score, 
                         dbo.TbQuestion.neg_score
FROM            dbo.TbExamHeader INNER JOIN
                         dbo.TbExam ON dbo.TbExamHeader.exam_id = dbo.TbExam.ID INNER JOIN
                         dbo.TbExamDetail ON dbo.TbExamHeader.ID = dbo.TbExamDetail.ExmH_ID INNER JOIN
                         dbo.TbQuestion ON dbo.TbExamDetail.Qs_id = dbo.TbQuestion.id
WHERE        (dbo.TbExamHeader.end_at IS NOT NULL)
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[15] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TbExamHeader"
            Begin Extent = 
               Top = 16
               Left = 347
               Bottom = 279
               Right = 517
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TbExam"
            Begin Extent = 
               Top = 12
               Left = 56
               Bottom = 289
               Right = 226
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TbExamDetail"
            Begin Extent = 
               Top = 18
               Left = 603
               Bottom = 257
               Right = 773
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TbQuestion"
            Begin Extent = 
               Top = 3
               Left = 815
               Bottom = 288
               Right = 999
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1455
         Output = 1170
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_exam_result'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'50
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_exam_result'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_exam_result'
GO


