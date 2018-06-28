def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_name
"SELECT pr.title, SUM(pl.amount)
FROM  projects AS pr
LEFT JOIN pledges AS pl ON pr.id = pl.project_id
GROUP BY pr.title
ORDER BY pr.title;"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
"SELECT u.name, u.age, SUM(pl.amount)
FROM pledges AS pl
LEFT JOIN users AS u ON pl.user_id = u.id
GROUP BY u.name, u.age
ORDER BY u.name;"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
"SELECT pr.title, pr.funding_goal, SUM(pl.amount)
FROM projects AS pr
LEFT JOIN pledges AS pl ON pr.id = pl.project_id
GROUP BY pr.title, pr.funding_goal
HAVING SUM(pl.amount) > pr.funding_goal;"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name
"Write your SQL query Here"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
"Write your SQL query Here"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
"Write your SQL query Here"
end
