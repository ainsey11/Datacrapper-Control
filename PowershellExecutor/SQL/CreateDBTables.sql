CREATE TABLE vmware_power (
       ID INT IDENTITY(1,1) NOT NULL,
       PowerUsage Int NOT NULL,
	   Servername NvarChar(50) NOT NULL,
       timestamp DATETIME2 NOT NULL,
       PRIMARY KEY (ID)
);

Create table vmware_vmstats (
		ID INT IDENTITY(1,1) NOT NULL,
		Servername NvarChar(50) NOT NULL,
		VMname NvarChar(50) NOT NULL,
		timestamp DATETIME2 NOT NULL,
		);

Create table network_stats (
		ID INT IDENTITY(1,1) NOT NULL,
		Servername NvarChar(50) NOT NULL,
		Nodename NvarChar(50) NOT NULL,
		InterfaceName NvarChar(50) NOT NULL,
		InterfaceIn Int NOT NULL,
		InterfaceOut Int NOT NULL,
		timestamp DATETIME2 NOT NULL,
		);
CREATE TABLE login (
    UserID INT IDENTITY(1,1) NOT NULL,
    UserName varChar(512),
	Password varChar(512) NOT NULL,
    Firstname varchar(50) NOT NULL,
	Lastname varchar(50) not null,
	PRIMARY KEY (UserID)
);
