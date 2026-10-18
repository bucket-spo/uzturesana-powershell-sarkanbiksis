$labubu = (get-date).addhours(-48)
$errors = get-eventLog -logname system -entrytype error -after $labubu
write-output "Kļūdu skaits pēdējās 48 stundās: $($errors.count)"
if ($errors.count -gt 0) {
    $errors | group-object -property source | sort-object -property count -descending | select-object -first 1
}