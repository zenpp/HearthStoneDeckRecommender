lines_seen = set() # holds lines already seen
outfile = open('compatible_edited.pl', "w")
for line in open('compatible.pl', "r"):
    if line not in lines_seen: # not a duplicate
        outfile.write(line)
        lines_seen.add(line)
outfile.close()
