create database riskanalysis;
use riskanalysis;

select * from details;

## Credit Card Analysis

#Total number of card issused
select sum(num_cards_issued) as total_cards from details;

#Number of clients having more than one cards
select count(multi_card_client) as clients from details
where multi_card_client="Yes";

#Clients with multiple type of cards
select limit_category as limit_type,count(*) as total from details
group by limit_type;

#Average credit card limit we provide
select avg(credit_limit) from details;

#clients with no chip of the card
select count(*) from details
where has_chip="no";

#clients with no chip and on the dark web
select count(*) from details
where has_chip="no" and card_on_dark_web="yes";

## Card Portfolio Analysis

#Distribution of card types
select card_type, count(*) as total from details
group by card_type;

#total card issused by brand 
select card_brand, sum(num_cards_issued) as total_cards from details
group by card_brand;

## Security and Risk Analysis

#count of cards on dark web
select count(*) from details
where card_on_dark_web="yes";

#Average age of a pin and account in years
select avg(pin_age) as avg_pinage , avg(account_age) as avg_accountage from details;

#count of cards with high credit limit, found on dark web,pin age > 5 and has no chip
select id, credit_limit from details 
where limit_category in ("high","premium") and pin_age>5 and has_chip="no" and card_on_dark_web="yes";

#top 5 high risk clients
select id, credit_limit from details 
where limit_category in ("high","premium") and pin_age>5 and has_chip="no"
order by credit_limit desc limit 5;


