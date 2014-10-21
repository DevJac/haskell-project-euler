module Problem19 where
import Data.Time (fromGregorian, Day)
import Data.Time.Calendar.WeekDate (toWeekDate)


main = print $ length $ filter sunday $ [fromGregorian y m 1 |
                                         y <- [1901..2000],
                                         m <- [1..12]]


sunday :: Day -> Bool
sunday d = let (_,_,a) = toWeekDate d in a == 7
