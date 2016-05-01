print("Please enter text to encrypt\n");
$text = <STDIN>;
chomp($text);
$text = lc $text;
print ("Please enter Letter\n");
$key = <STDIN>;
chomp($key);
$key = uc $key;
open(my $file,">","encrypted.txt");

#printf("key : $key , text : $text\n");

@letter = (a...z);

for $letter (@letter){
#printf("Key is $key, text is $text\n");

	$text =~ s/$letter/$key/g;

	if($key eq 'Z'){ 
		$key = 'A';
		
	
	}else{
		$key++;
		
		} 

	
}

print $file "$text";
close $file
