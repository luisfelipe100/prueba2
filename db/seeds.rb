user1 = User.new(name:"MyString1", email:"MyStrin1@gmail.com")
user1.save

user2 = User.new(name:"MyString2", email:"MyStrin2@gmail.com")
user2.save


work1 = Work.new(description:"MyText1", user:user1)
work1.save
work2 = Work.new(description:"MyText2", user:user1)
work2.save
work3 = Work.new(description:"MyText3", user:user2)
work3.save
