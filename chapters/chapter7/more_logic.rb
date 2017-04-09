i_am_nancy = true
i_am_purple = false
i_like_eggos = true
i_eat_slugs = false
puts i_am_nancy && i_like_eggos # true and true
puts i_like_eggos && i_eat_slugs # true and false
puts i_am_purple && i_like_eggos # false and true
puts i_am_purple && i_eat_slugs # false and false
puts
puts i_am_nancy || i_like_eggos # true and true
puts i_like_eggos || i_eat_slugs # true and false
puts i_am_purple || i_like_eggos # false and true
puts i_am_purple || i_eat_slugs # false and false
puts
puts !i_am_purple # false
puts !i_am_nancy # true
