import os
import toml

# Запит адреси від користувача
address = input("Введіть адресу: ")

# Перетворення адреси
address = address.replace("\\", "\\\\")

# Зчитування та зміна файлів .toml
for filename in os.listdir():
    if filename.endswith(".toml"):
        with open(filename, "r") as file:
            lines = file.readlines()

        with open(filename, "w") as file:
            for line in lines:
                if line.strip().startswith("folder ="):
                    file.write(f'folder = "{address}"\n')
                else:
                    file.write(line)

        print(f"Файл {filename} змінено.")

# Очікування вводу користувача
input("Операція завершена. Натисніть Enter для продовження.")
