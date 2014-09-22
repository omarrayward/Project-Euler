start_problem = (num)->
  console.log ""
  console.log "Euler ", num
  console.log ""

sieve = (num)->
  list_of_nums = (true for ele in [0..num])
  list_of_nums[0] = false
  list_of_nums[1] = false
  for ele, index in list_of_nums
    if ele is true
      new_index = index
      while new_index < list_of_nums.length
        new_index+= index
        list_of_nums[new_index] = false if list_of_nums[new_index]
  primes = []
  for elem , ind in list_of_nums
    primes.push ind if elem is true
  primes

# start_problem(1)
# sum_multiples_3_5 = (n) ->
#   return 'Invalid input, please provide an integer greater than 0' if typeof(n) isnt 'number' or n < 0
#   sum = 0
#   iter = 1
#   while iter < n
#     sum += iter if iter%3 is 0 or iter%5 is 0
#     iter++
#   sum

# sum_multiples_3_5_below_1000 = ->
#   sum_multiples_3_5(1000)

# console.log sum_multiples_3_5(-9)
# console.log sum_multiples_3_5("Hello")
# console.log sum_multiples_3_5_below_1000()

# start_problem(2)
# sum_even_fib_to_4_mill = ->
#   prev = 1
#   next_fib = 2
#   next_fib_calculator = ->
#     temp = next_fib
#     next_fib +=  prev
#     prev = temp
#   sum = 0
#   while next_fib < 4000000
#     sum += next_fib if next_fib%2 is 0
#     next_fib_calculator()
#   sum

# console.log sum_even_fib_to_4_mill()


# start_problem(3)
# largest_prime_factor = (num)->
#   return 1 if num is 1
#   iter = 2
#   largest_prime = undefined
#   new_num = num
#   while iter < new_num + 1
#     return new_num if iter is new_num
#     while new_num%iter is 0
#       largest_prime = iter
#       new_num = new_num / iter if new_num isnt 1
#     iter++
#   return largest_prime

# console.log largest_prime_factor(600851475143)

# start_problem(4)
# largest_palindrom_3_digits = ->
#   is_palindrome = (num) -> parseFloat(num.toString().split('').reverse().join('')) is num
#   all_num = [99..1000]
#   pal_list = []
#   for first_num in all_num
#     for second_num in all_num
#       num = first_num * second_num
#       pal_list.push num if is_palindrome num
#   Math.max pal_list...

# console.log largest_palindrom_3_digits()


# start_problem(5)
# smallest_multiple_20 = ->
#   result = 1
#   list= [1..20]
#   divisors = []
#   for iter in list
#       for e in divisors
#         iter /= e if iter%e is 0
#       divisors.push iter
#       result *= iter
#   result

# console.log smallest_multiple_20()


# start_problem(6)
# sum_square_diff = ->
#   top_num_list = [1..100]
#   sum_of_squares = 0
#   for e in top_num_list
#     sum_of_squares += e*e

#   Math.pow(101 * 50, 2) - sum_of_squares

# console.log sum_square_diff()

# start_problem(7)
# nth_prime = (num) ->
#   iter = 2
#   prime_list = [2]
#   while prime_list.length < num
#     new_iter = iter
#     for e in prime_list
#       if new_iter%e is 0
#         new_iter /= e
#         break
#     prime_list.push iter if iter is new_iter
#     iter++
#   prime_list[prime_list.length-1]

# console.log nth_prime(10001)

# start_problem(8)
# largest_product = (series, consecutive_num) ->
#   max_value = 1
#   series_list = series.split('')
#   iter_list = [0...series_list.length-consecutive_num]
#   for index in iter_list
#     max_value = Math.max(max_value, series_list[index..index+12].reduce (memo, element) -> memo*=parseInt element )

#   max_value

# console.log largest_product '7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450', 13

# start_problem(9)
# pythagorean_triplet = ->
#   possible_sides = [1..1000]
#   for a in possible_sides
#     for b in possible_sides
#       sum_of_pows = Math.pow(a,2) + Math.pow(b,2)
#       c = Math.pow(sum_of_pows, 0.5)
#       return a*b*c if a+b+c is 1000

# console.log pythagorean_triplet()


# # start_problem(10)
# sum_primes_below_2m = ->
#   iter = 2
#   prime_list = [2]
#   sum = 2
#   while iter < 2000000
#     new_iter = iter
#     for e in prime_list
#       if new_iter%e is 0
#         new_iter /= e
#         break
#     prime_list.push iter if iter is new_iter
#     sum += iter if iter is new_iter
#     iter++
#   sum

# console.log sum_primes_below_2m()

# start_problem(11)
# largest_prod_in_grid = (string_grid)->
#   grid = string_grid.split(' ')
#   max = 1
#   for num, index in grid
#     right = (grid[ele] for ele in [index..index+3] if index//20 is (index+3)//20)
#     down  = (grid[ele] for ele in [index, index + 20, index + 40, index + 60] if index+60 < 399)
#     diag1  = (grid[ele] for ele in [index, index + 21, index + 42, index+ 63] if index+ 63 < 399 and (index+ 21)//20 is (index//20) + 1 and (index+ 42)//20 is (index//20) + 2 and (index+ 63)//20 is (index//20) + 3  )
#     diag2  = (grid[ele] for ele in [index, index + 19, index + 38, index+ 57] if index+ 63 < 399 and (index+ 19)//20 is (index//20) + 1 and (index+ 38)//20 is (index//20) + 2 and (index+ 57)//20 is (index//20) + 3  )
#     max = Math.max max, (right.reduce (memo, num)-> memo*=parseInt num) if right
#     max = Math.max max, (down.reduce (memo, num)-> memo*=parseInt num) if down
#     max = Math.max max, (diag1.reduce (memo, num)-> memo*=parseInt num) if diag1
#     max = Math.max max, (diag2.reduce (memo, num)-> memo*=parseInt num) if diag2
#   max


# console.log largest_prod_in_grid("08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08
#                                   49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00
#                                   81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65
#                                   52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91
#                                   22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80
#                                   24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50
#                                   32 98 81 28 64 23 67 10 26 38 40 67 59 54 70 66 18 38 64 70
#                                   67 26 20 68 02 62 12 20 95 63 94 39 63 08 40 91 66 49 94 21
#                                   24 55 58 05 66 73 99 26 97 17 78 78 96 83 14 88 34 89 63 72
#                                   21 36 23 09 75 00 76 44 20 45 35 14 00 61 33 97 34 31 33 95
#                                   78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92
#                                   16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57
#                                   86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58
#                                   19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40
#                                   04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66
#                                   88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69
#                                   04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36
#                                   20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16
#                                   20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54
#                                   01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48")


# start_problem(12)
# highly_divisible_triangle = ->
#   counter = 2
#   triangular_number = 1
#   divisors_count = 0
#   while divisors_count < 500
#     divisors_count = 0
#     triangular_number += counter
#     counter++
#     sqrt = Math.sqrt triangular_number
#     for ele in [1..sqrt]
#       divisors_count += 2 if triangular_number%ele is 0
#     divisors_count-- if sqrt*sqrt is triangular_number

#   triangular_number

# console.log highly_divisible_triangle()

# start_problem(13)
# large_sum = (num)->
#   nums = num.split(' ')
#   result = []
#   iter = [49..0]
#   remaining = 0
#   for index in iter
#     big_sum = nums.reduce((memo, ele)->
#               memo+=parseInt(ele.split('')[index])
#             , remaining)
#     add_to_list = big_sum.toString().split('').reverse()
#     if index is 0 then result = result.concat add_to_list else result.push big_sum.toString().split('').reverse()[0]
#     remaining = parseInt big_sum/10
#   parseInt result.reverse()[0..9].join ''

# console.log large_sum("37107287533902102798797998220837590246510135740250
#                        46376937677490009712648124896970078050417018260538
                       # 74324986199524741059474233309513058123726617309629
                       # 91942213363574161572522430563301811072406154908250
                       # 23067588207539346171171980310421047513778063246676
                       # 89261670696623633820136378418383684178734361726757
                       # 28112879812849979408065481931592621691275889832738
                       # 44274228917432520321923589422876796487670272189318
                       # 47451445736001306439091167216856844588711603153276
                       # 70386486105843025439939619828917593665686757934951
                       # 62176457141856560629502157223196586755079324193331
                       # 64906352462741904929101432445813822663347944758178
                       # 92575867718337217661963751590579239728245598838407
                       # 58203565325359399008402633568948830189458628227828
                       # 80181199384826282014278194139940567587151170094390
                       # 35398664372827112653829987240784473053190104293586
                       # 86515506006295864861532075273371959191420517255829
                       # 71693888707715466499115593487603532921714970056938
                       # 54370070576826684624621495650076471787294438377604
                       # 53282654108756828443191190634694037855217779295145
                       # 36123272525000296071075082563815656710885258350721
                       # 45876576172410976447339110607218265236877223636045
                       # 17423706905851860660448207621209813287860733969412
                       # 81142660418086830619328460811191061556940512689692
                       # 51934325451728388641918047049293215058642563049483
                       # 62467221648435076201727918039944693004732956340691
                       # 15732444386908125794514089057706229429197107928209
                       # 55037687525678773091862540744969844508330393682126
                       # 18336384825330154686196124348767681297534375946515
                       # 80386287592878490201521685554828717201219257766954
                       # 78182833757993103614740356856449095527097864797581
                       # 16726320100436897842553539920931837441497806860984
                       # 48403098129077791799088218795327364475675590848030
                       # 87086987551392711854517078544161852424320693150332
                       # 59959406895756536782107074926966537676326235447210
                       # 69793950679652694742597709739166693763042633987085
                       # 41052684708299085211399427365734116182760315001271
                       # 65378607361501080857009149939512557028198746004375
                       # 35829035317434717326932123578154982629742552737307
                       # 94953759765105305946966067683156574377167401875275
                       # 88902802571733229619176668713819931811048770190271
                       # 25267680276078003013678680992525463401061632866526
                       # 36270218540497705585629946580636237993140746255962
                       # 24074486908231174977792365466257246923322810917141
                       # 91430288197103288597806669760892938638285025333403
                       # 34413065578016127815921815005561868836468420090470
                       # 23053081172816430487623791969842487255036638784583
                       # 11487696932154902810424020138335124462181441773470
                       # 63783299490636259666498587618221225225512486764533
                       # 67720186971698544312419572409913959008952310058822
                       # 95548255300263520781532296796249481641953868218774
                       # 76085327132285723110424803456124867697064507995236
                       # 37774242535411291684276865538926205024910326572967
                       # 23701913275725675285653248258265463092207058596522
                       # 29798860272258331913126375147341994889534765745501
                       # 18495701454879288984856827726077713721403798879715
                       # 38298203783031473527721580348144513491373226651381
                       # 34829543829199918180278916522431027392251122869539
                       # 40957953066405232632538044100059654939159879593635
                       # 29746152185502371307642255121183693803580388584903
                       # 41698116222072977186158236678424689157993532961922
                       # 62467957194401269043877107275048102390895523597457
                       # 23189706772547915061505504953922979530901129967519
                       # 86188088225875314529584099251203829009407770775672
                       # 11306739708304724483816533873502340845647058077308
                       # 82959174767140363198008187129011875491310547126581
                       # 97623331044818386269515456334926366572897563400500
                       # 42846280183517070527831839425882145521227251250327
                       # 55121603546981200581762165212827652751691296897789
                       # 32238195734329339946437501907836945765883352399886
                       # 75506164965184775180738168837861091527357929701337
                       # 62177842752192623401942399639168044983993173312731
                       # 32924185707147349566916674687634660915035914677504
                       # 99518671430235219628894890102423325116913619626622
                       # 73267460800591547471830798392868535206946944540724
                       # 76841822524674417161514036427982273348055556214818
                       # 97142617910342598647204516893989422179826088076852
                       # 87783646182799346313767754307809363333018982642090
                       # 10848802521674670883215120185883543223812876952786
                       # 71329612474782464538636993009049310363619763878039
                       # 62184073572399794223406235393808339651327408011116
                       # 66627891981488087797941876876144230030984490851411
                       # 60661826293682836764744779239180335110989069790714
                       # 85786944089552990653640447425576083659976645795096
                       # 66024396409905389607120198219976047599490197230297
                       # 64913982680032973156037120041377903785566085089252
                       # 16730939319872750275468906903707539413042652315011
                       # 94809377245048795150954100921645863754710598436791
                       # 78639167021187492431995700641917969777599028300699
                       # 15368713711936614952811305876380278410754449733078
                       # 40789923115535562561142322423255033685442488917353
                       # 44889911501440648020369068063960672322193204149535
                       # 41503128880339536053299340368006977710650566631954
                       # 81234880673210146739058568557934581403627822703280
                       # 82616570773948327592232845941706525094512325230608
                       # 22918802058777319719839450180888072429661980811197
                       # 77158542502016545090413245809786882778948721859617
                       # 72107838435069186155435662884062257473692284509516
                       # 20849603980134001723930671666823555245252804609722
                       # 53503534226472524250874054075591789781264330331690")


# start_problem(14)
# longest_collatz = (num)->
#   memo = []
#   max_count = 0
#   biggest_num = 1
#   collatz_count = (n) ->
#     return memo[n] if memo[n]
#     return 1 if n is 1
#     if n%2 is 0
#       memo[n] = 1 + collatz_count(n/2)
#     else
#       memo[n] =1 + collatz_count((n*3)+1)
#     return memo[n]
#   for ele in [1..1000000]
#     max_count = Math.max(max_count, collatz_count ele )
#     biggest_num = ele if max_count is collatz_count ele
#   biggest_num

# console.log longest_collatz()


# # start_problem(15)
# lattice_paths = (num)->
#   memo = {}
#   lattice = (m,n) ->
#     return memo[m+"_"+n] if memo[m+"_"+n]
#     return 1 if m is 0 or n is 0
#     memo[(m-1)+"_"+n] = lattice(m-1,n)
#     memo[m+"_"+(n-1)] = lattice(m,n-1)
#     return memo[(m-1)+"_"+n] + memo[m+"_"+(n-1)]
#   lattice(num, num)

# console.log lattice_paths(20)

# start_problem(16)
# power_digit_sum = ->
#   create_storage = (list)->
#     new_list = []
#     overflow = 0
#     for ele, index in list.reverse()
#       new_ele_in_list = ele + ele + overflow
#       new_list.push new_ele_in_list%10
#       if index is list.length-1 && new_ele_in_list > 9 then new_list.push(Math.floor(new_ele_in_list/10))
#       overflow = new_ele_in_list>9 ? 1 : 0
#     new_list.reverse()
#   iter = [2..1000]
#   num_in_array = [2]
#   for num in iter
#     num_in_array = create_storage(num_in_array)
#   num_in_array.reduce (memo, ele) => memo+=ele


# console.log power_digit_sum()


# start_problem(17)
# power_digit_sum = ->
#   create_storage = (list)->
#     new_list = []
#     overflow = 0
#     for ele, index in list.reverse()
#       new_ele_in_list = ele + ele + overflow
#       new_list.push new_ele_in_list%10
#       if index is list.length-1 && new_ele_in_list > 9 then new_list.push(Math.floor(new_ele_in_list/10))
#       overflow = new_ele_in_list>9 ? 1 : 0
#     new_list.reverse()
#   iter = [2..1000]
#   num_in_array = [2]
#   for num in iter
#     num_in_array = create_storage(num_in_array)
#   num_in_array.reduce (memo, ele) => memo+=ele


# console.log power_digit_sum()



# start_problem(17)

# num_letters_count = (n)->
#   num_to_string = (n)->
#     one_dig = {
#       '1': 'one',
#       '2': 'two',
#       '3': 'three',
#       '4': 'four',
#       '5': 'five',
#       '6': 'six',
#       '7': 'seven',
#       '8': 'eight',
#       '9': 'nine',
#       '10': 'ten',
#       '11': 'eleven',
#       '12': 'twelve',
#       '13': 'thirteen',
#       '14': 'fourteen',
#       '15': 'fifteen',
#       '16': 'sixteen',
#       '17': 'seventeen',
#       '18': 'eighteen',
#       '19': 'nineteen'
#     }
#     tens = {
#       '2': 'twenty',
#       '3': 'thirty',
#       '4': 'fourty',
#       '5': 'fifty',
#       '6': 'sixty',
#       '7': 'seventy',
#       '8': 'eighty',
#       '9': 'ninty'
#     }
#     num_string = ''
#     if n > 999
#       num_string += one_dig[Math.floor(n/1000).toString()] + ' thousand '
#       n = n%1000
#     if n > 99
#       num_string += one_dig[Math.floor(n/100).toString()] + ' hundred'
#       n = n%100
#       num_string += ' and ' if n isnt 0
#     if n > 19
#       num_string += tens[Math.floor(n/10).toString()] + ' '
#       n = n%10
#     if n > 0
#       num_string += one_dig[n.toString()]
#     num_string

#   total_string_count = 0
#   for num in [1..n]
#     total_string_count += num_to_string(num).replace(/\s/g, '').length
#   total_string_count

# console.log num_letters_count(1000)


# start_problem(18)
# max_path_sum = (tree)->
#   tree = (ele.trim().split(' ') for ele in tree.split(','))
#   max_sum = 0
#   transverse_tree = (tree, index, curr_sum)->
#     curr_sum += parseInt tree[index[0]][index[1]]
#     if index[0]+1>tree.length-1
#       if curr_sum > max_sum
#         max_sum = curr_sum
#         return max_sum
#     else
#       children = [[index[0]+1,index[1]],[index[0]+1,index[1]+1] ]
#       for child in children
#         transverse_tree(tree, child, curr_sum)
#   transverse_tree(tree, [0,0], max_sum)
#   max_sum

# console.log max_path_sum( "75,
#                           95 64,
#                           17 47 82,
#                           18 35 87 10,
#                           20 04 82 47 65,
#                           19 01 23 75 03 34,
#                           88 02 77 73 07 63 67,
#                           99 65 04 28 06 16 70 92,
#                           41 41 26 56 83 40 80 70 33,
#                           41 48 72 33 47 32 37 16 94 29,
#                           53 71 44 65 25 43 91 52 97 51 14,
#                           70 11 33 28 77 73 17 78 39 68 17 57,
#                           91 71 52 38 17 14 91 43 58 50 27 29 48,
#                           63 66 04 68 89 53 67 30 73 16 69 87 40 31,
#                           04 62 98 27 23 09 70 98 73 93 38 53 60 04 23")

# start_problem(19)
# counting_sundays = ->
#   days_in_month = {'Jan':31, 'Feb': 28, 'Mar':31, 'Apr':30, 'May':31, 'Jun': 30, 'Jul':31, 'Aug':31, 'Sep': 30, 'Oct': 31, 'Nov': 30, 'Dic':31}
#   num_sundays = 0
#   total_days = 366
#   for year in [1901..2000]
#     for month, days of days_in_month
#       num_sundays++ if total_days%7 is 0
#       total_days += days
#       if month is 'Feb' and year%400 is 0
#         total_days++
#       else if month is 'Feb' and year%100 is 0
#       else if month is 'Feb' and year%4 is 0
#         total_days++

#   num_sundays

# console.log counting_sundays()

# start_problem(20)
# sum_factorial = (n) ->
#   num_or_zero = (ele) -> if ele isnt undefined then ele else 0
#   string_to_array_of_nums = (num) -> num.split('').map (ele)-> return parseInt(ele)
#   sum_of_num_strings = (num1, num2) ->
#     rev_arr1 = string_to_array_of_nums(num1).reverse()
#     rev_arr2 = string_to_array_of_nums(num2).reverse()
#     iter = Math.max(rev_arr1.length, rev_arr2.length)
#     result = []
#     overflow = 0
#     for ele in [0..iter-1]
#       new_sum = num_or_zero(rev_arr1[ele]) + num_or_zero(rev_arr2[ele]) + overflow
#       result[ele] = new_sum%10
#       if ele is iter-1 && new_sum > 9 then result.push(Math.floor(new_sum/10))
#       overflow = new_sum>9 ? 1 : 0
#     result.reverse().join ''

#   mult_of_num_strings = (num1, num2) ->
#     constant = num2
#     for iter in [2..parseInt num1]
#       num2 = sum_of_num_strings(num2, constant)
#     num2

#   factorial_strings = (num) ->
#     return '1' if num is 1
#     mult_of_num_strings(num.toString(), factorial_strings(num-1))

#   arr = factorial_strings(n).split('')
#   arr.reduce( (memo, element) ->
#     memo += parseInt(element)
#   , 0)

# console.log sum_factorial(100)

# start_problem(21)
# ammicable_numbers = (largest_n)->
#   sum_of_divisors = (n)->
#     div = []
#     for num in [1..Math.floor(Math.sqrt(n))]
#       if n%num is 0
#         div.push(num)
#         div.push(n/num) if num*num isnt n and num isnt 1
#     div.reduce (memo, ele)-> memo+=ele
#   sum_of_amicable = 0
#   for ele in [2..largest_n]
#     sum1 = sum_of_divisors(ele)
#     sum2 = sum_of_divisors(sum1) if sum1 isnt 1 and sum1 isnt ele
#     sum_of_amicable+= ele + sum1 if sum2 is ele
#   sum_of_amicable/2

# console.log ammicable_numbers(10000)

# start_problem(22)
# names_scores = (names_list) ->
#   value_of_letters = {'A':1, 'B':2, 'C':3, 'D':4, 'E':5, 'F':6, 'G':7, 'H':8, 'I':9, 'J':10, 'K':11, 'L':12, 'M':13, 'N':14, 'O': 15, 'P':16, 'Q':17, 'R':18, 'S':19, 'T':20, 'U': 21, 'V': 22, 'W': 23, 'X': 24, 'Y': 25, 'Z': 26 }
#   sorted_names_list = names_list.sort()
#   multiplier = 0
#   value_of_word = (name) ->
#     name.split('').reduce (memo, letter) ->
#       memo += value_of_letters[letter]
#     , 0
#   sorted_names_list.reduce (memo, name) ->
#     multiplier++
#     memo += value_of_word(name)*multiplier
#   , 0



# console.log names_scores(["MARY","PATRICIA","LINDA","BARBARA","ELIZABETH","JENNIFER","MARIA","SUSAN","MARGARET","DOROTHY","LISA","NANCY","KAREN","BETTY","HELEN","SANDRA","DONNA","CAROL","RUTH","SHARON","MICHELLE","LAURA","SARAH","KIMBERLY","DEBORAH","JESSICA","SHIRLEY","CYNTHIA","ANGELA","MELISSA","BRENDA","AMY","ANNA","REBECCA","VIRGINIA","KATHLEEN","PAMELA","MARTHA","DEBRA","AMANDA","STEPHANIE","CAROLYN","CHRISTINE","MARIE","JANET","CATHERINE","FRANCES","ANN","JOYCE","DIANE","ALICE","JULIE","HEATHER","TERESA","DORIS","GLORIA","EVELYN","JEAN","CHERYL","MILDRED","KATHERINE","JOAN","ASHLEY","JUDITH","ROSE","JANICE","KELLY","NICOLE","JUDY","CHRISTINA","KATHY","THERESA","BEVERLY","DENISE","TAMMY","IRENE","JANE","LORI","RACHEL","MARILYN","ANDREA","KATHRYN","LOUISE","SARA","ANNE","JACQUELINE","WANDA","BONNIE","JULIA","RUBY","LOIS","TINA","PHYLLIS","NORMA","PAULA","DIANA","ANNIE","LILLIAN","EMILY","ROBIN","PEGGY","CRYSTAL","GLADYS","RITA","DAWN","CONNIE","FLORENCE","TRACY","EDNA","TIFFANY","CARMEN","ROSA","CINDY","GRACE","WENDY","VICTORIA","EDITH","KIM","SHERRY","SYLVIA","JOSEPHINE","THELMA","SHANNON","SHEILA","ETHEL","ELLEN","ELAINE","MARJORIE","CARRIE","CHARLOTTE","MONICA","ESTHER","PAULINE","EMMA","JUANITA","ANITA","RHONDA","HAZEL","AMBER","EVA","DEBBIE","APRIL","LESLIE","CLARA","LUCILLE","JAMIE","JOANNE","ELEANOR","VALERIE","DANIELLE","MEGAN","ALICIA","SUZANNE","MICHELE","GAIL","BERTHA","DARLENE","VERONICA","JILL","ERIN","GERALDINE","LAUREN","CATHY","JOANN","LORRAINE","LYNN","SALLY","REGINA","ERICA","BEATRICE","DOLORES","BERNICE","AUDREY","YVONNE","ANNETTE","JUNE","SAMANTHA","MARION","DANA","STACY","ANA","RENEE","IDA","VIVIAN","ROBERTA","HOLLY","BRITTANY","MELANIE","LORETTA","YOLANDA","JEANETTE","LAURIE","KATIE","KRISTEN","VANESSA","ALMA","SUE","ELSIE","BETH","JEANNE","VICKI","CARLA","TARA","ROSEMARY","EILEEN","TERRI","GERTRUDE","LUCY","TONYA","ELLA","STACEY","WILMA","GINA","KRISTIN","JESSIE","NATALIE","AGNES","VERA","WILLIE","CHARLENE","BESSIE","DELORES","MELINDA","PEARL","ARLENE","MAUREEN","COLLEEN","ALLISON","TAMARA","JOY","GEORGIA","CONSTANCE","LILLIE","CLAUDIA","JACKIE","MARCIA","TANYA","NELLIE","MINNIE","MARLENE","HEIDI","GLENDA","LYDIA","VIOLA","COURTNEY","MARIAN","STELLA","CAROLINE","DORA","JO","VICKIE","MATTIE","TERRY","MAXINE","IRMA","MABEL","MARSHA","MYRTLE","LENA","CHRISTY","DEANNA","PATSY","HILDA","GWENDOLYN","JENNIE","NORA","MARGIE","NINA","CASSANDRA","LEAH","PENNY","KAY","PRISCILLA","NAOMI","CAROLE","BRANDY","OLGA","BILLIE","DIANNE","TRACEY","LEONA","JENNY","FELICIA","SONIA","MIRIAM","VELMA","BECKY","BOBBIE","VIOLET","KRISTINA","TONI","MISTY","MAE","SHELLY","DAISY","RAMONA","SHERRI","ERIKA","KATRINA","CLAIRE","LINDSEY","LINDSAY","GENEVA","GUADALUPE","BELINDA","MARGARITA","SHERYL","CORA","FAYE","ADA","NATASHA","SABRINA","ISABEL","MARGUERITE","HATTIE","HARRIET","MOLLY","CECILIA","KRISTI","BRANDI","BLANCHE","SANDY","ROSIE","JOANNA","IRIS","EUNICE","ANGIE","INEZ","LYNDA","MADELINE","AMELIA","ALBERTA","GENEVIEVE","MONIQUE","JODI","JANIE","MAGGIE","KAYLA","SONYA","JAN","LEE","KRISTINE","CANDACE","FANNIE","MARYANN","OPAL","ALISON","YVETTE","MELODY","LUZ","SUSIE","OLIVIA","FLORA","SHELLEY","KRISTY","MAMIE","LULA","LOLA","VERNA","BEULAH","ANTOINETTE","CANDICE","JUANA","JEANNETTE","PAM","KELLI","HANNAH","WHITNEY","BRIDGET","KARLA","CELIA","LATOYA","PATTY","SHELIA","GAYLE","DELLA","VICKY","LYNNE","SHERI","MARIANNE","KARA","JACQUELYN","ERMA","BLANCA","MYRA","LETICIA","PAT","KRISTA","ROXANNE","ANGELICA","JOHNNIE","ROBYN","FRANCIS","ADRIENNE","ROSALIE","ALEXANDRA","BROOKE","BETHANY","SADIE","BERNADETTE","TRACI","JODY","KENDRA","JASMINE","NICHOLE","RACHAEL","CHELSEA","MABLE","ERNESTINE","MURIEL","MARCELLA","ELENA","KRYSTAL","ANGELINA","NADINE","KARI","ESTELLE","DIANNA","PAULETTE","LORA","MONA","DOREEN","ROSEMARIE","ANGEL","DESIREE","ANTONIA","HOPE","GINGER","JANIS","BETSY","CHRISTIE","FREDA","MERCEDES","MEREDITH","LYNETTE","TERI","CRISTINA","EULA","LEIGH","MEGHAN","SOPHIA","ELOISE","ROCHELLE","GRETCHEN","CECELIA","RAQUEL","HENRIETTA","ALYSSA","JANA","KELLEY","GWEN","KERRY","JENNA","TRICIA","LAVERNE","OLIVE","ALEXIS","TASHA","SILVIA","ELVIRA","CASEY","DELIA","SOPHIE","KATE","PATTI","LORENA","KELLIE","SONJA","LILA","LANA","DARLA","MAY","MINDY","ESSIE","MANDY","LORENE","ELSA","JOSEFINA","JEANNIE","MIRANDA","DIXIE","LUCIA","MARTA","FAITH","LELA","JOHANNA","SHARI","CAMILLE","TAMI","SHAWNA","ELISA","EBONY","MELBA","ORA","NETTIE","TABITHA","OLLIE","JAIME","WINIFRED","KRISTIE","MARINA","ALISHA","AIMEE","RENA","MYRNA","MARLA","TAMMIE","LATASHA","BONITA","PATRICE","RONDA","SHERRIE","ADDIE","FRANCINE","DELORIS","STACIE","ADRIANA","CHERI","SHELBY","ABIGAIL","CELESTE","JEWEL","CARA","ADELE","REBEKAH","LUCINDA","DORTHY","CHRIS","EFFIE","TRINA","REBA","SHAWN","SALLIE","AURORA","LENORA","ETTA","LOTTIE","KERRI","TRISHA","NIKKI","ESTELLA","FRANCISCA","JOSIE","TRACIE","MARISSA","KARIN","BRITTNEY","JANELLE","LOURDES","LAUREL","HELENE","FERN","ELVA","CORINNE","KELSEY","INA","BETTIE","ELISABETH","AIDA","CAITLIN","INGRID","IVA","EUGENIA","CHRISTA","GOLDIE","CASSIE","MAUDE","JENIFER","THERESE","FRANKIE","DENA","LORNA","JANETTE","LATONYA","CANDY","MORGAN","CONSUELO","TAMIKA","ROSETTA","DEBORA","CHERIE","POLLY","DINA","JEWELL","FAY","JILLIAN","DOROTHEA","NELL","TRUDY","ESPERANZA","PATRICA","KIMBERLEY","SHANNA","HELENA","CAROLINA","CLEO","STEFANIE","ROSARIO","OLA","JANINE","MOLLIE","LUPE","ALISA","LOU","MARIBEL","SUSANNE","BETTE","SUSANA","ELISE","CECILE","ISABELLE","LESLEY","JOCELYN","PAIGE","JONI","RACHELLE","LEOLA","DAPHNE","ALTA","ESTER","PETRA","GRACIELA","IMOGENE","JOLENE","KEISHA","LACEY","GLENNA","GABRIELA","KERI","URSULA","LIZZIE","KIRSTEN","SHANA","ADELINE","MAYRA","JAYNE","JACLYN","GRACIE","SONDRA","CARMELA","MARISA","ROSALIND","CHARITY","TONIA","BEATRIZ","MARISOL","CLARICE","JEANINE","SHEENA","ANGELINE","FRIEDA","LILY","ROBBIE","SHAUNA","MILLIE","CLAUDETTE","CATHLEEN","ANGELIA","GABRIELLE","AUTUMN","KATHARINE","SUMMER","JODIE","STACI","LEA","CHRISTI","JIMMIE","JUSTINE","ELMA","LUELLA","MARGRET","DOMINIQUE","SOCORRO","RENE","MARTINA","MARGO","MAVIS","CALLIE","BOBBI","MARITZA","LUCILE","LEANNE","JEANNINE","DEANA","AILEEN","LORIE","LADONNA","WILLA","MANUELA","GALE","SELMA","DOLLY","SYBIL","ABBY","LARA","DALE","IVY","DEE","WINNIE","MARCY","LUISA","JERI","MAGDALENA","OFELIA","MEAGAN","AUDRA","MATILDA","LEILA","CORNELIA","BIANCA","SIMONE","BETTYE","RANDI","VIRGIE","LATISHA","BARBRA","GEORGINA","ELIZA","LEANN","BRIDGETTE","RHODA","HALEY","ADELA","NOLA","BERNADINE","FLOSSIE","ILA","GRETA","RUTHIE","NELDA","MINERVA","LILLY","TERRIE","LETHA","HILARY","ESTELA","VALARIE","BRIANNA","ROSALYN","EARLINE","CATALINA","AVA","MIA","CLARISSA","LIDIA","CORRINE","ALEXANDRIA","CONCEPCION","TIA","SHARRON","RAE","DONA","ERICKA","JAMI","ELNORA","CHANDRA","LENORE","NEVA","MARYLOU","MELISA","TABATHA","SERENA","AVIS","ALLIE","SOFIA","JEANIE","ODESSA","NANNIE","HARRIETT","LORAINE","PENELOPE","MILAGROS","EMILIA","BENITA","ALLYSON","ASHLEE","TANIA","TOMMIE","ESMERALDA","KARINA","EVE","PEARLIE","ZELMA","MALINDA","NOREEN","TAMEKA","SAUNDRA","HILLARY","AMIE","ALTHEA","ROSALINDA","JORDAN","LILIA","ALANA","GAY","CLARE","ALEJANDRA","ELINOR","MICHAEL","LORRIE","JERRI","DARCY","EARNESTINE","CARMELLA","TAYLOR","NOEMI","MARCIE","LIZA","ANNABELLE","LOUISA","EARLENE","MALLORY","CARLENE","NITA","SELENA","TANISHA","KATY","JULIANNE","JOHN","LAKISHA","EDWINA","MARICELA","MARGERY","KENYA","DOLLIE","ROXIE","ROSLYN","KATHRINE","NANETTE","CHARMAINE","LAVONNE","ILENE","KRIS","TAMMI","SUZETTE","CORINE","KAYE","JERRY","MERLE","CHRYSTAL","LINA","DEANNE","LILIAN","JULIANA","ALINE","LUANN","KASEY","MARYANNE","EVANGELINE","COLETTE","MELVA","LAWANDA","YESENIA","NADIA","MADGE","KATHIE","EDDIE","OPHELIA","VALERIA","NONA","MITZI","MARI","GEORGETTE","CLAUDINE","FRAN","ALISSA","ROSEANN","LAKEISHA","SUSANNA","REVA","DEIDRE","CHASITY","SHEREE","CARLY","JAMES","ELVIA","ALYCE","DEIRDRE","GENA","BRIANA","ARACELI","KATELYN","ROSANNE","WENDI","TESSA","BERTA","MARVA","IMELDA","MARIETTA","MARCI","LEONOR","ARLINE","SASHA","MADELYN","JANNA","JULIETTE","DEENA","AURELIA","JOSEFA","AUGUSTA","LILIANA","YOUNG","CHRISTIAN","LESSIE","AMALIA","SAVANNAH","ANASTASIA","VILMA","NATALIA","ROSELLA","LYNNETTE","CORINA","ALFREDA","LEANNA","CAREY","AMPARO","COLEEN","TAMRA","AISHA","WILDA","KARYN","CHERRY","QUEEN","MAURA","MAI","EVANGELINA","ROSANNA","HALLIE","ERNA","ENID","MARIANA","LACY","JULIET","JACKLYN","FREIDA","MADELEINE","MARA","HESTER","CATHRYN","LELIA","CASANDRA","BRIDGETT","ANGELITA","JANNIE","DIONNE","ANNMARIE","KATINA","BERYL","PHOEBE","MILLICENT","KATHERYN","DIANN","CARISSA","MARYELLEN","LIZ","LAURI","HELGA","GILDA","ADRIAN","RHEA","MARQUITA","HOLLIE","TISHA","TAMERA","ANGELIQUE","FRANCESCA","BRITNEY","KAITLIN","LOLITA","FLORINE","ROWENA","REYNA","TWILA","FANNY","JANELL","INES","CONCETTA","BERTIE","ALBA","BRIGITTE","ALYSON","VONDA","PANSY","ELBA","NOELLE","LETITIA","KITTY","DEANN","BRANDIE","LOUELLA","LETA","FELECIA","SHARLENE","LESA","BEVERLEY","ROBERT","ISABELLA","HERMINIA","TERRA","CELINA","TORI","OCTAVIA","JADE","DENICE","GERMAINE","SIERRA","MICHELL","CORTNEY","NELLY","DORETHA","SYDNEY","DEIDRA","MONIKA","LASHONDA","JUDI","CHELSEY","ANTIONETTE","MARGOT","BOBBY","ADELAIDE","NAN","LEEANN","ELISHA","DESSIE","LIBBY","KATHI","GAYLA","LATANYA","MINA","MELLISA","KIMBERLEE","JASMIN","RENAE","ZELDA","ELDA","MA","JUSTINA","GUSSIE","EMILIE","CAMILLA","ABBIE","ROCIO","KAITLYN","JESSE","EDYTHE","ASHLEIGH","SELINA","LAKESHA","GERI","ALLENE","PAMALA","MICHAELA","DAYNA","CARYN","ROSALIA","SUN","JACQULINE","REBECA","MARYBETH","KRYSTLE","IOLA","DOTTIE","BENNIE","BELLE","AUBREY","GRISELDA","ERNESTINA","ELIDA","ADRIANNE","DEMETRIA","DELMA","CHONG","JAQUELINE","DESTINY","ARLEEN","VIRGINA","RETHA","FATIMA","TILLIE","ELEANORE","CARI","TREVA","BIRDIE","WILHELMINA","ROSALEE","MAURINE","LATRICE","YONG","JENA","TARYN","ELIA","DEBBY","MAUDIE","JEANNA","DELILAH","CATRINA","SHONDA","HORTENCIA","THEODORA","TERESITA","ROBBIN","DANETTE","MARYJANE","FREDDIE","DELPHINE","BRIANNE","NILDA","DANNA","CINDI","BESS","IONA","HANNA","ARIEL","WINONA","VIDA","ROSITA","MARIANNA","WILLIAM","RACHEAL","GUILLERMINA","ELOISA","CELESTINE","CAREN","MALISSA","LONA","CHANTEL","SHELLIE","MARISELA","LEORA","AGATHA","SOLEDAD","MIGDALIA","IVETTE","CHRISTEN","ATHENA","JANEL","CHLOE","VEDA","PATTIE","TESSIE","TERA","MARILYNN","LUCRETIA","KARRIE","DINAH","DANIELA","ALECIA","ADELINA","VERNICE","SHIELA","PORTIA","MERRY","LASHAWN","DEVON","DARA","TAWANA","OMA","VERDA","CHRISTIN","ALENE","ZELLA","SANDI","RAFAELA","MAYA","KIRA","CANDIDA","ALVINA","SUZAN","SHAYLA","LYN","LETTIE","ALVA","SAMATHA","ORALIA","MATILDE","MADONNA","LARISSA","VESTA","RENITA","INDIA","DELOIS","SHANDA","PHILLIS","LORRI","ERLINDA","CRUZ","CATHRINE","BARB","ZOE","ISABELL","IONE","GISELA","CHARLIE","VALENCIA","ROXANNA","MAYME","KISHA","ELLIE","MELLISSA","DORRIS","DALIA","BELLA","ANNETTA","ZOILA","RETA","REINA","LAURETTA","KYLIE","CHRISTAL","PILAR","CHARLA","ELISSA","TIFFANI","TANA","PAULINA","LEOTA","BREANNA","JAYME","CARMEL","VERNELL","TOMASA","MANDI","DOMINGA","SANTA","MELODIE","LURA","ALEXA","TAMELA","RYAN","MIRNA","KERRIE","VENUS","NOEL","FELICITA","CRISTY","CARMELITA","BERNIECE","ANNEMARIE","TIARA","ROSEANNE","MISSY","CORI","ROXANA","PRICILLA","KRISTAL","JUNG","ELYSE","HAYDEE","ALETHA","BETTINA","MARGE","GILLIAN","FILOMENA","CHARLES","ZENAIDA","HARRIETTE","CARIDAD","VADA","UNA","ARETHA","PEARLINE","MARJORY","MARCELA","FLOR","EVETTE","ELOUISE","ALINA","TRINIDAD","DAVID","DAMARIS","CATHARINE","CARROLL","BELVA","NAKIA","MARLENA","LUANNE","LORINE","KARON","DORENE","DANITA","BRENNA","TATIANA","SAMMIE","LOUANN","LOREN","JULIANNA","ANDRIA","PHILOMENA","LUCILA","LEONORA","DOVIE","ROMONA","MIMI","JACQUELIN","GAYE","TONJA","MISTI","JOE","GENE","CHASTITY","STACIA","ROXANN","MICAELA","NIKITA","MEI","VELDA","MARLYS","JOHNNA","AURA","LAVERN","IVONNE","HAYLEY","NICKI","MAJORIE","HERLINDA","GEORGE","ALPHA","YADIRA","PERLA","GREGORIA","DANIEL","ANTONETTE","SHELLI","MOZELLE","MARIAH","JOELLE","CORDELIA","JOSETTE","CHIQUITA","TRISTA","LOUIS","LAQUITA","GEORGIANA","CANDI","SHANON","LONNIE","HILDEGARD","CECIL","VALENTINA","STEPHANY","MAGDA","KAROL","GERRY","GABRIELLA","TIANA","ROMA","RICHELLE","RAY","PRINCESS","OLETA","JACQUE","IDELLA","ALAINA","SUZANNA","JOVITA","BLAIR","TOSHA","RAVEN","NEREIDA","MARLYN","KYLA","JOSEPH","DELFINA","TENA","STEPHENIE","SABINA","NATHALIE","MARCELLE","GERTIE","DARLEEN","THEA","SHARONDA","SHANTEL","BELEN","VENESSA","ROSALINA","ONA","GENOVEVA","COREY","CLEMENTINE","ROSALBA","RENATE","RENATA","MI","IVORY","GEORGIANNA","FLOY","DORCAS","ARIANA","TYRA","THEDA","MARIAM","JULI","JESICA","DONNIE","VIKKI","VERLA","ROSELYN","MELVINA","JANNETTE","GINNY","DEBRAH","CORRIE","ASIA","VIOLETA","MYRTIS","LATRICIA","COLLETTE","CHARLEEN","ANISSA","VIVIANA","TWYLA","PRECIOUS","NEDRA","LATONIA","LAN","HELLEN","FABIOLA","ANNAMARIE","ADELL","SHARYN","CHANTAL","NIKI","MAUD","LIZETTE","LINDY","KIA","KESHA","JEANA","DANELLE","CHARLINE","CHANEL","CARROL","VALORIE","LIA","DORTHA","CRISTAL","SUNNY","LEONE","LEILANI","GERRI","DEBI","ANDRA","KESHIA","IMA","EULALIA","EASTER","DULCE","NATIVIDAD","LINNIE","KAMI","GEORGIE","CATINA","BROOK","ALDA","WINNIFRED","SHARLA","RUTHANN","MEAGHAN","MAGDALENE","LISSETTE","ADELAIDA","VENITA","TRENA","SHIRLENE","SHAMEKA","ELIZEBETH","DIAN","SHANTA","MICKEY","LATOSHA","CARLOTTA","WINDY","SOON","ROSINA","MARIANN","LEISA","JONNIE","DAWNA","CATHIE","BILLY","ASTRID","SIDNEY","LAUREEN","JANEEN","HOLLI","FAWN","VICKEY","TERESSA","SHANTE","RUBYE","MARCELINA","CHANDA","CARY","TERESE","SCARLETT","MARTY","MARNIE","LULU","LISETTE","JENIFFER","ELENOR","DORINDA","DONITA","CARMAN","BERNITA","ALTAGRACIA","ALETA","ADRIANNA","ZORAIDA","RONNIE","NICOLA","LYNDSEY","KENDALL","JANINA","CHRISSY","AMI","STARLA","PHYLIS","PHUONG","KYRA","CHARISSE","BLANCH","SANJUANITA","RONA","NANCI","MARILEE","MARANDA","CORY","BRIGETTE","SANJUANA","MARITA","KASSANDRA","JOYCELYN","IRA","FELIPA","CHELSIE","BONNY","MIREYA","LORENZA","KYONG","ILEANA","CANDELARIA","TONY","TOBY","SHERIE","OK","MARK","LUCIE","LEATRICE","LAKESHIA","GERDA","EDIE","BAMBI","MARYLIN","LAVON","HORTENSE","GARNET","EVIE","TRESSA","SHAYNA","LAVINA","KYUNG","JEANETTA","SHERRILL","SHARA","PHYLISS","MITTIE","ANABEL","ALESIA","THUY","TAWANDA","RICHARD","JOANIE","TIFFANIE","LASHANDA","KARISSA","ENRIQUETA","DARIA","DANIELLA","CORINNA","ALANNA","ABBEY","ROXANE","ROSEANNA","MAGNOLIA","LIDA","KYLE","JOELLEN","ERA","CORAL","CARLEEN","TRESA","PEGGIE","NOVELLA","NILA","MAYBELLE","JENELLE","CARINA","NOVA","MELINA","MARQUERITE","MARGARETTE","JOSEPHINA","EVONNE","DEVIN","CINTHIA","ALBINA","TOYA","TAWNYA","SHERITA","SANTOS","MYRIAM","LIZABETH","LISE","KEELY","JENNI","GISELLE","CHERYLE","ARDITH","ARDIS","ALESHA","ADRIANE","SHAINA","LINNEA","KAROLYN","HONG","FLORIDA","FELISHA","DORI","DARCI","ARTIE","ARMIDA","ZOLA","XIOMARA","VERGIE","SHAMIKA","NENA","NANNETTE","MAXIE","LOVIE","JEANE","JAIMIE","INGE","FARRAH","ELAINA","CAITLYN","STARR","FELICITAS","CHERLY","CARYL","YOLONDA","YASMIN","TEENA","PRUDENCE","PENNIE","NYDIA","MACKENZIE","ORPHA","MARVEL","LIZBETH","LAURETTE","JERRIE","HERMELINDA","CAROLEE","TIERRA","MIRIAN","META","MELONY","KORI","JENNETTE","JAMILA","ENA","ANH","YOSHIKO","SUSANNAH","SALINA","RHIANNON","JOLEEN","CRISTINE","ASHTON","ARACELY","TOMEKA","SHALONDA","MARTI","LACIE","KALA","JADA","ILSE","HAILEY","BRITTANI","ZONA","SYBLE","SHERRYL","RANDY","NIDIA","MARLO","KANDICE","KANDI","DEB","DEAN","AMERICA","ALYCIA","TOMMY","RONNA","NORENE","MERCY","JOSE","INGEBORG","GIOVANNA","GEMMA","CHRISTEL","AUDRY","ZORA","VITA","VAN","TRISH","STEPHAINE","SHIRLEE","SHANIKA","MELONIE","MAZIE","JAZMIN","INGA","HOA","HETTIE","GERALYN","FONDA","ESTRELLA","ADELLA","SU","SARITA","RINA","MILISSA","MARIBETH","GOLDA","EVON","ETHELYN","ENEDINA","CHERISE","CHANA","VELVA","TAWANNA","SADE","MIRTA","LI","KARIE","JACINTA","ELNA","DAVINA","CIERRA","ASHLIE","ALBERTHA","TANESHA","STEPHANI","NELLE","MINDI","LU","LORINDA","LARUE","FLORENE","DEMETRA","DEDRA","CIARA","CHANTELLE","ASHLY","SUZY","ROSALVA","NOELIA","LYDA","LEATHA","KRYSTYNA","KRISTAN","KARRI","DARLINE","DARCIE","CINDA","CHEYENNE","CHERRIE","AWILDA","ALMEDA","ROLANDA","LANETTE","JERILYN","GISELE","EVALYN","CYNDI","CLETA","CARIN","ZINA","ZENA","VELIA","TANIKA","PAUL","CHARISSA","THOMAS","TALIA","MARGARETE","LAVONDA","KAYLEE","KATHLENE","JONNA","IRENA","ILONA","IDALIA","CANDIS","CANDANCE","BRANDEE","ANITRA","ALIDA","SIGRID","NICOLETTE","MARYJO","LINETTE","HEDWIG","CHRISTIANA","CASSIDY","ALEXIA","TRESSIE","MODESTA","LUPITA","LITA","GLADIS","EVELIA","DAVIDA","CHERRI","CECILY","ASHELY","ANNABEL","AGUSTINA","WANITA","SHIRLY","ROSAURA","HULDA","EUN","BAILEY","YETTA","VERONA","THOMASINA","SIBYL","SHANNAN","MECHELLE","LUE","LEANDRA","LANI","KYLEE","KANDY","JOLYNN","FERNE","EBONI","CORENE","ALYSIA","ZULA","NADA","MOIRA","LYNDSAY","LORRETTA","JUAN","JAMMIE","HORTENSIA","GAYNELL","CAMERON","ADRIA","VINA","VICENTA","TANGELA","STEPHINE","NORINE","NELLA","LIANA","LESLEE","KIMBERELY","ILIANA","GLORY","FELICA","EMOGENE","ELFRIEDE","EDEN","EARTHA","CARMA","BEA","OCIE","MARRY","LENNIE","KIARA","JACALYN","CARLOTA","ARIELLE","YU","STAR","OTILIA","KIRSTIN","KACEY","JOHNETTA","JOEY","JOETTA","JERALDINE","JAUNITA","ELANA","DORTHEA","CAMI","AMADA","ADELIA","VERNITA","TAMAR","SIOBHAN","RENEA","RASHIDA","OUIDA","ODELL","NILSA","MERYL","KRISTYN","JULIETA","DANICA","BREANNE","AUREA","ANGLEA","SHERRON","ODETTE","MALIA","LORELEI","LIN","LEESA","KENNA","KATHLYN","FIONA","CHARLETTE","SUZIE","SHANTELL","SABRA","RACQUEL","MYONG","MIRA","MARTINE","LUCIENNE","LAVADA","JULIANN","JOHNIE","ELVERA","DELPHIA","CLAIR","CHRISTIANE","CHAROLETTE","CARRI","AUGUSTINE","ASHA","ANGELLA","PAOLA","NINFA","LEDA","LAI","EDA","SUNSHINE","STEFANI","SHANELL","PALMA","MACHELLE","LISSA","KECIA","KATHRYNE","KARLENE","JULISSA","JETTIE","JENNIFFER","HUI","CORRINA","CHRISTOPHER","CAROLANN","ALENA","TESS","ROSARIA","MYRTICE","MARYLEE","LIANE","KENYATTA","JUDIE","JANEY","IN","ELMIRA","ELDORA","DENNA","CRISTI","CATHI","ZAIDA","VONNIE","VIVA","VERNIE","ROSALINE","MARIELA","LUCIANA","LESLI","KARAN","FELICE","DENEEN","ADINA","WYNONA","TARSHA","SHERON","SHASTA","SHANITA","SHANI","SHANDRA","RANDA","PINKIE","PARIS","NELIDA","MARILOU","LYLA","LAURENE","LACI","JOI","JANENE","DOROTHA","DANIELE","DANI","CAROLYNN","CARLYN","BERENICE","AYESHA","ANNELIESE","ALETHEA","THERSA","TAMIKO","RUFINA","OLIVA","MOZELL","MARYLYN","MADISON","KRISTIAN","KATHYRN","KASANDRA","KANDACE","JANAE","GABRIEL","DOMENICA","DEBBRA","DANNIELLE","CHUN","BUFFY","BARBIE","ARCELIA","AJA","ZENOBIA","SHAREN","SHAREE","PATRICK","PAGE","MY","LAVINIA","KUM","KACIE","JACKELINE","HUONG","FELISA","EMELIA","ELEANORA","CYTHIA","CRISTIN","CLYDE","CLARIBEL","CARON","ANASTACIA","ZULMA","ZANDRA","YOKO","TENISHA","SUSANN","SHERILYN","SHAY","SHAWANDA","SABINE","ROMANA","MATHILDA","LINSEY","KEIKO","JOANA","ISELA","GRETTA","GEORGETTA","EUGENIE","DUSTY","DESIRAE","DELORA","CORAZON","ANTONINA","ANIKA","WILLENE","TRACEE","TAMATHA","REGAN","NICHELLE","MICKIE","MAEGAN","LUANA","LANITA","KELSIE","EDELMIRA","BREE","AFTON","TEODORA","TAMIE","SHENA","MEG","LINH","KELI","KACI","DANYELLE","BRITT","ARLETTE","ALBERTINE","ADELLE","TIFFINY","STORMY","SIMONA","NUMBERS","NICOLASA","NICHOL","NIA","NAKISHA","MEE","MAIRA","LOREEN","KIZZY","JOHNNY","JAY","FALLON","CHRISTENE","BOBBYE","ANTHONY","YING","VINCENZA","TANJA","RUBIE","RONI","QUEENIE","MARGARETT","KIMBERLI","IRMGARD","IDELL","HILMA","EVELINA","ESTA","EMILEE","DENNISE","DANIA","CARL","CARIE","ANTONIO","WAI","SANG","RISA","RIKKI","PARTICIA","MUI","MASAKO","MARIO","LUVENIA","LOREE","LONI","LIEN","KEVIN","GIGI","FLORENCIA","DORIAN","DENITA","DALLAS","CHI","BILLYE","ALEXANDER","TOMIKA","SHARITA","RANA","NIKOLE","NEOMA","MARGARITE","MADALYN","LUCINA","LAILA","KALI","JENETTE","GABRIELE","EVELYNE","ELENORA","CLEMENTINA","ALEJANDRINA","ZULEMA","VIOLETTE","VANNESSA","THRESA","RETTA","PIA","PATIENCE","NOELLA","NICKIE","JONELL","DELTA","CHUNG","CHAYA","CAMELIA","BETHEL","ANYA","ANDREW","THANH","SUZANN","SPRING","SHU","MILA","LILLA","LAVERNA","KEESHA","KATTIE","GIA","GEORGENE","EVELINE","ESTELL","ELIZBETH","VIVIENNE","VALLIE","TRUDIE","STEPHANE","MICHEL","MAGALY","MADIE","KENYETTA","KARREN","JANETTA","HERMINE","HARMONY","DRUCILLA","DEBBI","CELESTINA","CANDIE","BRITNI","BECKIE","AMINA","ZITA","YUN","YOLANDE","VIVIEN","VERNETTA","TRUDI","SOMMER","PEARLE","PATRINA","OSSIE","NICOLLE","LOYCE","LETTY","LARISA","KATHARINA","JOSELYN","JONELLE","JENELL","IESHA","HEIDE","FLORINDA","FLORENTINA","FLO","ELODIA","DORINE","BRUNILDA","BRIGID","ASHLI","ARDELLA","TWANA","THU","TARAH","SUNG","SHEA","SHAVON","SHANE","SERINA","RAYNA","RAMONITA","NGA","MARGURITE","LUCRECIA","KOURTNEY","KATI","JESUS","JESENIA","DIAMOND","CRISTA","AYANA","ALICA","ALIA","VINNIE","SUELLEN","ROMELIA","RACHELL","PIPER","OLYMPIA","MICHIKO","KATHALEEN","JOLIE","JESSI","JANESSA","HANA","HA","ELEASE","CARLETTA","BRITANY","SHONA","SALOME","ROSAMOND","REGENA","RAINA","NGOC","NELIA","LOUVENIA","LESIA","LATRINA","LATICIA","LARHONDA","JINA","JACKI","HOLLIS","HOLLEY","EMMY","DEEANN","CORETTA","ARNETTA","VELVET","THALIA","SHANICE","NETA","MIKKI","MICKI","LONNA","LEANA","LASHUNDA","KILEY","JOYE","JACQULYN","IGNACIA","HYUN","HIROKO","HENRY","HENRIETTE","ELAYNE","DELINDA","DARNELL","DAHLIA","COREEN","CONSUELA","CONCHITA","CELINE","BABETTE","AYANNA","ANETTE","ALBERTINA","SKYE","SHAWNEE","SHANEKA","QUIANA","PAMELIA","MIN","MERRI","MERLENE","MARGIT","KIESHA","KIERA","KAYLENE","JODEE","JENISE","ERLENE","EMMIE","ELSE","DARYL","DALILA","DAISEY","CODY","CASIE","BELIA","BABARA","VERSIE","VANESA","SHELBA","SHAWNDA","SAM","NORMAN","NIKIA","NAOMA","MARNA","MARGERET","MADALINE","LAWANA","KINDRA","JUTTA","JAZMINE","JANETT","HANNELORE","GLENDORA","GERTRUD","GARNETT","FREEDA","FREDERICA","FLORANCE","FLAVIA","DENNIS","CARLINE","BEVERLEE","ANJANETTE","VALDA","TRINITY","TAMALA","STEVIE","SHONNA","SHA","SARINA","ONEIDA","MICAH","MERILYN","MARLEEN","LURLINE","LENNA","KATHERIN","JIN","JENI","HAE","GRACIA","GLADY","FARAH","ERIC","ENOLA","EMA","DOMINQUE","DEVONA","DELANA","CECILA","CAPRICE","ALYSHA","ALI","ALETHIA","VENA","THERESIA","TAWNY","SONG","SHAKIRA","SAMARA","SACHIKO","RACHELE","PAMELLA","NICKY","MARNI","MARIEL","MAREN","MALISA","LIGIA","LERA","LATORIA","LARAE","KIMBER","KATHERN","KAREY","JENNEFER","JANETH","HALINA","FREDIA","DELISA","DEBROAH","CIERA","CHIN","ANGELIKA","ANDREE","ALTHA","YEN","VIVAN","TERRESA","TANNA","SUK","SUDIE","SOO","SIGNE","SALENA","RONNI","REBBECCA","MYRTIE","MCKENZIE","MALIKA","MAIDA","LOAN","LEONARDA","KAYLEIGH","FRANCE","ETHYL","ELLYN","DAYLE","CAMMIE","BRITTNI","BIRGIT","AVELINA","ASUNCION","ARIANNA","AKIKO","VENICE","TYESHA","TONIE","TIESHA","TAKISHA","STEFFANIE","SINDY","SANTANA","MEGHANN","MANDA","MACIE","LADY","KELLYE","KELLEE","JOSLYN","JASON","INGER","INDIRA","GLINDA","GLENNIS","FERNANDA","FAUSTINA","ENEIDA","ELICIA","DOT","DIGNA","DELL","ARLETTA","ANDRE","WILLIA","TAMMARA","TABETHA","SHERRELL","SARI","REFUGIO","REBBECA","PAULETTA","NIEVES","NATOSHA","NAKITA","MAMMIE","KENISHA","KAZUKO","KASSIE","GARY","EARLEAN","DAPHINE","CORLISS","CLOTILDE","CAROLYNE","BERNETTA","AUGUSTINA","AUDREA","ANNIS","ANNABELL","YAN","TENNILLE","TAMICA","SELENE","SEAN","ROSANA","REGENIA","QIANA","MARKITA","MACY","LEEANNE","LAURINE","KYM","JESSENIA","JANITA","GEORGINE","GENIE","EMIKO","ELVIE","DEANDRA","DAGMAR","CORIE","COLLEN","CHERISH","ROMAINE","PORSHA","PEARLENE","MICHELINE","MERNA","MARGORIE","MARGARETTA","LORE","KENNETH","JENINE","HERMINA","FREDERICKA","ELKE","DRUSILLA","DORATHY","DIONE","DESIRE","CELENA","BRIGIDA","ANGELES","ALLEGRA","THEO","TAMEKIA","SYNTHIA","STEPHEN","SOOK","SLYVIA","ROSANN","REATHA","RAYE","MARQUETTA","MARGART","LING","LAYLA","KYMBERLY","KIANA","KAYLEEN","KATLYN","KARMEN","JOELLA","IRINA","EMELDA","ELENI","DETRA","CLEMMIE","CHERYLL","CHANTELL","CATHEY","ARNITA","ARLA","ANGLE","ANGELIC","ALYSE","ZOFIA","THOMASINE","TENNIE","SON","SHERLY","SHERLEY","SHARYL","REMEDIOS","PETRINA","NICKOLE","MYUNG","MYRLE","MOZELLA","LOUANNE","LISHA","LATIA","LANE","KRYSTA","JULIENNE","JOEL","JEANENE","JACQUALINE","ISAURA","GWENDA","EARLEEN","DONALD","CLEOPATRA","CARLIE","AUDIE","ANTONIETTA","ALISE","ALEX","VERDELL","VAL","TYLER","TOMOKO","THAO","TALISHA","STEVEN","SO","SHEMIKA","SHAUN","SCARLET","SAVANNA","SANTINA","ROSIA","RAEANN","ODILIA","NANA","MINNA","MAGAN","LYNELLE","LE","KARMA","JOEANN","IVANA","INELL","ILANA","HYE","HONEY","HEE","GUDRUN","FRANK","DREAMA","CRISSY","CHANTE","CARMELINA","ARVILLA","ARTHUR","ANNAMAE","ALVERA","ALEIDA","AARON","YEE","YANIRA","VANDA","TIANNA","TAM","STEFANIA","SHIRA","PERRY","NICOL","NANCIE","MONSERRATE","MINH","MELYNDA","MELANY","MATTHEW","LOVELLA","LAURE","KIRBY","KACY","JACQUELYNN","HYON","GERTHA","FRANCISCO","ELIANA","CHRISTENA","CHRISTEEN","CHARISE","CATERINA","CARLEY","CANDYCE","ARLENA","AMMIE","YANG","WILLETTE","VANITA","TUYET","TINY","SYREETA","SILVA","SCOTT","RONALD","PENNEY","NYLA","MICHAL","MAURICE","MARYAM","MARYA","MAGEN","LUDIE","LOMA","LIVIA","LANELL","KIMBERLIE","JULEE","DONETTA","DIEDRA","DENISHA","DEANE","DAWNE","CLARINE","CHERRYL","BRONWYN","BRANDON","ALLA","VALERY","TONDA","SUEANN","SORAYA","SHOSHANA","SHELA","SHARLEEN","SHANELLE","NERISSA","MICHEAL","MERIDITH","MELLIE","MAYE","MAPLE","MAGARET","LUIS","LILI","LEONILA","LEONIE","LEEANNA","LAVONIA","LAVERA","KRISTEL","KATHEY","KATHE","JUSTIN","JULIAN","JIMMY","JANN","ILDA","HILDRED","HILDEGARDE","GENIA","FUMIKO","EVELIN","ERMELINDA","ELLY","DUNG","DOLORIS","DIONNA","DANAE","BERNEICE","ANNICE","ALIX","VERENA","VERDIE","TRISTAN","SHAWNNA","SHAWANA","SHAUNNA","ROZELLA","RANDEE","RANAE","MILAGRO","LYNELL","LUISE","LOUIE","LOIDA","LISBETH","KARLEEN","JUNITA","JONA","ISIS","HYACINTH","HEDY","GWENN","ETHELENE","ERLINE","EDWARD","DONYA","DOMONIQUE","DELICIA","DANNETTE","CICELY","BRANDA","BLYTHE","BETHANN","ASHLYN","ANNALEE","ALLINE","YUKO","VELLA","TRANG","TOWANDA","TESHA","SHERLYN","NARCISA","MIGUELINA","MERI","MAYBELL","MARLANA","MARGUERITA","MADLYN","LUNA","LORY","LORIANN","LIBERTY","LEONORE","LEIGHANN","LAURICE","LATESHA","LARONDA","KATRICE","KASIE","KARL","KALEY","JADWIGA","GLENNIE","GEARLDINE","FRANCINA","EPIFANIA","DYAN","DORIE","DIEDRE","DENESE","DEMETRICE","DELENA","DARBY","CRISTIE","CLEORA","CATARINA","CARISA","BERNIE","BARBERA","ALMETA","TRULA","TEREASA","SOLANGE","SHEILAH","SHAVONNE","SANORA","ROCHELL","MATHILDE","MARGARETA","MAIA","LYNSEY","LAWANNA","LAUNA","KENA","KEENA","KATIA","JAMEY","GLYNDA","GAYLENE","ELVINA","ELANOR","DANUTA","DANIKA","CRISTEN","CORDIE","COLETTA","CLARITA","CARMON","BRYNN","AZUCENA","AUNDREA","ANGELE","YI","WALTER","VERLIE","VERLENE","TAMESHA","SILVANA","SEBRINA","SAMIRA","REDA","RAYLENE","PENNI","PANDORA","NORAH","NOMA","MIREILLE","MELISSIA","MARYALICE","LARAINE","KIMBERY","KARYL","KARINE","KAM","JOLANDA","JOHANA","JESUSA","JALEESA","JAE","JACQUELYNE","IRISH","ILUMINADA","HILARIA","HANH","GENNIE","FRANCIE","FLORETTA","EXIE","EDDA","DREMA","DELPHA","BEV","BARBAR","ASSUNTA","ARDELL","ANNALISA","ALISIA","YUKIKO","YOLANDO","WONDA","WEI","WALTRAUD","VETA","TEQUILA","TEMEKA","TAMEIKA","SHIRLEEN","SHENITA","PIEDAD","OZELLA","MIRTHA","MARILU","KIMIKO","JULIANE","JENICE","JEN","JANAY","JACQUILINE","HILDE","FE","FAE","EVAN","EUGENE","ELOIS","ECHO","DEVORAH","CHAU","BRINDA","BETSEY","ARMINDA","ARACELIS","APRYL","ANNETT","ALISHIA","VEOLA","USHA","TOSHIKO","THEOLA","TASHIA","TALITHA","SHERY","RUDY","RENETTA","REIKO","RASHEEDA","OMEGA","OBDULIA","MIKA","MELAINE","MEGGAN","MARTIN","MARLEN","MARGET","MARCELINE","MANA","MAGDALEN","LIBRADA","LEZLIE","LEXIE","LATASHIA","LASANDRA","KELLE","ISIDRA","ISA","INOCENCIA","GWYN","FRANCOISE","ERMINIA","ERINN","DIMPLE","DEVORA","CRISELDA","ARMANDA","ARIE","ARIANE","ANGELO","ANGELENA","ALLEN","ALIZA","ADRIENE","ADALINE","XOCHITL","TWANNA","TRAN","TOMIKO","TAMISHA","TAISHA","SUSY","SIU","RUTHA","ROXY","RHONA","RAYMOND","OTHA","NORIKO","NATASHIA","MERRIE","MELVIN","MARINDA","MARIKO","MARGERT","LORIS","LIZZETTE","LEISHA","KAILA","KA","JOANNIE","JERRICA","JENE","JANNET","JANEE","JACINDA","HERTA","ELENORE","DORETTA","DELAINE","DANIELL","CLAUDIE","CHINA","BRITTA","APOLONIA","AMBERLY","ALEASE","YURI","YUK","WEN","WANETA","UTE","TOMI","SHARRI","SANDIE","ROSELLE","REYNALDA","RAGUEL","PHYLICIA","PATRIA","OLIMPIA","ODELIA","MITZIE","MITCHELL","MISS","MINDA","MIGNON","MICA","MENDY","MARIVEL","MAILE","LYNETTA","LAVETTE","LAURYN","LATRISHA","LAKIESHA","KIERSTEN","KARY","JOSPHINE","JOLYN","JETTA","JANISE","JACQUIE","IVELISSE","GLYNIS","GIANNA","GAYNELLE","EMERALD","DEMETRIUS","DANYELL","DANILLE","DACIA","CORALEE","CHER","CEOLA","BRETT","BELL","ARIANNE","ALESHIA","YUNG","WILLIEMAE","TROY","TRINH","THORA","TAI","SVETLANA","SHERIKA","SHEMEKA","SHAUNDA","ROSELINE","RICKI","MELDA","MALLIE","LAVONNA","LATINA","LARRY","LAQUANDA","LALA","LACHELLE","KLARA","KANDIS","JOHNA","JEANMARIE","JAYE","HANG","GRAYCE","GERTUDE","EMERITA","EBONIE","CLORINDA","CHING","CHERY","CAROLA","BREANN","BLOSSOM","BERNARDINE","BECKI","ARLETHA","ARGELIA","ARA","ALITA","YULANDA","YON","YESSENIA","TOBI","TASIA","SYLVIE","SHIRL","SHIRELY","SHERIDAN","SHELLA","SHANTELLE","SACHA","ROYCE","REBECKA","REAGAN","PROVIDENCIA","PAULENE","MISHA","MIKI","MARLINE","MARICA","LORITA","LATOYIA","LASONYA","KERSTIN","KENDA","KEITHA","KATHRIN","JAYMIE","JACK","GRICELDA","GINETTE","ERYN","ELINA","ELFRIEDA","DANYEL","CHEREE","CHANELLE","BARRIE","AVERY","AURORE","ANNAMARIA","ALLEEN","AILENE","AIDE","YASMINE","VASHTI","VALENTINE","TREASA","TORY","TIFFANEY","SHERYLL","SHARIE","SHANAE","SAU","RAISA","PA","NEDA","MITSUKO","MIRELLA","MILDA","MARYANNA","MARAGRET","MABELLE","LUETTA","LORINA","LETISHA","LATARSHA","LANELLE","LAJUANA","KRISSY","KARLY","KARENA","JON","JESSIKA","JERICA","JEANELLE","JANUARY","JALISA","JACELYN","IZOLA","IVEY","GREGORY","EUNA","ETHA","DREW","DOMITILA","DOMINICA","DAINA","CREOLA","CARLI","CAMIE","BUNNY","BRITTNY","ASHANTI","ANISHA","ALEEN","ADAH","YASUKO","WINTER","VIKI","VALRIE","TONA","TINISHA","THI","TERISA","TATUM","TANEKA","SIMONNE","SHALANDA","SERITA","RESSIE","REFUGIA","PAZ","OLENE","NA","MERRILL","MARGHERITA","MANDIE","MAN","MAIRE","LYNDIA","LUCI","LORRIANE","LORETA","LEONIA","LAVONA","LASHAWNDA","LAKIA","KYOKO","KRYSTINA","KRYSTEN","KENIA","KELSI","JUDE","JEANICE","ISOBEL","GEORGIANN","GENNY","FELICIDAD","EILENE","DEON","DELOISE","DEEDEE","DANNIE","CONCEPTION","CLORA","CHERILYN","CHANG","CALANDRA","BERRY","ARMANDINA","ANISA","ULA","TIMOTHY","TIERA","THERESSA","STEPHANIA","SIMA","SHYLA","SHONTA","SHERA","SHAQUITA","SHALA","SAMMY","ROSSANA","NOHEMI","NERY","MORIAH","MELITA","MELIDA","MELANI","MARYLYNN","MARISHA","MARIETTE","MALORIE","MADELENE","LUDIVINA","LORIA","LORETTE","LORALEE","LIANNE","LEON","LAVENIA","LAURINDA","LASHON","KIT","KIMI","KEILA","KATELYNN","KAI","JONE","JOANE","JI","JAYNA","JANELLA","JA","HUE","HERTHA","FRANCENE","ELINORE","DESPINA","DELSIE","DEEDRA","CLEMENCIA","CARRY","CAROLIN","CARLOS","BULAH","BRITTANIE","BOK","BLONDELL","BIBI","BEAULAH","BEATA","ANNITA","AGRIPINA","VIRGEN","VALENE","UN","TWANDA","TOMMYE","TOI","TARRA","TARI","TAMMERA","SHAKIA","SADYE","RUTHANNE","ROCHEL","RIVKA","PURA","NENITA","NATISHA","MING","MERRILEE","MELODEE","MARVIS","LUCILLA","LEENA","LAVETA","LARITA","LANIE","KEREN","ILEEN","GEORGEANN","GENNA","GENESIS","FRIDA","EWA","EUFEMIA","EMELY","ELA","EDYTH","DEONNA","DEADRA","DARLENA","CHANELL","CHAN","CATHERN","CASSONDRA","CASSAUNDRA","BERNARDA","BERNA","ARLINDA","ANAMARIA","ALBERT","WESLEY","VERTIE","VALERI","TORRI","TATYANA","STASIA","SHERISE","SHERILL","SEASON","SCOTTIE","SANDA","RUTHE","ROSY","ROBERTO","ROBBI","RANEE","QUYEN","PEARLY","PALMIRA","ONITA","NISHA","NIESHA","NIDA","NEVADA","NAM","MERLYN","MAYOLA","MARYLOUISE","MARYLAND","MARX","MARTH","MARGENE","MADELAINE","LONDA","LEONTINE","LEOMA","LEIA","LAWRENCE","LAURALEE","LANORA","LAKITA","KIYOKO","KETURAH","KATELIN","KAREEN","JONIE","JOHNETTE","JENEE","JEANETT","IZETTA","HIEDI","HEIKE","HASSIE","HAROLD","GIUSEPPINA","GEORGANN","FIDELA","FERNANDE","ELWANDA","ELLAMAE","ELIZ","DUSTI","DOTTY","CYNDY","CORALIE","CELESTA","ARGENTINA","ALVERTA","XENIA","WAVA","VANETTA","TORRIE","TASHINA","TANDY","TAMBRA","TAMA","STEPANIE","SHILA","SHAUNTA","SHARAN","SHANIQUA","SHAE","SETSUKO","SERAFINA","SANDEE","ROSAMARIA","PRISCILA","OLINDA","NADENE","MUOI","MICHELINA","MERCEDEZ","MARYROSE","MARIN","MARCENE","MAO","MAGALI","MAFALDA","LOGAN","LINN","LANNIE","KAYCE","KAROLINE","KAMILAH","KAMALA","JUSTA","JOLINE","JENNINE","JACQUETTA","IRAIDA","GERALD","GEORGEANNA","FRANCHESCA","FAIRY","EMELINE","ELANE","EHTEL","EARLIE","DULCIE","DALENE","CRIS","CLASSIE","CHERE","CHARIS","CAROYLN","CARMINA","CARITA","BRIAN","BETHANIE","AYAKO","ARICA","AN","ALYSA","ALESSANDRA","AKILAH","ADRIEN","ZETTA","YOULANDA","YELENA","YAHAIRA","XUAN","WENDOLYN","VICTOR","TIJUANA","TERRELL","TERINA","TERESIA","SUZI","SUNDAY","SHERELL","SHAVONDA","SHAUNTE","SHARDA","SHAKITA","SENA","RYANN","RUBI","RIVA","REGINIA","REA","RACHAL","PARTHENIA","PAMULA","MONNIE","MONET","MICHAELE","MELIA","MARINE","MALKA","MAISHA","LISANDRA","LEO","LEKISHA","LEAN","LAURENCE","LAKENDRA","KRYSTIN","KORTNEY","KIZZIE","KITTIE","KERA","KENDAL","KEMBERLY","KANISHA","JULENE","JULE","JOSHUA","JOHANNE","JEFFREY","JAMEE","HAN","HALLEY","GIDGET","GALINA","FREDRICKA","FLETA","FATIMAH","EUSEBIA","ELZA","ELEONORE","DORTHEY","DORIA","DONELLA","DINORAH","DELORSE","CLARETHA","CHRISTINIA","CHARLYN","BONG","BELKIS","AZZIE","ANDERA","AIKO","ADENA","YER","YAJAIRA","WAN","VANIA","ULRIKE","TOSHIA","TIFANY","STEFANY","SHIZUE","SHENIKA","SHAWANNA","SHAROLYN","SHARILYN","SHAQUANA","SHANTAY","SEE","ROZANNE","ROSELEE","RICKIE","REMONA","REANNA","RAELENE","QUINN","PHUNG","PETRONILA","NATACHA","NANCEY","MYRL","MIYOKO","MIESHA","MERIDETH","MARVELLA","MARQUITTA","MARHTA","MARCHELLE","LIZETH","LIBBIE","LAHOMA","LADAWN","KINA","KATHELEEN","KATHARYN","KARISA","KALEIGH","JUNIE","JULIEANN","JOHNSIE","JANEAN","JAIMEE","JACKQUELINE","HISAKO","HERMA","HELAINE","GWYNETH","GLENN","GITA","EUSTOLIA","EMELINA","ELIN","EDRIS","DONNETTE","DONNETTA","DIERDRE","DENAE","DARCEL","CLAUDE","CLARISA","CINDERELLA","CHIA","CHARLESETTA","CHARITA","CELSA","CASSY","CASSI","CARLEE","BRUNA","BRITTANEY","BRANDE","BILLI","BAO","ANTONETTA","ANGLA","ANGELYN","ANALISA","ALANE","WENONA","WENDIE","VERONIQUE","VANNESA","TOBIE","TEMPIE","SUMIKO","SULEMA","SPARKLE","SOMER","SHEBA","SHAYNE","SHARICE","SHANEL","SHALON","SAGE","ROY","ROSIO","ROSELIA","RENAY","REMA","REENA","PORSCHE","PING","PEG","OZIE","ORETHA","ORALEE","ODA","NU","NGAN","NAKESHA","MILLY","MARYBELLE","MARLIN","MARIS","MARGRETT","MARAGARET","MANIE","LURLENE","LILLIA","LIESELOTTE","LAVELLE","LASHAUNDA","LAKEESHA","KEITH","KAYCEE","KALYN","JOYA","JOETTE","JENAE","JANIECE","ILLA","GRISEL","GLAYDS","GENEVIE","GALA","FREDDA","FRED","ELMER","ELEONOR","DEBERA","DEANDREA","DAN","CORRINNE","CORDIA","CONTESSA","COLENE","CLEOTILDE","CHARLOTT","CHANTAY","CECILLE","BEATRIS","AZALEE","ARLEAN","ARDATH","ANJELICA","ANJA","ALFREDIA","ALEISHA","ADAM","ZADA","YUONNE","XIAO","WILLODEAN","WHITLEY","VENNIE","VANNA","TYISHA","TOVA","TORIE","TONISHA","TILDA","TIEN","TEMPLE","SIRENA","SHERRIL","SHANTI","SHAN","SENAIDA","SAMELLA","ROBBYN","RENDA","REITA","PHEBE","PAULITA","NOBUKO","NGUYET","NEOMI","MOON","MIKAELA","MELANIA","MAXIMINA","MARG","MAISIE","LYNNA","LILLI","LAYNE","LASHAUN","LAKENYA","LAEL","KIRSTIE","KATHLINE","KASHA","KARLYN","KARIMA","JOVAN","JOSEFINE","JENNELL","JACQUI","JACKELYN","HYO","HIEN","GRAZYNA","FLORRIE","FLORIA","ELEONORA","DWANA","DORLA","DONG","DELMY","DEJA","DEDE","DANN","CRYSTA","CLELIA","CLARIS","CLARENCE","CHIEKO","CHERLYN","CHERELLE","CHARMAIN","CHARA","CAMMY","BEE","ARNETTE","ARDELLE","ANNIKA","AMIEE","AMEE","ALLENA","YVONE","YUKI","YOSHIE","YEVETTE","YAEL","WILLETTA","VONCILE","VENETTA","TULA","TONETTE","TIMIKA","TEMIKA","TELMA","TEISHA","TAREN","TA","STACEE","SHIN","SHAWNTA","SATURNINA","RICARDA","POK","PASTY","ONIE","NUBIA","MORA","MIKE","MARIELLE","MARIELLA","MARIANELA","MARDELL","MANY","LUANNA","LOISE","LISABETH","LINDSY","LILLIANA","LILLIAM","LELAH","LEIGHA","LEANORA","LANG","KRISTEEN","KHALILAH","KEELEY","KANDRA","JUNKO","JOAQUINA","JERLENE","JANI","JAMIKA","JAME","HSIU","HERMILA","GOLDEN","GENEVIVE","EVIA","EUGENA","EMMALINE","ELFREDA","ELENE","DONETTE","DELCIE","DEEANNA","DARCEY","CUC","CLARINDA","CIRA","CHAE","CELINDA","CATHERYN","CATHERIN","CASIMIRA","CARMELIA","CAMELLIA","BREANA","BOBETTE","BERNARDINA","BEBE","BASILIA","ARLYNE","AMAL","ALAYNA","ZONIA","ZENIA","YURIKO","YAEKO","WYNELL","WILLOW","WILLENA","VERNIA","TU","TRAVIS","TORA","TERRILYN","TERICA","TENESHA","TAWNA","TAJUANA","TAINA","STEPHNIE","SONA","SOL","SINA","SHONDRA","SHIZUKO","SHERLENE","SHERICE","SHARIKA","ROSSIE","ROSENA","RORY","RIMA","RIA","RHEBA","RENNA","PETER","NATALYA","NANCEE","MELODI","MEDA","MAXIMA","MATHA","MARKETTA","MARICRUZ","MARCELENE","MALVINA","LUBA","LOUETTA","LEIDA","LECIA","LAURAN","LASHAWNA","LAINE","KHADIJAH","KATERINE","KASI","KALLIE","JULIETTA","JESUSITA","JESTINE","JESSIA","JEREMY","JEFFIE","JANYCE","ISADORA","GEORGIANNE","FIDELIA","EVITA","EURA","EULAH","ESTEFANA","ELSY","ELIZABET","ELADIA","DODIE","DION","DIA","DENISSE","DELORAS","DELILA","DAYSI","DAKOTA","CURTIS","CRYSTLE","CONCHA","COLBY","CLARETTA","CHU","CHRISTIA","CHARLSIE","CHARLENA","CARYLON","BETTYANN","ASLEY","ASHLEA","AMIRA","AI","AGUEDA","AGNUS","YUETTE","VINITA","VICTORINA","TYNISHA","TREENA","TOCCARA","TISH","THOMASENA","TEGAN","SOILA","SHILOH","SHENNA","SHARMAINE","SHANTAE","SHANDI","SEPTEMBER","SARAN","SARAI","SANA","SAMUEL","SALLEY","ROSETTE","ROLANDE","REGINE","OTELIA","OSCAR","OLEVIA","NICHOLLE","NECOLE","NAIDA","MYRTA","MYESHA","MITSUE","MINTA","MERTIE","MARGY","MAHALIA","MADALENE","LOVE","LOURA","LOREAN","LEWIS","LESHA","LEONIDA","LENITA","LAVONE","LASHELL","LASHANDRA","LAMONICA","KIMBRA","KATHERINA","KARRY","KANESHA","JULIO","JONG","JENEVA","JAQUELYN","HWA","GILMA","GHISLAINE","GERTRUDIS","FRANSISCA","FERMINA","ETTIE","ETSUKO","ELLIS","ELLAN","ELIDIA","EDRA","DORETHEA","DOREATHA","DENYSE","DENNY","DEETTA","DAINE","CYRSTAL","CORRIN","CAYLA","CARLITA","CAMILA","BURMA","BULA","BUENA","BLAKE","BARABARA","AVRIL","AUSTIN","ALAINE","ZANA","WILHEMINA","WANETTA","VIRGIL","VI","VERONIKA","VERNON","VERLINE","VASILIKI","TONITA","TISA","TEOFILA","TAYNA","TAUNYA","TANDRA","TAKAKO","SUNNI","SUANNE","SIXTA","SHARELL","SEEMA","RUSSELL","ROSENDA","ROBENA","RAYMONDE","PEI","PAMILA","OZELL","NEIDA","NEELY","MISTIE","MICHA","MERISSA","MAURITA","MARYLN","MARYETTA","MARSHALL","MARCELL","MALENA","MAKEDA","MADDIE","LOVETTA","LOURIE","LORRINE","LORILEE","LESTER","LAURENA","LASHAY","LARRAINE","LAREE","LACRESHA","KRISTLE","KRISHNA","KEVA","KEIRA","KAROLE","JOIE","JINNY","JEANNETTA","JAMA","HEIDY","GILBERTE","GEMA","FAVIOLA","EVELYNN","ENDA","ELLI","ELLENA","DIVINA","DAGNY","COLLENE","CODI","CINDIE","CHASSIDY","CHASIDY","CATRICE","CATHERINA","CASSEY","CAROLL","CARLENA","CANDRA","CALISTA","BRYANNA","BRITTENY","BEULA","BARI","AUDRIE","AUDRIA","ARDELIA","ANNELLE","ANGILA","ALONA","ALLYN","DOUGLAS","ROGER","JONATHAN","RALPH","NICHOLAS","BENJAMIN","BRUCE","HARRY","WAYNE","STEVE","HOWARD","ERNEST","PHILLIP","TODD","CRAIG","ALAN","PHILIP","EARL","DANNY","BRYAN","STANLEY","LEONARD","NATHAN","MANUEL","RODNEY","MARVIN","VINCENT","JEFFERY","JEFF","CHAD","JACOB","ALFRED","BRADLEY","HERBERT","FREDERICK","EDWIN","DON","RICKY","RANDALL","BARRY","BERNARD","LEROY","MARCUS","THEODORE","CLIFFORD","MIGUEL","JIM","TOM","CALVIN","BILL","LLOYD","DEREK","WARREN","DARRELL","JEROME","FLOYD","ALVIN","TIM","GORDON","GREG","JORGE","DUSTIN","PEDRO","DERRICK","ZACHARY","HERMAN","GLEN","HECTOR","RICARDO","RICK","BRENT","RAMON","GILBERT","MARC","REGINALD","RUBEN","NATHANIEL","RAFAEL","EDGAR","MILTON","RAUL","BEN","CHESTER","DUANE","FRANKLIN","BRAD","RON","ROLAND","ARNOLD","HARVEY","JARED","ERIK","DARRYL","NEIL","JAVIER","FERNANDO","CLINTON","TED","MATHEW","TYRONE","DARREN","LANCE","KURT","ALLAN","NELSON","GUY","CLAYTON","HUGH","MAX","DWAYNE","DWIGHT","ARMANDO","FELIX","EVERETT","IAN","WALLACE","KEN","BOB","ALFREDO","ALBERTO","DAVE","IVAN","BYRON","ISAAC","MORRIS","CLIFTON","WILLARD","ROSS","ANDY","SALVADOR","KIRK","SERGIO","SETH","KENT","TERRANCE","EDUARDO","TERRENCE","ENRIQUE","WADE","STUART","FREDRICK","ARTURO","ALEJANDRO","NICK","LUTHER","WENDELL","JEREMIAH","JULIUS","OTIS","TREVOR","OLIVER","LUKE","HOMER","GERARD","DOUG","KENNY","HUBERT","LYLE","MATT","ALFONSO","ORLANDO","REX","CARLTON","ERNESTO","NEAL","PABLO","LORENZO","OMAR","WILBUR","GRANT","HORACE","RODERICK","ABRAHAM","WILLIS","RICKEY","ANDRES","CESAR","JOHNATHAN","MALCOLM","RUDOLPH","DAMON","KELVIN","PRESTON","ALTON","ARCHIE","MARCO","WM","PETE","RANDOLPH","GARRY","GEOFFREY","JONATHON","FELIPE","GERARDO","ED","DOMINIC","DELBERT","COLIN","GUILLERMO","EARNEST","LUCAS","BENNY","SPENCER","RODOLFO","MYRON","EDMUND","GARRETT","SALVATORE","CEDRIC","LOWELL","GREGG","SHERMAN","WILSON","SYLVESTER","ROOSEVELT","ISRAEL","JERMAINE","FORREST","WILBERT","LELAND","SIMON","CLARK","IRVING","BRYANT","OWEN","RUFUS","WOODROW","KRISTOPHER","MACK","LEVI","MARCOS","GUSTAVO","JAKE","LIONEL","GILBERTO","CLINT","NICOLAS","ISMAEL","ORVILLE","ERVIN","DEWEY","AL","WILFRED","JOSH","HUGO","IGNACIO","CALEB","TOMAS","SHELDON","ERICK","STEWART","DOYLE","DARREL","ROGELIO","TERENCE","SANTIAGO","ALONZO","ELIAS","BERT","ELBERT","RAMIRO","CONRAD","NOAH","GRADY","PHIL","CORNELIUS","LAMAR","ROLANDO","CLAY","PERCY","DEXTER","BRADFORD","DARIN","AMOS","MOSES","IRVIN","SAUL","ROMAN","RANDAL","TIMMY","DARRIN","WINSTON","BRENDAN","ABEL","DOMINICK","BOYD","EMILIO","ELIJAH","DOMINGO","EMMETT","MARLON","EMANUEL","JERALD","EDMOND","EMIL","DEWAYNE","WILL","OTTO","TEDDY","REYNALDO","BRET","JESS","TRENT","HUMBERTO","EMMANUEL","STEPHAN","VICENTE","LAMONT","GARLAND","MILES","EFRAIN","HEATH","RODGER","HARLEY","ETHAN","ELDON","ROCKY","PIERRE","JUNIOR","FREDDY","ELI","BRYCE","ANTOINE","STERLING","CHASE","GROVER","ELTON","CLEVELAND","DYLAN","CHUCK","DAMIAN","REUBEN","STAN","AUGUST","LEONARDO","JASPER","RUSSEL","ERWIN","BENITO","HANS","MONTE","BLAINE","ERNIE","CURT","QUENTIN","AGUSTIN","MURRAY","JAMAL","ADOLFO","HARRISON","TYSON","BURTON","BRADY","ELLIOTT","WILFREDO","BART","JARROD","VANCE","DENIS","DAMIEN","JOAQUIN","HARLAN","DESMOND","ELLIOT","DARWIN","GREGORIO","BUDDY","XAVIER","KERMIT","ROSCOE","ESTEBAN","ANTON","SOLOMON","SCOTTY","NORBERT","ELVIN","WILLIAMS","NOLAN","ROD","QUINTON","HAL","BRAIN","ROB","ELWOOD","KENDRICK","DARIUS","MOISES","FIDEL","THADDEUS","CLIFF","MARCEL","JACKSON","RAPHAEL","BRYON","ARMAND","ALVARO","JEFFRY","DANE","JOESPH","THURMAN","NED","RUSTY","MONTY","FABIAN","REGGIE","MASON","GRAHAM","ISAIAH","VAUGHN","GUS","LOYD","DIEGO","ADOLPH","NORRIS","MILLARD","ROCCO","GONZALO","DERICK","RODRIGO","WILEY","RIGOBERTO","ALPHONSO","TY","NOE","VERN","REED","JEFFERSON","ELVIS","BERNARDO","MAURICIO","HIRAM","DONOVAN","BASIL","RILEY","NICKOLAS","MAYNARD","SCOT","VINCE","QUINCY","EDDY","SEBASTIAN","FEDERICO","ULYSSES","HERIBERTO","DONNELL","COLE","DAVIS","GAVIN","EMERY","WARD","ROMEO","JAYSON","DANTE","CLEMENT","COY","MAXWELL","JARVIS","BRUNO","ISSAC","DUDLEY","BROCK","SANFORD","CARMELO","BARNEY","NESTOR","STEFAN","DONNY","ART","LINWOOD","BEAU","WELDON","GALEN","ISIDRO","TRUMAN","DELMAR","JOHNATHON","SILAS","FREDERIC","DICK","IRWIN","MERLIN","CHARLEY","MARCELINO","HARRIS","CARLO","TRENTON","KURTIS","HUNTER","AURELIO","WINFRED","VITO","COLLIN","DENVER","CARTER","LEONEL","EMORY","PASQUALE","MOHAMMAD","MARIANO","DANIAL","LANDON","DIRK","BRANDEN","ADAN","BUFORD","GERMAN","WILMER","EMERSON","ZACHERY","FLETCHER","JACQUES","ERROL","DALTON","MONROE","JOSUE","EDWARDO","BOOKER","WILFORD","SONNY","SHELTON","CARSON","THERON","RAYMUNDO","DAREN","HOUSTON","ROBBY","LINCOLN","GENARO","BENNETT","OCTAVIO","CORNELL","HUNG","ARRON","ANTONY","HERSCHEL","GIOVANNI","GARTH","CYRUS","CYRIL","RONNY","LON","FREEMAN","DUNCAN","KENNITH","CARMINE","ERICH","CHADWICK","WILBURN","RUSS","REID","MYLES","ANDERSON","MORTON","JONAS","FOREST","MITCHEL","MERVIN","ZANE","RICH","JAMEL","LAZARO","ALPHONSE","RANDELL","MAJOR","JARRETT","BROOKS","ABDUL","LUCIANO","SEYMOUR","EUGENIO","MOHAMMED","VALENTIN","CHANCE","ARNULFO","LUCIEN","FERDINAND","THAD","EZRA","ALDO","RUBIN","ROYAL","MITCH","EARLE","ABE","WYATT","MARQUIS","LANNY","KAREEM","JAMAR","BORIS","ISIAH","EMILE","ELMO","ARON","LEOPOLDO","EVERETTE","JOSEF","ELOY","RODRICK","REINALDO","LUCIO","JERROD","WESTON","HERSHEL","BARTON","PARKER","LEMUEL","BURT","JULES","GIL","ELISEO","AHMAD","NIGEL","EFREN","ANTWAN","ALDEN","MARGARITO","COLEMAN","DINO","OSVALDO","LES","DEANDRE","NORMAND","KIETH","TREY","NORBERTO","NAPOLEON","JEROLD","FRITZ","ROSENDO","MILFORD","CHRISTOPER","ALFONZO","LYMAN","JOSIAH","BRANT","WILTON","RICO","JAMAAL","DEWITT","BRENTON","OLIN","FOSTER","FAUSTINO","CLAUDIO","JUDSON","GINO","EDGARDO","ALEC","TANNER","JARRED","DONN","TAD","PRINCE","PORFIRIO","ODIS","LENARD","CHAUNCEY","TOD","MEL","MARCELO","KORY","AUGUSTUS","KEVEN","HILARIO","BUD","SAL","ORVAL","MAURO","ZACHARIAH","OLEN","ANIBAL","MILO","JED","DILLON","AMADO","NEWTON","LENNY","RICHIE","HORACIO","BRICE","MOHAMED","DELMER","DARIO","REYES","MAC","JONAH","JERROLD","ROBT","HANK","RUPERT","ROLLAND","KENTON","DAMION","ANTONE","WALDO","FREDRIC","BRADLY","KIP","BURL","WALKER","TYREE","JEFFEREY","AHMED","WILLY","STANFORD","OREN","NOBLE","MOSHE","MIKEL","ENOCH","BRENDON","QUINTIN","JAMISON","FLORENCIO","DARRICK","TOBIAS","HASSAN","GIUSEPPE","DEMARCUS","CLETUS","TYRELL","LYNDON","KEENAN","WERNER","GERALDO","COLUMBUS","CHET","BERTRAM","MARKUS","HUEY","HILTON","DWAIN","DONTE","TYRON","OMER","ISAIAS","HIPOLITO","FERMIN","ADALBERTO","BO","BARRETT","TEODORO","MCKINLEY","MAXIMO","GARFIELD","RALEIGH","LAWERENCE","ABRAM","RASHAD","KING","EMMITT","DARON","SAMUAL","MIQUEL","EUSEBIO","DOMENIC","DARRON","BUSTER","WILBER","RENATO","JC","HOYT","HAYWOOD","EZEKIEL","CHAS","FLORENTINO","ELROY","CLEMENTE","ARDEN","NEVILLE","EDISON","DESHAWN","NATHANIAL","JORDON","DANILO","CLAUD","SHERWOOD","RAYMON","RAYFORD","CRISTOBAL","AMBROSE","TITUS","HYMAN","FELTON","EZEQUIEL","ERASMO","STANTON","LONNY","LEN","IKE","MILAN","LINO","JAROD","HERB","ANDREAS","WALTON","RHETT","PALMER","DOUGLASS","CORDELL","OSWALDO","ELLSWORTH","VIRGILIO","TONEY","NATHANAEL","DEL","BENEDICT","MOSE","JOHNSON","ISREAL","GARRET","FAUSTO","ASA","ARLEN","ZACK","WARNER","MODESTO","FRANCESCO","MANUAL","GAYLORD","GASTON","FILIBERTO","DEANGELO","MICHALE","GRANVILLE","WES","MALIK","ZACKARY","TUAN","ELDRIDGE","CRISTOPHER","CORTEZ","ANTIONE","MALCOM","LONG","KOREY","JOSPEH","COLTON","WAYLON","VON","HOSEA","SHAD","SANTO","RUDOLF","ROLF","REY","RENALDO","MARCELLUS","LUCIUS","KRISTOFER","BOYCE","BENTON","HAYDEN","HARLAND","ARNOLDO","RUEBEN","LEANDRO","KRAIG","JERRELL","JEROMY","HOBERT","CEDRICK","ARLIE","WINFORD","WALLY","LUIGI","KENETH","JACINTO","GRAIG","FRANKLYN","EDMUNDO","SID","PORTER","LEIF","JERAMY","BUCK","WILLIAN","VINCENZO","SHON","LYNWOOD","JERE","HAI","ELDEN","DORSEY","DARELL","BRODERICK","ALONSO"])

# start_problem(23)
# sum_non_abundant = ->
#   sum_of_divisors = (n)->
#     div = []
#     for num in [1..Math.floor(Math.sqrt(n))]
#       if n%num is 0
#         div.push(num)
#         div.push(n/num) if num*num isnt n and num isnt 1
#     div.reduce (memo, ele)-> memo+=ele
#   is_abundant = (num)-> sum_of_divisors(num) > num
#   abundants = [2..28124].filter is_abundant
#   result = 0
#   is_summatory_of_abundants = (n)->
#     for abundant in abundants
#       return false if abundant >= n
#       for abundant2 in abundants.slice([abundants.indexOf(abundant)+1,abundants.length])
#         return true if abundant + abundant2 is n
#         break if abundant+abundant2 > n
#     false
#   [1..28124].reduce (memo,ele)-> if !is_summatory_of_abundants(ele) then memo+= ele else memo


# console.log sum_non_abundant()


# start_problem(24)
# lexicographic_permutations = (num_string, index) ->
#   permutation = (string_eles) ->
#     create_string = (string, index) ->
#       result = ''
#       for ele , i in string.split('')
#         result+=ele if i isnt index
#       result
#     return string_eles if string_eles.length is 1
#     results = []
#     for element, i in string_eles.split ''
#       for perm in permutation(create_string(string_eles, i))
#         results.push element + perm
#     results
#   permutation(num_string)[index-1]

# console.log lexicographic_permutations('0123456789', 1000000)

# start_problem(25)
# first_thousand_digit_fib = ->
#   do(string_to_array_of_nums = (num) -> num.split('').map (ele)-> return parseInt(ele)) ->
#     num_or_zero = (ele) -> if ele isnt undefined then ele else 0
#     sum_of_num_strings = (num1, num2) ->
#       rev_arr1 = string_to_array_of_nums(num1).reverse()
#       rev_arr2 = string_to_array_of_nums(num2).reverse()
#       iter = Math.max(rev_arr1.length, rev_arr2.length)
#       result = []
#       overflow = 0
#       for ele in [0..iter-1]
#         new_sum = num_or_zero(rev_arr1[ele]) + num_or_zero(rev_arr2[ele]) + overflow
#         result[ele] = new_sum%10
#         if ele is iter-1 && new_sum > 9 then result.push(Math.floor(new_sum/10))
#         overflow = new_sum>9 ? 1 : 0
#       result.reverse().join ''

#     prev = '1'
#     next_fib = '2'
#     counter = 3
#     next_fib_calculator = ->
#       temp = next_fib
#       next_fib = sum_of_num_strings prev, next_fib
#       prev = temp
#     while next_fib.length < 1000
#       next_fib_calculator()
#       counter++
#     counter

# console.log first_thousand_digit_fib()

# start_problem(26)
# biggest_reciprocal_cycle = (num) ->
#   recurring_cycle_length = (n)->
#     return 0 if n%2 is 0 or n%5 is 0
#     reminder = 10%n
#     counter = 1
#     z = n
#     while reminder isnt 1
#       reminder = (reminder*10) %n
#       counter++
#     counter


#   max = 0
#   result = 1
#   for ele in sieve(num)
#     if recurring_cycle_length(ele) > max
#       result = ele
#       max = recurring_cycle_length(ele)
#   result

# console.log biggest_reciprocal_cycle 1000


# start_problem(27)
# quadratic_primes = ->
#   primes = sieve(1000000)
#   quadratic = (a, b, c) ->
#     Math.pow(a, 2) + b*a + c
#   is_prime = (num)->
#     primes.indexOf(num) isnt -1

#   succ_primes = (num1, num2)->
#     iter = 0
#     while is_prime quadratic(iter, num1, num2)
#       iter++
#     iter

#   result = 0
#   max_succ_primes = 0
#   primes_under_1000 = sieve(1000)
#   for prime in primes_under_1000
#     for num in [-999..999]
#       new_succ_primes = succ_primes(num, prime)
#       if new_succ_primes > max_succ_primes
#         max_succ_primes = new_succ_primes
#         result = prime * num
#   result

# console.log quadratic_primes()

# start_problem(28)
# number_spiral_diagonals = (num)->
#   iter_num = (num-1)/2
#   summatory = 2
#   diag = 1
#   sum = 1
#   for iter in [1..iter_num]
#     for num in [0..3]
#       diag += summatory
#       sum += diag
#     summatory +=2
#   sum

# console.log number_spiral_diagonals(1001)

# start_problem(29)
# # Had to use strings to store values of big nums in js
# distinct_powers = (n)->
#   num_or_zero = (ele) -> if ele isnt undefined then ele else 0
#   string_to_array_of_nums = (num) -> num.split('').map (ele)-> return parseInt(ele)
#   sum_of_num_strings = (num1, num2) ->
#     rev_arr1 = string_to_array_of_nums(num1).reverse()
#     rev_arr2 = string_to_array_of_nums(num2).reverse()
#     iter = Math.max(rev_arr1.length, rev_arr2.length)
#     result = []
#     overflow = 0
#     for ele in [0..iter-1]
#       new_sum = num_or_zero(rev_arr1[ele]) + num_or_zero(rev_arr2[ele]) + overflow
#       result[ele] = new_sum%10
#       if ele is iter-1 && new_sum > 9 then result.push(Math.floor(new_sum/10))
#       overflow = new_sum>9 ? 1 : 0
#     result.reverse().join ''

#   mult_of_num_strings = (num1, num2) ->
#     constant = num2
#     for iter in [2..parseInt num1]
#       num2 = sum_of_num_strings(num2, constant)
#     num2
#   pow_of_base_string = (base, pow) ->
#     result = base
#     for iter in [2..pow]
#       result = mult_of_num_strings(base.toString(),result.toString())
#     result
#   results = []
#   for i in [2..n]
#     for j in [2..n]
#       new_ele = pow_of_base_string(i, j)
#       results.push new_ele if results.indexOf(new_ele) is -1
#   results.length

# console.log distinct_powers(100)


# start_problem(30)
# digit_five_powers = ->
#   is_sum_of_fifth_power = (num)->
#     num is num.toString().split('').reduce (memo, ele) -> 
#       memo+=Math.pow(parseInt(ele),5)
#     , 0
#   #upper limit is Math.pow(9,5)*6 => There is no 6 dig number with a bigger sum_power than this
#   [2..354294].reduce (memo, ele) ->
#     memo += ele if is_sum_of_fifth_power(ele)
#     memo
#   ,0

# console.log digit_five_powers()

# problem 31 1349 ms with brute force
# problem 31 2 ms with brute force
# start_problem(31)
# coins_sum = (value)->
#   coin_values = [200, 100, 50, 20, 10, 5, 2, 1 ]
#   cache = {}
#   num_coins_combination = (index, coins_values, sum, target_value) ->
#     if index > coins_values.length-1 then return 0     
#     if sum is target_value 
#       return 1 
#     else if sum > target_value 
#       return 0 
#     else 
#       [index..coins_values.length-1].reduce (memo, ele) ->
#         index = (target_value-sum).toString() + '_' + coins_values[ele].toString()
#         cache[index] = cache[index] || num_coins_combination(ele, coins_values, sum+coins_values[ele], target_value)
#         memo += cache[index]
#       , 0
#   num_coins_combination(0, coin_values, 0, value)

# console.log coins_sum(200)

# start_problem(32)

# pandigital_products = ->
#   is_pandigital = (plier, plicand) ->
#     prod = plier*plicand
#     result = prod.toString().split('').concat(plier.toString().split('') ).concat(plicand.toString().split(''))
#     for digit in ['1','2','3','4','5','6','7','8','9']
#       return false if result.indexOf(digit) is -1
#     result.length is 9

#   results = []
#   for plier in [0..99]
#     for plicand in [99..9999]
#       prod = plier * plicand
#       results.push(prod) if is_pandigital(plier, plicand) and results.indexOf(prod) is -1

#   results.reduce (memo, ele) -> 
#     memo += ele
#   ,0

# console.log pandigital_products()

# start_problem(33)
# digit_cancelling_fractions = ->
#   number_to_array = (num) -> num.toString().split('')
#   is_cancelling_fraction = (num,den) ->
#     return false if num >= den or num %10 is 0 or den%10 is 0
#     initial_result = num/den
#     num_array = number_to_array(num)
#     den_array = number_to_array(den)
#     for ele,num_index in num_array
#       den_index = den_array.indexOf(ele)
#       if den_index isnt -1
#         num_array.splice(num_index, 1)
#         den_array.splice(den_index, 1)
#         return [num_array[0], den_array[0]] if num_array[0]/den_array[0] is initial_result
#     false
#   results = []
#   for num in [11..99]
#     for den in [11..99]
#       results.push(is_cancelling_fraction(num, den)) if is_cancelling_fraction(num, den)
  
#   mult_den = 1
#   mult_num = 1

#   for ele in results
#     mult_num = mult_num*ele[0]
#     mult_den = mult_den*ele[1]
    
#   mult_den / mult_num

# console.log digit_cancelling_fractions()

# start_problem(34)
# initial_time = new Date().getTime()
# digit_factorials = ->
#   factorial_cache = {}
#   factorial = (num)->
#     pure_factorial = (num)->
#       return 1 if num is 1 or num is 0
#       num * factorial(num-1)    
#     # pure_factorial(num)
#     factorial_cache[num] = factorial_cache[num] || pure_factorial(num)
#     factorial_cache[num]
#   sum_factorial = (num) ->
#     num.toString().split('').reduce (memo, ele) -> 
#       memo += factorial(parseInt(ele))
#     ,0

#   curious_num = (num) -> num is sum_factorial(num)
#   [10..2540161].reduce (memo, ele) ->
#     memo += ele if curious_num(ele)
#     memo
#   ,0

# console.log digit_factorials()
# final_time = new Date().getTime()
# console.log  final_time - initial_time

# start_problem(35)

# circular_primes = (num) ->
#   primes = sieve(num)
#   all_circular_numbers = (num) ->
#     all_nums = []
#     num_string = num.toString()
#     num_length = num_string.length
#     for index in [0..num_length-1]
#       new_list_string = num_string.substring(index,num_length) + num_string.substring(0,index)
#       all_nums.push(new_list_string)
#     all_nums
#   circular_prime = (num) ->
#     circular = all_circular_numbers(num)
#     circular.length == circular.filter((ele) -> primes.indexOf(parseInt(ele)) isnt -1 ).length

#   primes.reduce (memo, ele) -> 
#     memo++ if circular_prime ele
#     memo
#   ,0


# console.log circular_primes(1000000)

# start_problem(36)
# dobule_base_palindrome = (num)->  
#   sum = 0
#   is_palindrome = (string) -> string is string.split('').reverse().join('')
#   for ele in [0..num-1]
#     sum += ele if is_palindrome(ele.toString()) and is_palindrome(ele.toString(2))

#   sum

# console.log dobule_base_palindrome 1000000

# start_problem(37)
# truncable_primes = ->  
#   sum = 0
#   primes = sieve(1000000)
#   truncable = (num) ->
#     return false if primes.indexOf(num) is -1 or num < 10
#     num_right = num
#     num_left = num
#     while num_left  isnt 0
#       return false if primes.indexOf(num_left) is -1
#       num_left = Math.floor(num_left/10)
#     while num_right  isnt 0
#       return false if primes.indexOf(num_right) is -1
#       num_right = num_right%(Math.pow(10, num_right.toString().split('').length-1))
#     true

#   results = []
#   for prime in primes
#     results.push()
#     sum += prime if truncable prime

#   sum

# console.log truncable_primes()

# start_problem(38)

# pandigital_multiples = ->
#   pandigital_multiple = (num) ->
#     result_string = ''
#     counter = 1
#     while result_string.length<10
#       result_string += (num*counter).toString()
#       if result_string.length is 9 and counter > 1
#         for digit in ['1','2','3','4','5','6','7','8','9']
#           return false if result_string.indexOf(digit) is -1        
#         return parseInt result_string
#       counter++
#     false

#   max = 0
#   for ele in [2..9999]
#     new_ele = pandigital_multiple(ele)
#     max = Math.max(max, new_ele) if new_ele
#     console.log max if new_ele
#   max

# console.log pandigital_multiples()

start_problem 39
integer_right_triangle = ->
  perimeter_storage = {}

  hipotenuse = (a,b)-> Math.sqrt(Math.pow(a,2) + Math.pow(b,2))
  num_if_int = (num) -> if Math.floor(num) is num then return num else return false
  perimeter = (a,b,c) -> a+b+c

  for a in [1..333]
    for b in [a..500]
      hip = hipotenuse(a,b)
      per = perimeter(a,b, hip)
      break if per > 1000
      if num_if_int(hip) then perimeter_storage[per] = perimeter_storage[per] + 1 || 1


  max = 0
  result = null
  for key in Object.keys(perimeter_storage)
    if perimeter_storage[key]>max 
      result = key
      max = perimeter_storage[key]

  result



console.log integer_right_triangle()
# start_problem 40
# champernowne_constant = ->
#   changing_num_dig = []
#   counter = 0
#   for ele in [1..6]
#     upper_limit = Math.pow(10,ele)-1
#     lower_limit = Math.pow(10,ele-1)-1
#     counter += ( upper_limit - lower_limit )*ele
#     changing_num_dig.push counter
#   get_digit = (num) ->
#     for ele, index in changing_num_dig
#       if ele > num
#         if index > 0 then position = (num - changing_num_dig[index-1])-1 else position = num-1
#         new_num = Math.pow(10,index )+Math.floor(position/(index+1))
#         new_location = (position)%(index+1)
#         return parseInt(new_num.toString().split('')[new_location])

#   result = []
#   for ele in [1,10,100,1000,10000,100000,1000000]
#     result.push(get_digit(ele))
#   result.reduce (memo, ele) ->
#     memo *= ele
#   , 1
  
# console.log champernowne_constant()






