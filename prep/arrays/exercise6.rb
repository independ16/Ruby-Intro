names = ['bob', 'joe', 'susan', 'margaret']
#names['margaret'] = 'jody'
names[names.index('margaret')] = 'jody'
p names

=begin
THe problem is that the 2nd assignment, names['margaret'] is undefined, wrong syntax

can be fixed by the use of an index method to find the index for value 'margaret', then using that to re-assign that to 'jody'

=end