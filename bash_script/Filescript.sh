while true; do
    echo
    echo 'Что хотите сделать?
    1. Создать файл
    2. Удалить файл
    3. Открыть файл
    4. Выйти'
    read -p "Выберите 1 - 4: " choice

    if [[ "$choice" =~ ^[0-9]+$ ]]; then
        if [ "$choice" = "1" ]; then
            read -p "Введите название файла, который хотите создать: " filename
            touch "$filename"
            echo "Файл $filename создан"
        elif [ "$choice" = "2" ]; then
            read -p "Введите название файла, который хотите удалить: " filename
            if [ -f "$filename" ]; then
                rm "$filename"
                echo "Файл $filename удален"
            else
                echo "Файл $filename не существует."
            fi
        elif [ "$choice" = "3" ]; then
            read -p "Введите название файла, который хотите открыть: " filename
            if [ -f "$filename" ]; then
                cat "$filename"
            else
                echo "Файл $filename не существует"
            fi
        elif [ "$choice" = "4" ]; then
            echo "Выход"
            break
        else
            echo "Введите число от 1 до 4."
        fi
    else
        echo "Ошибка: введите число!"
    fi
done
      
