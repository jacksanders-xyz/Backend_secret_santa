User.destroy_all
Group.destroy_all


funGuys = Group.create({ 
    name: "funGuys", 
    password: "1234", 
    draw_date: "2020-12-20 11:59:59", 
    game_day: "2020-12-25 11:59:59" 
})
jack = User.create({
    first_name: "jack",
    last_name: "sanders",
    email_address: "123@fun.com",
    group_id: funGuys.id,
    interests: "having fun with my friendo's" 
})
ash = User.create({
    first_name: "ashley",
    last_name: "koett",
    email_address: "123@fun.com",
    group_id: funGuys.id,
    interests: "yaa" 
})
mug = User.create({
    first_name: "mug",
    last_name: "sanders",
    email_address: "123@fun.com",
    group_id: funGuys.id,
    interests: "yelling" 
})
mary = User.create({
    first_name: "mary",
    last_name: "sanders",
    email_address: "123@fun.com",
    group_id: funGuys.id,
    interests: "having stair time" 
})
kint = User.create({
    first_name: "kint",
    last_name: "sanders",
    email_address: "1aesfu23@fun.com",
    group_id: funGuys.id,
    interests: "having banister time" 
})