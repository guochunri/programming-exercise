# 给定一个数组包含 Hash，请过滤和排序

arr = [
  { "name" => "Peter", "age" => 30 },
  { "name" => "John", "age" => 15 },
  { "name" => "David", "age" => 45 },
  { "name" => "Steven", "age" => 22 },
  { "name" => "Vincent", "age" => 6 },
]

  def adult(arr)
    a = []
    arr.each do |h|
      if h["age"] >= 18
        a.push(h)
      end
    end
    a.sort_by { |i| i["age"] }
  end

answer = adult(arr)

puts "所有成年人，并由小到大: #{answer}"

# 答案应该是
#[
#  { "name" => "Steven", "age" => 22 },
#  { "name" => "Peter", "age" => 30 },
#  { "name" => "David", "age" => 45 }
#]
