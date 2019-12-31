SELECT ADDDATE(ADDDATE(LAST_DAY(ADDDATE(CURDATE(), INTERVAL -1 MONTH)),INTERVAL 1 DAY),
 INTERVAL 6- DAYOFWEEK(ADDDATE(LAST_DAY(ADDDATE(CURDATE(), INTERVAL -1 MONTH)),INTERVAL 1 DAY)) DAY) AS FIRSTFRIDAY,
 ADDDATE(ADDDATE(LAST_DAY(ADDDATE(CURDATE(), INTERVAL -1 MONTH)),INTERVAL 1 DAY),
 INTERVAL 13- DAYOFWEEK(ADDDATE(LAST_DAY(ADDDATE(CURDATE(), INTERVAL -1 MONTH)),INTERVAL 1 DAY)) DAY) AS SECONDDFRIDAY, 
 ADDDATE(ADDDATE(LAST_DAY(ADDDATE(CURDATE(), INTERVAL -1 MONTH)),INTERVAL 1 DAY),
 INTERVAL 20- DAYOFWEEK(ADDDATE(LAST_DAY(ADDDATE(CURDATE(), INTERVAL -1 MONTH)),INTERVAL 1 DAY)) DAY) AS THIRDFRIDAY, 
 ADDDATE(ADDDATE(LAST_DAY(ADDDATE(CURDATE(), INTERVAL -1 MONTH)),INTERVAL 1 DAY),
 INTERVAL 27- DAYOFWEEK(ADDDATE(LAST_DAY(ADDDATE(CURDATE(), INTERVAL -1 MONTH)),INTERVAL 1 DAY)) DAY) AS FOURTHFRIDAY,
 CASE 
    WHEN DATE_FORMAT(ADDDATE(ADDDATE(LAST_DAY(ADDDATE(CURDATE(), INTERVAL -1 MONTH)),INTERVAL 1 DAY),
 INTERVAL 34- DAYOFWEEK(ADDDATE(LAST_DAY(ADDDATE(CURDATE(), INTERVAL -1 MONTH)),INTERVAL 1 DAY)) DAY), '%m') = DATE_FORMAT(ADDDATE(CURDATE(),INTERVAL 1 MONTH), '%m') THEN '--'
 ELSE ADDDATE(ADDDATE(LAST_DAY(ADDDATE(CURDATE(), INTERVAL -1 MONTH)),INTERVAL 1 DAY),
 INTERVAL 34- DAYOFWEEK(ADDDATE(LAST_DAY(ADDDATE(CURDATE(), INTERVAL -1 MONTH)),INTERVAL 1 DAY)) DAY)
  END FIFTHFRIDAY