num=$1

find /home/nikita/Desktop/diploma/datasets/SFHQ/train -type f -delete
find /home/nikita/Desktop/diploma/datasets/SFHQ/test -type f -delete
find /home/nikita/Desktop/diploma/datasets/SFHQ/valid -type f -delete

ls /home/nikita/Desktop/diploma/datasets/SFHQ/full_dataset/* | shuf -n $((num * 1200)) | xargs -I {} cp {} /home/nikita/Desktop/diploma/datasets/SFHQ/train/

ls /home/nikita/Desktop/diploma/datasets/SFHQ/train/* | shuf -n $((num * 100)) | xargs -I {} mv {} /home/nikita/Desktop/diploma/datasets/SFHQ/valid

ls /home/nikita/Desktop/diploma/datasets/SFHQ/train/* | shuf -n $((num * 100)) | xargs -I {} mv {} /home/nikita/Desktop/diploma/datasets/SFHQ/test


find /home/nikita/Desktop/diploma/datasets/SFHQ/train -type f | sed 's|^[^/]*||' > /home/nikita/Desktop/diploma/BAT-Fill/flist/sfhq/train.flist

find /home/nikita/Desktop/diploma/datasets/SFHQ/valid -type f | sed 's|^[^/]*||' > /home/nikita/Desktop/diploma/BAT-Fill/flist/sfhq/valid.flist

find /home/nikita/Desktop/diploma/datasets/SFHQ/test -type f | sed 's|^[^/]*||' > /home/nikita/Desktop/diploma/BAT-Fill/flist/sfhq/test.flist


# for file in *; do mv "$file" "$i.png"; ((i++)); done # это для пронумеровки файлов от 0 до конечного