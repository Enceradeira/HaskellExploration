type BookID = Int
type CustomerID = Int
type Title = String
type Authors = [String]

data BookInfo = Book BookID Title Authors 
                deriving (Show)

data MagazineInfo = Magazine BookID Title Authors 
		    deriving (Show)

bookID (Book id title authors) = id


data Customer = Customer {
					customerID :: CustomerID,
					customerName :: String,
					customerAddress :: String
				} deriving (Show)