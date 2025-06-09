# Creating a Date Dimension Table in Power Query from Revenues and Costs

## Background

A Date Dimension table is a cornerstone of most data models. It provides a single, comprehensive source of date-related attributes (like Year, Month Name, Day of Week, Quarter) that you can use to slice and dice your data from various fact tables (like Revenues and Costs) consistently.

Why create a Date Dimension?
Unified Date Source: All your fact tables (Revenues, Costs, etc.) can relate to a single date table, ensuring consistent date-based analysis across all measures.

Enriched Attributes: You can add various time intelligence attributes (e.g., Year, Month Name, Quarter, Day of Week) that aren't typically present in your raw transaction tables.

Performance: Proper date dimensions can improve performance in your data model, especially when used with time intelligence functions.

Calendar Control: You have full control over your calendar, including fiscal years, custom periods, or holiday flags.

Prerequisites
You have two tables, Revenues and Costs, loaded into Excel (or as connections) and accessible by Power Query.

Both Revenues and Costs tables must have at least one column containing dates (e.g., RevenueDate in Revenues and CostDate in Costs).

Step-by-Step Guide in Power Query
Let's assume your 'Revenues' table has a date column named RevenueDate and your 'Costs' table has a date column named CostDate.

Load Your Fact Tables into Power Query:

If you haven't already, load your Revenues and Costs tables into Power Query. Go to Data > Get Data > From Table/Range (if they are Excel tables) or From File/From Database as appropriate.

Once loaded, ensure they are just "Connection Only" loads if you don't need them directly on a sheet.

Find the Minimum and Maximum Dates Across Both Tables:

Create a new blank query: Go to Data > Get Data > From Other Sources > Blank Query.

Rename this query: Right-click on Query1 (or whatever it's named) in the Queries & Connections pane and rename it to Date_Dimension_Builder.

In the formula bar, we will determine the MinDate and MaxDate from your existing tables.

let
    // Get the list of RevenueDates from your Revenues table
    RevenueDates = Revenues[RevenueDate],
    // Get the list of CostDates from your Costs table
    CostDates = Costs[CostDate],
    // Combine both lists of dates
    AllDates = RevenueDates & CostDates,
    // Find the earliest date from all combined dates and ensure it's a pure Date type
    MinDate = Date.From(List.Min(AllDates)),
    // Find the latest date from all combined dates and ensure it's a pure Date type
    MaxDate = Date.From(List.Max(AllDates))
in
    // You'll use these MinDate and MaxDate variables to build your date range
    MaxDate // For now, just output MaxDate to see the value. We'll change this.

Apply & Close for now, then reopen the query to continue. (Sometimes Power Query needs a refresh for new variables to be recognized fully in the UI.)

Generate a List of Dates:

Open your Date_Dimension_Builder query again.

Modify the in clause to generate a list of dates from MinDate to MaxDate.

let
    RevenueDates = Revenues[RevenueDate],
    CostDates = Costs[CostDate],
    AllDates = RevenueDates & CostDates,
    // Ensure MinDate and MaxDate are pure 'Date' types for subtraction
    MinDate = Date.From(List.Min(AllDates)),
    MaxDate = Date.From(List.Max(AllDates)),
    // Generate a list of dates from MinDate to MaxDate
    // The subtraction of dates (MaxDate - MinDate) results in a duration.
    // We use Duration.Days() to extract the number of days from this duration.
    NumberOfDays = Duration.Days(MaxDate - MinDate) + 1,
    DateList = List.Dates(MinDate, NumberOfDays, #duration(1, 0, 0, 0))
in
    DateList

You should now see a list of dates.

Convert the List to a Table:

With DateList as your current output, click on To Table in the ribbon (Transform tab > Convert group).

In the dialog box, you can leave the delimiter as "None" and "How to handle extra columns" as "Show errors". Click OK.

Rename the column Column1 to Date.

Ensure the data type of the Date column is Date (not Date/Time). You can change this in the Transform tab > Data Type dropdown.

Add Date Attributes:

Now you have your Date column. Select the Date column.

Go to the Add Column tab.

Use the Date dropdown to add various attributes:

Year > Year

Month > Month (Number)

Month > Name of Month

Quarter > Quarter of Year

Week > Week of Year

Day > Day (Number)

Day > Name of Day

You can add more as needed (e.g., Start of Year, End of Month, Day of Year, etc.).

Example: Adding YYYYMMDD Key (Optional but Recommended for Sorting):

With the Date column selected, go to Add Column > Custom Column.

Name the new column DateKey.

Enter the formula:

Date.ToText([Date], "yyyyMMdd")

Change the data type of DateKey to Text (or Whole Number if you prefer, but Text is often more flexible).

Example: Adding Month & Year for Sorting (Optional):

With the Date column selected, go to Add Column > Custom Column.

Name the new column MonthYearSort.

Enter the formula:

Date.Year([Date]) * 100 + Date.Month([Date])

Change the data type to Whole Number.

Then, you might want a display column for this, e.g., MonthName & Year:

Add another Custom Column:

Text.Start( Date.MonthName([Date]), 3) & " " & Text.From( Date.Year([Date]) )

Set data type to Text.

Load to Model Only:

Once you're satisfied with your Date Dimension table, click Close & Load To... in the Home tab.

Select Only Create Connection and Add this data to the Data Model. This loads the table into the Power Pivot Data Model, where you can create relationships with your fact tables.

Create Relationships in Data Model:

Go to the Data tab > Data Tools group > Manage Data Model.

In the Power Pivot window, go to Diagram View.

Drag the Date column from your Date_Dimension_Builder table to the RevenueDate column in your Revenues table.

Drag the Date column from your Date_Dimension_Builder table to the CostDate column in your Costs table.

Ensure the relationships are one-to-many (1 to *), from the Date Dimension to your fact tables.

Complete M Code Example
Here's the combined M code for the Date_Dimension_Builder query. You can create a new blank query, go to the Advanced Editor (under Home tab), delete the existing content, and paste this in.

let
    // --- Step 1: Get Dates from Fact Tables ---
    // Make sure 'Revenues' and 'Costs' queries exist and are loaded to Power Query
    // Adjust column names if different in your actual tables
    RevenueDates = Table.Column(Revenues, "RevenueDate"),
    CostDates = Table.Column(Costs, "CostDate"),

    // --- Step 2: Combine and Find Min/Max Dates ---
    AllDates = RevenueDates & CostDates,
    // Ensure MinDate and MaxDate are pure 'Date' types for subtraction
    MinDate = Date.From(List.Min(AllDates)),
    MaxDate = Date.From(List.Max(AllDates)),

    // --- Step 3: Generate a List of Dates ---
    // Number of days between MinDate and MaxDate, inclusive
    // The subtraction of dates (MaxDate - MinDate) results in a duration.
    // We use Duration.Days() to extract the number of days from this duration.
    NumberOfDays = Duration.Days(MaxDate - MinDate) + 1,
    // Generate the list of dates
    DateList = List.Dates(MinDate, NumberOfDays, #duration(1, 0, 0, 0)),

    // --- Step 4: Convert List to Table and Rename Column ---
    SourceTable = Table.FromList(DateList, Splitter.SplitByNothing(), null, null, ExtraValues.Error),
    #"Renamed Columns" = Table.RenameColumns(SourceTable,{{"Column1", "Date"}}),
    #"Changed Type" = Table.TransformColumnTypes(#"Renamed Columns",{{"Date", type date}}),

    // --- Step 5: Add Date Attributes ---
    #"Added Year" = Table.AddColumn(#"Changed Type", "Year", each Date.Year([Date]), type number),
    #"Added Month Num" = Table.AddColumn(#"Added Year", "Month Number", each Date.Month([Date]), type number),
    #"Added Month Name" = Table.AddColumn(#"Added Month Num", "Month Name", each Date.MonthName([Date]), type text),
    #"Added Quarter Num" = Table.AddColumn(#"Added Month Name", "Quarter Number", each Date.QuarterOfYear([Date]), type number),
    #"Added Week Num" = Table.AddColumn(#"Added Quarter Num", "Week Number", each Date.WeekOfYear([Date]), type number),
    #"Added Day Num" = Table.AddColumn(#"Added Week Num", "Day Number", each Date.Day([Date]), type number),
    #"Added Day Name" = Table.AddColumn(#"Added Day Num", "Day Name", each Date.DayOfWeekName([Date]), type text),
    #"Added Day of Week Index" = Table.AddColumn(#"Added Day Name", "Day of Week Index", each Date.DayOfWeek([Date], Day.Monday), type number), // 0 for Monday, 6 for Sunday

    // --- Optional: Add DateKey for Sorting ---
    #"Added DateKey" = Table.AddColumn(#"Added Day of Week Index", "DateKey", each Date.ToText([Date], "yyyyMMdd"), type text),

    // --- Optional: Add MonthYearSort and MonthYear for display/sorting ---
    #"Added MonthYearSort" = Table.AddColumn(#"Added DateKey", "MonthYearSort", each Date.Year([Date]) * 100 + Date.Month([Date]), type number),
    #"Added MonthYear" = Table.AddColumn(#"Added MonthYearSort", "MonthYear", each Text.Start(Date.MonthName([Date]), 3) & " " & Text.From(Date.Year([Date])), type text)

in
    #"Added MonthYear"

Remember to replace Revenues and Costs with the exact names of your queries if they are different, and ensure the date column names (RevenueDate, CostDate) match your actual data.