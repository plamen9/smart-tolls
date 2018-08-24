------------- TABLES -------------------

-- LU_Point_Type
Point_Type_Id		PK

-- LU_Country
Country_Id			PK

-- LU_Vehicle_Type
Vehicle_Type_Id		PK

-- LU_Vehicle_Sub_Type
Vehicle_Sub_Type_Id	PK
Vehicle_Type_Id		FK
Description

-- Vehicles
Vehicle_Id			PK
Vehicle_Type_Id		FK
Country_Id			FK
Licence_Number

-- Vehicles_Sub_Types		-- Many rows for one vehicle, adding each possible sub_type
Vehicle_Id			FK
Vehicle_Sub_Type_Id	FK

-- Points
Point_Id 			PK
Point_Type_Id		FK
Country_Id			FK
GPS_Lat			
GPS_Lon
Point_Code			-- Short one word code for the point
Description			-- Long descripton of the point
Valid_From
Valid_To			-- 2399 means it is valid
Create_Date
Change_Date

-- Points_Price
Point_Id			FK
Vehicle_Sub_Type_Id	FK   -- normally only one row of Vehicles_Sub_Types will match with a record here
							-- if more than one, take the one with the max price
Point_Price
Valid_From
Valid_To			-- 2399 means it is valid
Create_Date
Change_Date













