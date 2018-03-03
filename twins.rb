# Complete the function below.
require 'awesome_print'
# DO NOT MODIFY anything outside the below function
def twins(a, b)
  alen = a.length - 1
  result = []
  for i in 0..alen do
      odd_a = []
      even_a = []
      odd_b = []
      even_b = []
      puts("a[i] #{a[i]}")
      puts("b[i] #{b[i]}")
      j = a[i].length
      k = b[i].length
      if (j == k)
          for l in 0..j - 1 do
              if (l % 2 == 0)
                  odd_a << a[i][l]
                  odd_b << b[i][l]

              else
                  even_a << a[i][l]
                  even_b << b[i][l]
              end
          end
      else
          result << 'No'
      end
      ap ((odd_a.sort == odd_b.sort) & (even_a.sort == even_b.sort))
      if ((odd_a.sort == odd_b.sort) & (even_a.sort == even_b.sort))
          result << 'Yes'
      else
          result << 'No'
      end
      ap result
  end
  result
end
# DO NOT MODIFY anything outside the above function
a = ['cdab', 'dcba']
b = ['abcd', 'abcd']

print(twins(a,b))
