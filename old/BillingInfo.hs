
type CardNumber = Integer
type CardHolder = String
type Street = String
type PostCode = String
type City = String
type CustomerID = Int

data CreditCardType =	Visa | Mastercard
						deriving (Eq,Show)

data Address =	Address Street PostCode City
				deriving (Eq,Show)


data BillingInfo	= CreditCard CreditCardType CardNumber CardHolder Address
					| CashOnDelivery
					| Invoice CustomerID
					  deriving (Eq,Show)


formatCreditCard (CreditCard cardType number _ _) = show(cardType) ++ "|" ++ show(number) 
