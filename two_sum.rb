def two_sum(nums, target)
    hash = {}
    ans = []
    nums.each do |num|
        i = 0
        hash[i] = target - num
        i+=1
    end
    nums.each do |num|
        if hash.has_vaule?(num) == true
            ans.push(hash.invert[num] )
            ans.push(num.index(num))
        end
    end
    return ans
end

def main()
  nums = [2,7,11,15]
  target = 9
  ans= []
  ans =two_sum(nums,target)
  ans.each do |num|
    puts num
  end 

end
