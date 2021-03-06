USE [HRMSDB]
GO
/****** Object:  Table [dbo].[AllowanceGrade]    Script Date: 6/28/2022 7:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllowanceGrade](
	[AllowanceGradeId] [int] IDENTITY(1,1) NOT NULL,
	[AllowanceId] [int] NOT NULL,
	[GradeId] [int] NOT NULL,
	[AllowanceRate] [float] NOT NULL,
 CONSTRAINT [PK_AllowanceGrade] PRIMARY KEY CLUSTERED 
(
	[AllowanceGradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AllowanceMaster]    Script Date: 6/28/2022 7:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllowanceMaster](
	[AllowanceId] [int] IDENTITY(1,1) NOT NULL,
	[AllowanceName] [text] NULL,
	[IsTaxable] [text] NULL,
 CONSTRAINT [PK_AllowanceMaster] PRIMARY KEY CLUSTERED 
(
	[AllowanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttendanceMaster]    Script Date: 6/28/2022 7:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttendanceMaster](
	[AttendanceId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[TimeOfArrival] [time](7) NULL,
	[TimeOfLeave] [time](7) NULL,
	[OverTimeHours] [float] NULL,
	[AttendanceDate] [datetime] NULL,
 CONSTRAINT [PK_AttendanceMaster] PRIMARY KEY CLUSTERED 
(
	[AttendanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CityMaster]    Script Date: 6/28/2022 7:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CityMaster](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [text] NULL,
	[StateId] [int] NOT NULL,
 CONSTRAINT [PK_CityMaster] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeductionGrade]    Script Date: 6/28/2022 7:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeductionGrade](
	[DeductionGradeId] [int] IDENTITY(1,1) NOT NULL,
	[DeductionId] [int] NOT NULL,
	[GradeId] [int] NOT NULL,
	[DeductionRate] [float] NOT NULL,
 CONSTRAINT [PK_DeductionGrade] PRIMARY KEY CLUSTERED 
(
	[DeductionGradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeductionMaster]    Script Date: 6/28/2022 7:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeductionMaster](
	[DeductionId] [int] IDENTITY(1,1) NOT NULL,
	[DeductionName] [text] NOT NULL,
	[DeductionType] [text] NOT NULL,
 CONSTRAINT [PK_DeductionMaster] PRIMARY KEY CLUSTERED 
(
	[DeductionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepartmentMaster]    Script Date: 6/28/2022 7:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartmentMaster](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [text] NULL,
	[DepartmentAddress] [text] NULL,
	[CityId] [int] NOT NULL,
 CONSTRAINT [PK_DepartmentMaster] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DesignationGrade]    Script Date: 6/28/2022 7:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DesignationGrade](
	[DesignationGradeId] [int] IDENTITY(1,1) NOT NULL,
	[DesignationId] [int] NOT NULL,
	[GradeId] [int] NOT NULL,
 CONSTRAINT [PK_DesignationGrade] PRIMARY KEY CLUSTERED 
(
	[DesignationGradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DesignationMaster]    Script Date: 6/28/2022 7:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DesignationMaster](
	[DesignationId] [int] IDENTITY(1,1) NOT NULL,
	[DesignationName] [text] NULL,
	[DepartmentId] [int] NOT NULL,
 CONSTRAINT [PK_DesignationMaster] PRIMARY KEY CLUSTERED 
(
	[DesignationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeGrade]    Script Date: 6/28/2022 7:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeGrade](
	[EmployeeGradeId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[GradeId] [int] NOT NULL,
	[IsActive] [text] NOT NULL,
 CONSTRAINT [PK_EmployeeGrade] PRIMARY KEY CLUSTERED 
(
	[EmployeeGradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeMaster]    Script Date: 6/28/2022 7:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeMaster](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeFname] [text] NULL,
	[EmployeeMname] [text] NULL,
	[EmployeeLname] [text] NULL,
	[EmployeeEmail] [varchar](max) NULL,
	[Password] [varchar](max) NULL,
	[EmployeeContact] [text] NULL,
	[EmployeeDOJ] [date] NULL,
	[EmployeeAddress] [text] NULL,
	[CityId] [int] NULL,
	[PanNo] [text] NULL,
	[PanCopy] [text] NULL,
	[Qualifications] [text] NULL,
	[Experiance] [int] NULL,
	[BankAcNo] [text] NULL,
	[BankIFSCCode] [text] NULL,
	[BankHolderName] [text] NULL,
 CONSTRAINT [PK_EmployeeMaster] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeSalary]    Script Date: 6/28/2022 7:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeSalary](
	[SalaryId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[EmbursementDate] [date] NULL,
	[BasicSalary] [float] NULL,
	[GrossSalary] [float] NULL,
	[TotalSalary] [float] NULL,
 CONSTRAINT [PK_EmployeeSalary] PRIMARY KEY CLUSTERED 
(
	[SalaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GradeMaster]    Script Date: 6/28/2022 7:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GradeMaster](
	[GradeId] [int] IDENTITY(1,1) NOT NULL,
	[GradeName] [text] NULL,
	[ModeOfSalary] [text] NULL,
	[WagePerHour] [float] NULL,
	[DailySalary] [float] NULL,
 CONSTRAINT [PK_GradeMaster] PRIMARY KEY CLUSTERED 
(
	[GradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HolidayMaster]    Script Date: 6/28/2022 7:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HolidayMaster](
	[HolidayId] [int] IDENTITY(1,1) NOT NULL,
	[HolidayDate] [date] NULL,
	[HolidayTitle] [text] NULL,
 CONSTRAINT [PK_HolidayMaster] PRIMARY KEY CLUSTERED 
(
	[HolidayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LeaveMaster]    Script Date: 6/28/2022 7:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveMaster](
	[LeaveId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[FromDate] [date] NULL,
	[ToDate] [date] NULL,
	[Reason] [text] NULL,
	[isApproved] [text] NULL,
 CONSTRAINT [PK_LeaveMaster] PRIMARY KEY CLUSTERED 
(
	[LeaveId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PromotionMaster]    Script Date: 6/28/2022 7:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PromotionMaster](
	[PromotionId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[GradeId] [int] NOT NULL,
	[IncrementAmount] [float] NOT NULL,
 CONSTRAINT [PK_PromotionMaster] PRIMARY KEY CLUSTERED 
(
	[PromotionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalaryPayment]    Script Date: 6/28/2022 7:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalaryPayment](
	[TransactionId] [int] IDENTITY(1,1) NOT NULL,
	[SalaryId] [int] NOT NULL,
	[Amount] [float] NULL,
	[PaymentId] [varchar](50) NULL,
 CONSTRAINT [PK_SalaryPayment] PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShiftMaster]    Script Date: 6/28/2022 7:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShiftMaster](
	[ShiftId] [int] IDENTITY(1,1) NOT NULL,
	[ShiftName] [text] NULL,
	[ShiftStartTime] [time](7) NULL,
	[ShiftEndTime] [time](7) NULL,
 CONSTRAINT [PK_ShiftMaster] PRIMARY KEY CLUSTERED 
(
	[ShiftId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StateMaster]    Script Date: 6/28/2022 7:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StateMaster](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [text] NULL,
 CONSTRAINT [PK_StateMaster] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AllowanceGrade]  WITH CHECK ADD  CONSTRAINT [FK_AllowanceGrade_AllowanceMaster] FOREIGN KEY([AllowanceId])
REFERENCES [dbo].[AllowanceMaster] ([AllowanceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AllowanceGrade] CHECK CONSTRAINT [FK_AllowanceGrade_AllowanceMaster]
GO
ALTER TABLE [dbo].[AllowanceGrade]  WITH CHECK ADD  CONSTRAINT [FK_AllowanceGrade_GradeMaster] FOREIGN KEY([GradeId])
REFERENCES [dbo].[GradeMaster] ([GradeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AllowanceGrade] CHECK CONSTRAINT [FK_AllowanceGrade_GradeMaster]
GO
ALTER TABLE [dbo].[AttendanceMaster]  WITH CHECK ADD  CONSTRAINT [FK_AttendanceMaster_EmployeeMaster] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[EmployeeMaster] ([EmployeeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AttendanceMaster] CHECK CONSTRAINT [FK_AttendanceMaster_EmployeeMaster]
GO
ALTER TABLE [dbo].[CityMaster]  WITH CHECK ADD  CONSTRAINT [FK_CityMaster_StateMaster] FOREIGN KEY([StateId])
REFERENCES [dbo].[StateMaster] ([StateId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CityMaster] CHECK CONSTRAINT [FK_CityMaster_StateMaster]
GO
ALTER TABLE [dbo].[DeductionGrade]  WITH CHECK ADD  CONSTRAINT [FK_DeductionGrade_DeductionMaster] FOREIGN KEY([DeductionId])
REFERENCES [dbo].[DeductionMaster] ([DeductionId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DeductionGrade] CHECK CONSTRAINT [FK_DeductionGrade_DeductionMaster]
GO
ALTER TABLE [dbo].[DeductionGrade]  WITH CHECK ADD  CONSTRAINT [FK_DeductionGrade_GradeMaster] FOREIGN KEY([GradeId])
REFERENCES [dbo].[GradeMaster] ([GradeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DeductionGrade] CHECK CONSTRAINT [FK_DeductionGrade_GradeMaster]
GO
ALTER TABLE [dbo].[DepartmentMaster]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentMaster_CityMaster] FOREIGN KEY([CityId])
REFERENCES [dbo].[CityMaster] ([CityId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DepartmentMaster] CHECK CONSTRAINT [FK_DepartmentMaster_CityMaster]
GO
ALTER TABLE [dbo].[DesignationGrade]  WITH CHECK ADD  CONSTRAINT [FK_DesignationGrade_DesignationMaster] FOREIGN KEY([DesignationId])
REFERENCES [dbo].[DesignationMaster] ([DesignationId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DesignationGrade] CHECK CONSTRAINT [FK_DesignationGrade_DesignationMaster]
GO
ALTER TABLE [dbo].[DesignationGrade]  WITH CHECK ADD  CONSTRAINT [FK_DesignationGrade_GradeMaster] FOREIGN KEY([GradeId])
REFERENCES [dbo].[GradeMaster] ([GradeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DesignationGrade] CHECK CONSTRAINT [FK_DesignationGrade_GradeMaster]
GO
ALTER TABLE [dbo].[DesignationMaster]  WITH CHECK ADD  CONSTRAINT [FK_DesignationMaster_DepartmentMaster] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[DepartmentMaster] ([DepartmentId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DesignationMaster] CHECK CONSTRAINT [FK_DesignationMaster_DepartmentMaster]
GO
ALTER TABLE [dbo].[EmployeeGrade]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeGrade_EmployeeMaster] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[EmployeeMaster] ([EmployeeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmployeeGrade] CHECK CONSTRAINT [FK_EmployeeGrade_EmployeeMaster]
GO
ALTER TABLE [dbo].[EmployeeGrade]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeGrade_GradeMaster] FOREIGN KEY([GradeId])
REFERENCES [dbo].[GradeMaster] ([GradeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmployeeGrade] CHECK CONSTRAINT [FK_EmployeeGrade_GradeMaster]
GO
ALTER TABLE [dbo].[EmployeeMaster]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeMaster_CityMaster] FOREIGN KEY([CityId])
REFERENCES [dbo].[CityMaster] ([CityId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmployeeMaster] CHECK CONSTRAINT [FK_EmployeeMaster_CityMaster]
GO
ALTER TABLE [dbo].[EmployeeSalary]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeSalary_EmployeeMaster] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[EmployeeMaster] ([EmployeeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmployeeSalary] CHECK CONSTRAINT [FK_EmployeeSalary_EmployeeMaster]
GO
ALTER TABLE [dbo].[LeaveMaster]  WITH CHECK ADD  CONSTRAINT [FK_LeaveMaster_EmployeeMaster] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[EmployeeMaster] ([EmployeeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LeaveMaster] CHECK CONSTRAINT [FK_LeaveMaster_EmployeeMaster]
GO
ALTER TABLE [dbo].[PromotionMaster]  WITH CHECK ADD  CONSTRAINT [FK_PromotionMaster_EmployeeMaster] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[EmployeeMaster] ([EmployeeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PromotionMaster] CHECK CONSTRAINT [FK_PromotionMaster_EmployeeMaster]
GO
ALTER TABLE [dbo].[PromotionMaster]  WITH CHECK ADD  CONSTRAINT [FK_PromotionMaster_GradeMaster] FOREIGN KEY([GradeId])
REFERENCES [dbo].[GradeMaster] ([GradeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PromotionMaster] CHECK CONSTRAINT [FK_PromotionMaster_GradeMaster]
GO
ALTER TABLE [dbo].[SalaryPayment]  WITH CHECK ADD  CONSTRAINT [FK_SalaryPayment_EmployeeSalary] FOREIGN KEY([SalaryId])
REFERENCES [dbo].[EmployeeSalary] ([SalaryId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SalaryPayment] CHECK CONSTRAINT [FK_SalaryPayment_EmployeeSalary]
GO
